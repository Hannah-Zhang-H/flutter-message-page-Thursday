import 'package:day1/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});
  final UserController uc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to your profile'),
        ),
        body: Container(
          color: Colors.amber[200],
          child: ListTile(
            title: Text(
              "My name is ${uc.user.value.name}, I am ${uc.user.value.age}",
              style: const TextStyle(
                color: Color.fromARGB(255, 19, 3, 236),
                fontSize: 25,
              ),
            ),
          ),
        ));
  }
}
