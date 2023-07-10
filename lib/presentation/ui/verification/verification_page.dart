import 'package:clean_architecture_app/presentation/ui/verification/bloc/verification_cubit.dart';
import 'package:clean_architecture_app/shared/dialog/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pinput/pinput.dart';

import '../../common_view/common_app_bar.dart';
import '../../common_view/credential/my_custom_button.dart';
import '../../common_view/size_vertical.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';

class VerificationPage extends StatefulWidget {
  final Map<String, dynamic> info;

  const VerificationPage({Key? key, required this.info}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final _cubit = GetIt.instance.get<VerificationCubit>();
  final TextEditingController _code = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _cubit.sendOTP(widget.info);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _code.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(
        appBar: AppBar(),
        title: "",
      ),
      backgroundColor: AppColors.white,
      body: BlocListener<VerificationCubit, VerificationState>(
        listener: (context, state) {
          if (state is VerificationLoading) {
            state.isLoading
                ? showLoaderDialog(context)
                : dismissLoaderDialog(context);
          } else if (state is VerificationError) {
            showSnackbar(context, state.error);
          } else if (state is VerificationLoaded) {
            showSnackbar(context, state.msg);
          } else if (state is VerificationSuccess) {
            showSnackbar(context, state.msg);
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verification",
                style: AppTextStyle.heading5,
              ),
              const SizeVer(height: 13),
              Text(
                "We've sent to your ${widget.info["email"]}, please check it out",
                style: AppTextStyle.baseBook,
              ),
              const SizeVer(height: 40),
              Pinput(
                controller: _code,
                length: 6,
                preFilledWidget: Text(
                  "-",
                  style:
                      AppTextStyle.baseLite.copyWith(color: AppColors.white400),
                ),
              ),
              const SizeVer(height: 40),
              MyCustomButton(
                  onPressed: () async {
                    await _cubit.register(widget.info, _code.text);
                  },
                  title: "Continue"),
              const SizeVer(height: 27),
              BlocBuilder<VerificationCubit, VerificationState>(
                builder: (context, state) {
                  if (state is VerificationResend && state.isLoading) {
                    return Center(
                        child: TextButton(
                            onPressed: null,
                            child: Text("Re-send code in ${state.seconds}")));
                  }
                  return Center(
                    child: TextButton(
                        onPressed: () async {
                          _cubit.startCountdown(widget.info);
                        },
                        child: const Text("Re-send code")),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
