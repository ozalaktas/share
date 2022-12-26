import 'package:flutter/material.dart';
import 'package:share/components/custom_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String userName = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Giriş Sayfası')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Text(
              'GİRİŞ',
              style: TextStyle(fontSize: 42),
            ),
            SizedBox(height: 30),
            CustomTextField(
              labelText: 'Username',
              onChange: (value){
                userName = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextField(
              labelText: 'Password',
              labelColor: Colors.red,
              onChange: (value){
                password = value;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
              print('Kullanıcı Adı: $userName , Şifre: $password ');
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}










