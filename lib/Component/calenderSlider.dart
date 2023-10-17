import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class CalenderSlider extends StatefulWidget {
  const CalenderSlider({Key? key}) : super(key: key);

  @override
  _CalenderSliderState createState() => _CalenderSliderState();
}

class _CalenderSliderState extends State<CalenderSlider> {
  DateTime selectedDate = DateTime.now();
  DatePickerController controllerDate = DatePickerController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Column(
      children: [
        Container(
          height: height * 0.14,
          width: width * 0.9,
          child: DatePicker(
            DateTime.now(),
            locale: "Indonesia",
            width: width * 0.15,
            height: height * 0.08,
            controller: controllerDate,
            initialSelectedDate: DateTime.now(),
            daysCount: DateTime.monthsPerYear,
            deactivatedColor: Colors.black,
            selectionColor: Colors.white,
            selectedTextColor: Colors.black,
            onDateChange: (date) {
              setState(() {
                selectedDate = date;
              });
            },
          ),
        ),
        Container(
          width: width * 0.9,
          height: height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.042,
                height: height * 0.02,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              const Text(
                "Hari ini",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: width * 0.04,
              ),
              Container(
                width: width * 0.042,
                height: height * 0.02,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFC60E),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              const Text(
                "Aktivitas",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: width * 0.04,
              ),
              Container(
                width: width * 0.042,
                height: height * 0.02,
                decoration: BoxDecoration(
                    color: const Color(0xFFFF900E),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              const Text(
                "Pemeriksaan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
