import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:nutribuddy_app/Model/chatMessage.dart';

class TextMessage extends StatefulWidget {
  final List<ChatMessage>? listChat;
  const TextMessage({Key? key, this.listChat}) : super(key: key);

  @override
  State createState() => _TextMessage();
}

class _TextMessage extends State<TextMessage> {
  final myController = TextEditingController();

  @override
  initState() {
    super.initState();
    ChatMessage.getAlldata();
    // Add listeners to this class
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
        controller: myController,
        style: GoogleFonts.montserrat(color: Colors.white, height: 2.0),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          labelText: "Atau ketik manual untuk lainnya",
          filled: true,
          labelStyle: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          iconColor: Colors.white,
          fillColor: const Color.fromRGBO(48, 173, 255, 1),
          suffixIcon: IconButton(
            onPressed: null,
            padding: const EdgeInsets.only(right: 20),
            icon: GestureDetector(
              onTap: () {
                widget.listChat?.add(ChatMessage(
                    textList: [myController.text],
                    role: Role.user,
                    date: DateTime.now(),
                    value: ["yes", "no"]));
                widget.listChat?.add(ChatMessage(
                    textList: [
                      "Apakah kamu dalam 12 bulan terakhir pernah berjemur dibawah sinar matahari? "
                    ],
                    role: Role.sistem,
                    date: DateTime.now(),
                    value: ["yes", "no"]));
                myController.text = "";
                setState(() {
                  ChatMessage.getAlldata();
                });
              },
              child: const Iconify(
                Bi.send,
                color: Colors.white,
              ),
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
