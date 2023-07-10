import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay add({int hour = 0, int minute = 0}) {
    return replacing(hour: this.hour + hour, minute: this.minute + minute);
  }

}

extension DateTimeExtension on DateTime{
  DateTime addTime(TimeOfDay timeOfDay){
    return add(Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute));
  }

  TimeOfDay getTimeOfDay(){
    return TimeOfDay(hour: hour, minute: minute);
  }
}