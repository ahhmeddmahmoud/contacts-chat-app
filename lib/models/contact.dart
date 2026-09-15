import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String avatarUrl;
  final bool isAvailable;

  const Contact({
    required this.name,
    required this.avatarUrl,
    required this.isAvailable,
  });

  ImageProvider get avatarImage {
    if (avatarUrl.startsWith('http')) {
      return NetworkImage(avatarUrl);
    }
    return AssetImage(avatarUrl);
  }
}

final List<Contact> sampleContacts = [
  const Contact(
    name: 'Mohamed Eid',
    avatarUrl: 'assets/images/mohamed_eid.png',
    isAvailable: true,
  ),
  const Contact(
    name: 'Mohamed Zaher',
    avatarUrl: 'assets/images/mohamed_zaher.png',
    isAvailable: false,
  ),
  const Contact(
    name: 'Yousef Mohamed',
    avatarUrl: 'assets/images/yousef_mohamed.png',
    isAvailable: true,
  ),
];
