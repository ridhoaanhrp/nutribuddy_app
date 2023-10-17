import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Screens/form_data_female.dart';
import 'package:page_transition/page_transition.dart';

class FormDataMale extends StatefulWidget {
  const FormDataMale({Key? key}) : super(key: key);

  @override
  _FormDataMaleState createState() => _FormDataMaleState();
}

class _FormDataMaleState extends State<FormDataMale> {
  TextEditingController tanggalLahirController = TextEditingController();
  TextEditingController tinggiBadanController = TextEditingController();
  TextEditingController beratBadanNameController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void initstate() {
    super.initState();
    // NotificationApi.init();
    // listenNotifications();
  }

  // void listenNotifications() =>
  //     NotificationApi.onNotifications.stream.listen(onClickedNotification);
  // void onClickedNotification(String? payload) => Navigator.of(context)
  //     .push(MaterialPageRoute(builder: (context) => FormDataMale()));

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          left: 1,
                                        ),
                                        child: Image.asset(
                                          "gambar/splashScreen.png",
                                          height: 160,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 39,
                              ),
                              Container(
                                width: 352,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Masukkan Data',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 23,
                                    color:
                                        const Color.fromARGB(255, 42, 42, 42),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 20,
                              ),
                              Container(
                                width: 352,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    formBuilder()
                  ],
                ),
              ),
            )));
  }

  Widget formBuilder() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              width: 352,
              height: 55,
              child: TextFormField(
                  controller: tanggalLahirController,
                  validator: (value) {
                    return value!.isEmpty ? "Nama Tidak Boleh Kosong!" : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Tanggal Lahir",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/tanggalLahir.png",
                      height: 15,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 352,
              height: 55,
              child: TextFormField(
                  controller: tinggiBadanController,
                  validator: (value) {
                    return value!.isEmpty
                        ? "tinggi badan Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Tinggi Badan",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/tinggiBadan.png",
                      height: 15,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 352,
              height: 55,
              child: TextFormField(
                  controller: beratBadanNameController,
                  validator: (value) {
                    return value!.isEmpty
                        ? "berat badan Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Berat Badan",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/beratBadan.png",
                      height: 15,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 352,
              height: 55,
              child: TextFormField(
                  controller: jenisKelaminController,
                  validator: (value) {
                    return value!.isEmpty
                        ? "jenis kelamin Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Jenis Kelamin",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/jenisKelamin.png",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 352,
                  height: 65,
                  child: ElevatedButton(
                    // onPressed: () {
                    //   NotificationApi.showNotification(
                    //       id: 1,
                    //       title: "Selamat datang",
                    //       body: "Lengkapi Data Diri Anda",
                    //       payload: "Nutribudy.abs");
                    // },
                    onPressed: (() => {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: const FormDataFemale(),
                                type: PageTransitionType.rightToLeft,
                              ))
                        }),
                    child: const Text("Sign Up"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future notificationSelected(String payload) async {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return FormDataMale();
    }));
  }
}
