import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'message_page.dart';
import 'user.dart';

void main() {
  Get.put(UserController());
  runApp(const MyApp());
}

/// Root widget:
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

/// Home
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi, my practice app"),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            ElevatedButton(
              onPressed: () => {Get.to(const MessagePage())},
              child: const Text('Go to message page'),
            ),
          ],
        ),
      ),
    );
  }
}
