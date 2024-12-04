import 'package:flutter/material.dart';

void showErrorSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.red[100],
    duration: const Duration(seconds: 6),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    content: Text(
      message,
      style: TextStyle(color: Colors.red[900]),
    ),
    action: SnackBarAction(
      textColor: Colors.red[900],
      label: 'OK',
      onPressed: () {},
    ),
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height - 170,
      left: 16,
      right: 16,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showNormallySnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.blue[100],
    duration: const Duration(seconds: 6),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: Colors.blue),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    content: Text(
      message,
      style: TextStyle(color: Colors.blue[900]),
    ),
    action: SnackBarAction(
      textColor: Colors.blue[900],
      label: 'OK',
      onPressed: () {},
    ),
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height - 170,
      left: 16,
      right: 16,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
