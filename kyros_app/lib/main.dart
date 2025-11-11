import 'package:flutter/material.dart';
import 'src/core/config.dart';
import 'src/auth/login_page.dart';
import 'src/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseConfig.init();
  runApp(const KyrosApp());
}

class KyrosApp extends StatelessWidget {
  const KyrosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kyros Barbería',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const LoginPage(),
    );
  }
}