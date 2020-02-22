import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HelperService extends Disposable {
  /// Show loading message
  void showLoadingDialog(context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    isDark ? Colors.white : Color(0xFF1B1E28))),
            Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                'Please wait...',
                style: TextStyle(
                    color: isDark ? Colors.white : Color(0xFF1B1E28),
                    fontSize: 14,
                    height: 16 / 14),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Show error messages
  void showErrorDialog(context, String title, String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Modular.to.pop();
            },
          ),
        ],
      ),
    );
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
