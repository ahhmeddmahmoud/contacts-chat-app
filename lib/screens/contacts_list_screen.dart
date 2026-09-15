import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../widgets/contact_card.dart';
import 'chat_screen.dart';

class ContactsListScreen extends StatelessWidget {
  const ContactsListScreen({super.key});

  static const Color _green = Color(0xFF186A37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      appBar: AppBar(
        backgroundColor: _green,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'My Contacts',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sampleContacts.length,
        itemBuilder: (context, index) {
          final Contact contact = sampleContacts[index];
          return ContactCard(
            contact: contact,

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(contact: contact),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _green,
        onPressed: () {},
        child: const Icon(Icons.person_add_alt_1, color: Colors.white),
      ),
    );
  }
}
