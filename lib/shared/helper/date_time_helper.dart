import 'package:intl/intl.dart';
class DateTimeHelper{
  const DateTimeHelper._();
  
  static DateTime getDateOnly(DateTime now){
    return DateTime(now.year, now.month, now.day);
  }

  static String formatToHHmmDDYYMM(DateTime time){
    var inputFormat = DateFormat("HH:mm - dd/MM/yyyy");
    var inputDate = inputFormat.format(time);
    return inputDate.toString();
  }

  static String formatToEEEDDYYMM(DateTime time){
    var inputFormat = DateFormat("EEE, dd/MM/yyyy");
    var inputDate = inputFormat.format(time);
    return inputDate.toString();
  }

  static String formatToHHmmDDMM(DateTime time){
    var inputFormat = DateFormat("HH:mm, dd/MM");
    var inputDate = inputFormat.format(time);
    return inputDate.toString();
  }
}