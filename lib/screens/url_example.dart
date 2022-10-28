import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class URLExample extends StatelessWidget {
  const URLExample({super.key});

  _openURL(url) async {
    url = Uri.parse(url);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {
            _openURL('https://google.com');
          },
          child: Text("Open Website"),
        ),
        TextButton(
          onPressed: () {
            _openURL('tel:+913698521470');
          },
          child: Text("Open Dailpage"),
        ),
        TextButton(
          onPressed: () {
            _openURL('whatsapp://send?text=hello&phone=919500707757');
          },
          child: Text("Open Whatsapp"),
        ),
        TextButton(
          onPressed: () {
            _openURL('sms:+913698521470');
          },
          child: Text("Open SMS"),
        ),
      ]),
    );
  }
}
