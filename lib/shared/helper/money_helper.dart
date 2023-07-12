import 'package:intl/intl.dart';

class MoneyHelper {
  const MoneyHelper._();

  static String formatMoney(int money){
    return "${NumberFormat("#,##0", "en_US").format(money)} VND";
  }

}