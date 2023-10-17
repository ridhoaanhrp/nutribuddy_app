import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String _valMonth = "  Month";
  final List<String> _listMonth = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ];

  // final listMonthDate = List<DateTime>.generate(
  //     12, (index) => DateTime.utc(DateTime.now().month));

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.03, left: width * 0.045, right: width * 0.045),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding:
                  EdgeInsets.only(right: width * 0.009, left: width * 0.009),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: DropdownButton<String>(
                      hint: Text(
                        " $_valMonth",
                        style: const TextStyle(color: Colors.blue),
                      ),
                      isDense: true,
                      // value: _valMonth,
                      // selectedItemBuilder: (BuildContext context) {
                      //   return _listMonth.map((_listMonth) {
                      //     return Text('_listMonth');
                      //   }).toList();
                      // },
                      // items: _listMonth.map((String _listMonth) {
                      //   return DropdownMenuItem(
                      //     child: Text(_listMonth),
                      //     value: _listMonth,
                      //   );
                      // }).toList(),
                      items: _listMonth
                          .map((String listMonth) => DropdownMenuItem(
                                value: listMonth,
                                child: Text(" $listMonth"),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _valMonth = newValue!;
                        });
                      },
                      borderRadius: BorderRadius.circular(10),
                      style: const TextStyle(color: Colors.blue),
                      icon: Padding(
                        padding: const EdgeInsets.only(
                          right: 7,
                        ),
                        child: Image.asset("gambar/Group 60.png"),
                      ),
                    ),
                  ))),
          SizedBox(
            width: width * 0.3,
          ),
          GestureDetector(
            onTap: (() {}),
            child: Image.asset("gambar/Group 61.png"),
          )
        ],
      ),
    );
  }
}
