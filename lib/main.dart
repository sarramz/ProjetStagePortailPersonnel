import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portail_personnel/pages/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: /*StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LoginBody();
          } else {
            return BottomBar();
          }
        },
      ),*/
          LoginBody(),
    );
  }
}
