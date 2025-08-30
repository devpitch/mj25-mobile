import 'dart:io';

import 'package:intl/intl.dart';

String formatMoney({
  required String amount,
  int? digitDecimal,
  String nairaName = "NGN",
}) {
  String formatMoney = NumberFormat.simpleCurrency(
    locale: Platform.localeName,
    decimalDigits: digitDecimal ?? 0,
    name: nairaName,
  ).format(double.parse(amount));
  return formatMoney;
}
