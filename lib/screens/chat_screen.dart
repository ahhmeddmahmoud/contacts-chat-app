import 'package:flutter/material.dart';
import '../models/contact.dart';

class ChatScreen extends StatefulWidget {
  final Contact contact;

  const ChatScreen({super.key, required this.contact});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  static const Color _green = Color(0xFF186A37);

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;
    setState(() {
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _green,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 18.0,
              backgroundImage: widget.contact.avatarImage,
            ),
            const SizedBox(width: 10.0),
            Text(
              widget.contact.name,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.call_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.videocam_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const Expanded(child: SizedBox.shrink()),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Write Your Message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                InkWell(
                  onTap: _sendMessage,
                  child: const Icon(Icons.send, color: _green, size: 24.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}
