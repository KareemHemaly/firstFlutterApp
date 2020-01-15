import 'package:first_flutter_app/screens/authenticate/authenticate.dart';
import 'package:first_flutter_app/screens/home/home.dart';
import 'package:first_flutter_app/screens/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //returtn either Home or Authenticate
    if (user != null) {
      return Home();
    } else {
      return Authenticate();
    }
  }
}
