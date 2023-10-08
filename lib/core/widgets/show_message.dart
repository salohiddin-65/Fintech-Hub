import 'package:fluttertoast/fluttertoast.dart';

// message toaster
Future<bool?> showMessage(String msg) {
  return Fluttertoast.showToast(msg: msg);
}