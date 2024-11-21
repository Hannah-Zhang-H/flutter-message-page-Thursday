import 'package:get/get.dart';

class User {
  String name;
  int age;
  String avatarUrl;

  User({required this.name, required this.age, required this.avatarUrl});
}

class UserController extends GetxController {
  var user = Get.put(User(
          name: "Huh",
          age: 3,
          avatarUrl:
              "https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg")
      .obs);

  void updateName(String newName) {
    user.update((val) {
      val?.name = newName;
    });
  }

  void updateUser(String newName, int newAge, String newAvatarUrl) {
    if (newAge <= 0 || newAge > 120) {
      Get.snackbar(
        "Invalid age",
        "Age must be between 1 and 120.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    user.update((val) {
      val?.age = newAge;
    });
  }

  void updateAvatar(String newAvatarUrl) {
    user.update((val) {
      val?.avatarUrl = newAvatarUrl;
    });
  }
}
