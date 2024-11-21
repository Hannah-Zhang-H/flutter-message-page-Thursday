import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_profile.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Messages"),
        ),
        body: ListView(
          children: const [
            MessageItem(
                'https://th.bing.com/th/id/R.2a41dfb94d23e80f7e758bac41087618?rik=F4RtEZpCF1zmig&pid=ImgRaw&r=0',
                'Cat',
                "What's for lunch"),
            MessageItem(
                'https://th.bing.com/th/id/R.c1bd489518d6a59571f4d1b872641dff?rik=V9BSSYW2ZK8%2bbQ&riu=http%3a%2f%2fimages1.fanpop.com%2fimages%2fphotos%2f1600000%2fPics-from-the-zoo-animals-1674830-2560-1920.jpg&ehk=7VAo6j2L%2faU0whZ9Nju8w%2f3T0oAhfh%2frFYQWshcBRF0%3d&risl=&pid=ImgRaw&r=0',
                'Bear',
                "Honey, honey, honey, I will  kick the bees out!"),
            MessageItem(
                'https://i.kym-cdn.com/entries/icons/original/000/046/895/huh_cat.jpg',
                'Huh',
                'Huh?')
          ],
        ));
  }
}

class MessageItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;

  const MessageItem(this.imageUrl, this.name, this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.purple[100],
      color: Colors.yellow[100],
      child: InkWell(
        onTap: () {
          Get.to(UserProfile());
        },
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 50,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  message,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
