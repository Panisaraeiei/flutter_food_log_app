// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_log_app/views/add_food_ui.dart';

class ShowAllFoodUi extends StatefulWidget {
  const ShowAllFoodUi({super.key});

  @override
  State<ShowAllFoodUi> createState() => _ShowAllFoodUiState();
}

class _ShowAllFoodUiState extends State<ShowAllFoodUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 119, 119),
        title: Text(
          'แซ่บอีหลี',
          style: TextStyle(
            color: const Color.fromARGB(255, 251, 250, 250),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            //ส่วนแสดง logo
            Image.asset(
              'assets/images/logo.png',
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            //ส่วนแสดงรายการกินทั้งหมดที่ Supabase
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //เปิดไฟหน้า ADD FOOD UI แบบย้อนกลับได้
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddFoodUi(),
              ));
        },
        child: Icon(
          Icons.add,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 131, 128, 128),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
