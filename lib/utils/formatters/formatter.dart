import 'package:intl/intl.dart';

class CusFormatter {
  //custom formatter for date time
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  //custom formatter for currency
  String formatCurrency(double amount) {
    final currencyFormatter = NumberFormat.currency(locale: 'en_US', symbol: '\$');
    return currencyFormatter.format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if (phoneNumber.length == 9) {
      return '+94 ${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 5)} ${phoneNumber.substring(5)}';
    }
    return phoneNumber;
  }
  
}