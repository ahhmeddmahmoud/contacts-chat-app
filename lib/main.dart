import 'package:flutter/material.dart';
import 'screens/contacts_list_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts & Chat',
      home: const ContactsListScreen(),
    );
  }
}