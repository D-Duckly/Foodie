import 'package:flutter/material.dart';
import 'package:foodie/Screens/login.dart';
import 'package:foodie/Screens/profilescreen.dart';
import 'package:foodie/UserAuthntication/addposttoDB.dart';
import 'package:foodie/bottombar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:foodie/mainscr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: const AddtoPost() ,
     home: const SignIn(),

    );
  }
}


