import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Component/selfAssesmenController.dart';
import 'package:nutribuddy_app/Model/chatMessage.dart';

class SelfAssesment extends StatefulWidget {
  const SelfAssesment({Key? key}) : super(key: key);

  @override
  State createState() => _SelfAssesment();
}

class _SelfAssesment extends State {
  List<ChatMessage> demeChatMessages = ChatMessage.getAlldata();

  initState() {
    super.initState();
    ChatMessage.getAlldata();
    // Add listeners to this class
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppbar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 20, left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.83,
                  child: ListView(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "15 Mei 2020 08.00",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 197, 197, 197)),
                            ),
                          ),
                          for (var i = 0; i < demeChatMessages.length; i++)
                            if (demeChatMessages[i].role == Role.sistem) ...[
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("gambar/Group 102.png",
                                        width: 38),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            for (var j = 0;
                                                j <
                                                    ChatMessage.getLengtText(
                                                        demeChatMessages, i);
                                                j++)
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 10),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 236, 236, 236),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20),
                                                          topRight:
                                                              Radius.circular(
                                                                  20)),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  child: Text(
                                                    demeChatMessages[i]
                                                        .textList[j],
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 13,
                                                            height: 1.5,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    74,
                                                                    74,
                                                                    74)),
                                                  ),
                                                ),
                                              ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                            ] else ...[
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          for (var j = 0;
                                              j <
                                                  ChatMessage.getLengtText(
                                                      demeChatMessages, i);
                                              j++)
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 76, 184, 255),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Text(
                                                  demeChatMessages[i]
                                                      .textList[j],
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1.5,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255)),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Controller(listChat: demeChatMessages),
              ),
            ],
          ),
        ));
  }
}

AppBar buildAppbar() {
  return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      shadowColor: Color.fromRGBO(0, 0, 0, 0),
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Color.fromRGBO(62, 175, 252, 1),
        ),
      ));
}
