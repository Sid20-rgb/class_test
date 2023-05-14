import 'package:flutter/material.dart';

import '/models/student.dart';

class DashboardScreen extends StatefulWidget {
  final String studentId;

  const DashboardScreen({super.key, required this.studentId});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Student? student;

  @override
  void initState() {
    super.initState();
    student = Student(
      studentId: widget.studentId,
      firstName: 'Sid',
      lastName: 'Sk',
      age: 21,
      gender: 'Male',
      dueAmount: 20000,
    );
  }

  void payDueAmount() {
    setState(() {
      student!.dueAmount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${student?.firstName} ${student?.lastName}!',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Due Amount: Rs ${student?.dueAmount}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: student?.dueAmount == 0 ? null : payDueAmount,
              child: const Text(
                'Pay Due Amount',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
