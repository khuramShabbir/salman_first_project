import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salman_first_project/Provider/login_provider.dart';

import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (BuildContext context) => LoginProvider()),
    ],
    child: const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
