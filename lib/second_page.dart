import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    this.sanAlipKel,
    this.magaTextKelcin,
  });
  String? magaTextKelcin;
  int? sanAlipKel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Second Page $sanAlipKel',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 15,
                ),
                child: Text(
                  'San $sanAlipKel  $magaTextKelcin',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.skip_next,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
