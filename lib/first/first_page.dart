import 'dart:developer';
import 'package:counter_2/first/first_controller.dart';
import 'package:counter_2/second/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  FirstPage();

  FirstController _firstController =
      Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    log('Build ====>${_firstController.count.value++}');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffffffff),
        title: Center(
          child: Obx(
            () => Text(
              'Counter App ${_firstController.number.value}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 44.0,
              width: 325.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Obx(
                  () => Text(
                    'San: ${_firstController.number.value}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _firstController.kemit,
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 90,
                          height: 0.7,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: _firstController.kosh,
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 60,
                          height: 0.9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Get.to(() => SecondPage());
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
