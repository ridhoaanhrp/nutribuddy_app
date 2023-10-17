import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Component/SelfAssesmentSubComponent/textMessage.dart';
import 'package:nutribuddy_app/Component/SelfAssesmentSubComponent/ya&tidakButton.dart';
import 'package:nutribuddy_app/Model/chatMessage.dart';

class Controller extends StatefulWidget {
  final List<ChatMessage>? listChat;
  const Controller({Key? key, this.listChat}) : super(key: key);

  @override
  State createState() => _Controller();
}

class _Controller extends State<Controller> {
  @override
  initState() {
    super.initState();
    ChatMessage.getAlldata();
    // Add listeners to this class
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(76, 184, 255, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: YadanTidak(),
              ),
              TextMessage(listChat: widget.listChat),
            ],
          ),
        )
      ],
    );
  }
}
