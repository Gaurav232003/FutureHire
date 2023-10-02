import 'dart:math';
import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatMessage {
  final String text;
  final bool isMe;

  _ChatMessage(this.text, this.isMe);
}

class _ChatPageState extends State<ChatPage> {
  final List<_ChatMessage> messages = []; // List to store chat messages
  final TextEditingController messageController = TextEditingController();
  final Random random = Random();
  final String apiKey = ApiKey; // Replace with your API key

  // Function to send a message and get a response from OpenAI API
  Future<void> sendMessage() async {
    final message = messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        messages.insert(0, _ChatMessage(message, true)); // Sent by the user
        messageController.clear();
      });

      try {
        final chatbotResponse = await generateChatbotResponse(message);
        setState(() {
          messages.insert(
              0, _ChatMessage(chatbotResponse, false)); // Chatbot's response
        });
      } catch (e) {
        print('Error: $e');
      }

      // Add a delay before sending the next message (adjust the duration as needed)
      await Future.delayed(Duration(seconds: 2));
    }
  }

  Future<String> generateChatbotResponse(String userMessage) async {
    final apiUrl = 'https://api.openai.com/v1/engines/davinci/completions';

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        'prompt': 'User: $userMessage\nChatGPT:',
        'max_tokens': 50, // Adjust as needed
      }),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final chatbotResponse = jsonResponse['choices'][0]['text'];
      return chatbotResponse;
    } else {
      print('API Request Error: ${response.statusCode}');
      print('Response Body: ${response.body}');
      throw Exception('Failed to generate chatbot response');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true, // Start from the bottom
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final chatMessage = messages[index];
                return ChatBubble(
                  message: chatMessage.text,
                  isMe: chatMessage.isMe,
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey, // Bubble background color
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          message,
          style: TextStyle(color: Colors.white), // Text color
        ),
      ),
    );
  }
}
