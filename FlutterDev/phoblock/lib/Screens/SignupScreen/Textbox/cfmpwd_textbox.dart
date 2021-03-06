import 'package:flutter/material.dart';

/*
  Author: Muhammad Khairi Norizan
*/
class ConfirmPasswTextBox extends StatelessWidget {
  final textController;
  final pwdController;
  final formKey;
  static const double _hPad = 40.0;

  ConfirmPasswTextBox(this.textController, this.pwdController, this.formKey);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(_hPad, 0.0, _hPad, 5.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: textController,
              validator: (value) {
                if (value != pwdController.text) {
                  return 'Password does not match';
                }

                return null;
              },
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.black12, width: 7.0),
                ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                isDense: true,
                contentPadding: EdgeInsets.all(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
