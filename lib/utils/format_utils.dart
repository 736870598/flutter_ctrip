
import 'package:date_format/date_format.dart';

class FormatUtils{

  static timeFormat(int temp){
    return formatDate(DateTime.fromMillisecondsSinceEpoch(temp), [yyyy, '-', mm, '-', dd, " ", HH, ":", mm, ":", ss]);
  }

}