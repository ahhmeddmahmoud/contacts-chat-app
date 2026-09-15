import 'package:flutter/material.dart';
import '../models/contact.dart';
class ContactCard extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap;
  final VoidCallback? onCallPressed;

  static const Color _green = Color(0xFF186A37);
  static const Color _callBg = Color(0xFFDBF3E6);

  const ContactCard({
    super.key,
    required this.contact,
    required this.onTap,
    this.onCallPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.0),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 26.0,
                backgroundImage: contact.avatarImage,
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      contact.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: contact.isAvailable
                                ? const Color(0xFF38C270)
                                : const Color(0xFFA2ACB8),
                          ),
                        ),
                        const SizedBox(width: 6.0),
                        Text(
                          contact.isAvailable ? 'Available' : 'Offline',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 18.0,
                backgroundColor: _callBg,
                child: IconButton(
                  icon: const Icon(Icons.call, color: _green, size: 18.0),
                  onPressed: onCallPressed ?? () {},
                ),
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}