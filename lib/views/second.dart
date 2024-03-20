import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Second extends StatefulWidget {
  final String data;

  const Second({Key? key, required this.data}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Future<void> launchUrl() async {
    final url = widget.data;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: launchUrl,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50),
            backgroundColor: Colors.red
          ),
          child: const Text('Launch URL',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
