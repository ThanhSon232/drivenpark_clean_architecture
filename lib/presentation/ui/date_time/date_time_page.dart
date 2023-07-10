import 'package:clean_architecture_app/presentation/common_view/common_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/credential/my_custom_button.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:clean_architecture_app/presentation/ui/date_time/bloc/date_time_cubit.dart';
import 'package:clean_architecture_app/shared/dialog/snackbar.dart';
import 'package:clean_architecture_app/shared/helper/date_time_helper.dart';
import 'package:clean_architecture_app/shared/helper/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:table_calendar/table_calendar.dart';

class DateTimePage extends StatefulWidget {
  final Map<String, dynamic> arguments;

  const DateTimePage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<DateTimePage> createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  DateTime now = DateTime.now();
  DateTime max = DateTime.now().add(const Duration(days: 365));
  late DateTime start;
  late DateTime end;
  late TimeOfDay startTime;
  late TimeOfDay endTime;
  bool isStart = false;
  final cubit = GetIt.instance.get<DateTimeCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start = widget.arguments["startDate"] as DateTime;
    end = widget.arguments["endDate"] as DateTime;
    startTime = start.getTimeOfDay();
    endTime = end.getTimeOfDay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(
        appBar: AppBar(),
        title: "Date & time",
      ),
      body: BlocListener<DateTimeCubit, DateTimeState>(
        // listenWhen: (pre, cur)  => pre is DateTimeError && cur is DateTimeError,
        listener: (context, state) {
          if (state is DateTimeError) {
            showSnackbar(context, state.error);
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dateWidget(start),
                  const Icon(Icons.arrow_right_alt),
                  dateWidget(end)
                ],
              ),
              const SizeVer(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: TableCalendar(
                  focusedDay: start,
                  firstDay: now,
                  lastDay: max,
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  onDaySelected: (d, d1) {
                    if (!isStart) {
                      setState(() {
                        start = d;
                        if (start.compareTo(end) >= 0) {
                          end = start;
                        }
                      });
                      isStart = true;
                    } else {
                      setState(() {
                        end = d;
                        if (end.compareTo(start) < 0) {
                          start = end;
                          isStart = true;
                        } else {
                          isStart = false;
                        }
                      });
                    }
                  },
                  rangeStartDay: start,
                  rangeEndDay: end,
                ),
              ),
              const SizeVer(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: timePickerWidget(true, startTime, endTime)),
                  const Icon(Icons.arrow_right_alt),
                  Expanded(child: timePickerWidget(false, startTime, endTime))
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: MyCustomButton(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        onPressed: () {
          cubit.confirm(
              context,
              DateTimeHelper.getDateOnly(start).addTime(startTime),
              DateTimeHelper.getDateOnly(end).addTime(endTime));
        },
        title: "Confirm",
      )),
    );
  }

  Widget dateWidget(DateTime dateTime) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Text(DateTimeHelper.formatToEEEDDYYMM(dateTime)),
    );
  }

  Widget timePickerWidget(bool flag, TimeOfDay time, TimeOfDay time1) {
    return ElevatedButton(
        onPressed: () async {
          await showTimePicker(context: context, initialTime: flag ? time : time1)
              .then((value) {
            if (flag) {
              cubit.confirmTime(value ?? time, time1);
            } else {
              cubit.confirmTime(time, value ?? time1);
            }
          });
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white300,
            elevation: 0,
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: BlocBuilder<DateTimeCubit, DateTimeState>(
          builder: (context, state) {
            if (state is DateTimeLoading) {
              return const CircularProgressIndicator();
            } else if (state is DateTimeSelectTime) {
              // flag ? time = state.start : time1 = state.end;
              if(flag){
                time = state.start;
                startTime = time;
              } else {
                time1 = state.end;
                endTime = time1;
              }
              return flag
                  ? Text(
                      state.start.format(context).toString(),
                      style: AppTextStyle.baseMedium,
                    )
                  : Text(
                      state.end.format(context).toString(),
                      style: AppTextStyle.baseMedium,
                    );
            }
            return flag
                ? Text(
                    time.format(context).toString(),
                    style: AppTextStyle.baseMedium,
                  )
                : Text(
                    time1.format(context).toString(),
                    style: AppTextStyle.baseMedium,
                  );
          },
        ));
  }
}
