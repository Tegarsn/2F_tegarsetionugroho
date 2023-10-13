import 'package:flutter/material.dart';
import 'package:mencoba/ui/produk_form.dart';
import 'package:mencoba/ui/personal_from.dart';
import 'package:mencoba/ui/halo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PersonalDataForm(),
    );
  }
}
