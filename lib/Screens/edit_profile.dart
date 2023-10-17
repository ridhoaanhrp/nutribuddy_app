import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int selectedIndex = 3;

  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noHpController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.05,
                    right: width * 0.015,
                    left: width * 0.015),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width * 0.9,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: const Text(
                            'Ubah Profil',
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 23,
                              color: Color.fromARGB(255, 42, 42, 42),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          height: height * 0.04,
                        ),
                        Container(
                          width: width * 0.9,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Text(
                            'Masukkan Data Pribadi Anda!',
                            style: TextStyle(
                              fontFamily: "Montserrat",
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
              SizedBox(
                height: height * 0.04,
              ),
              formBuilder()
            ],
          ),
        ),
      )),
    );
  }

  Widget formBuilder() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.01,
                left: width * 0.01,
                right: width * 0.01,
                bottom: height * 0.01),
            child: Container(
              width: width * 0.9,
              child: TextFormField(
                  controller: namaController,
                  validator: (value) {
                    return value!.isEmpty ? "Nama Tidak Boleh Kosong!" : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Nama",
                    labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff44B4FF),
                    ),
                    suffixIcon: Image.asset("gambar/nama.png"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF44B4FF))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.014,
                left: width * 0.01,
                right: width * 0.01,
                bottom: height * 0.01),
            child: Container(
              width: width * 0.9,
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: noHpController,
                  validator: (value) {
                    return value!.isEmpty ? "Email Tidak Boleh Kosong!" : null;
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Email",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/mail.png",
                      width: width * 0.02,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF44B4FF))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.014,
                left: width * 0.01,
                right: width * 0.01,
                bottom: height * 0.01),
            child: Container(
              width: width * 0.9,
              child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: noHpController,
                  validator: (value) {
                    return value!.isEmpty
                        ? "No Handphone Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "No Handphone",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/phoneNumber.png",
                      height: height * 0.055,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF44B4FF))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.014,
                left: width * 0.01,
                right: width * 0.01,
                bottom: height * 0.01),
            child: Container(
              width: width * 0.9,
              // height: 60,
              child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    return value!.isEmpty
                        ? "Password Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset("gambar/password.png"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFF44B4FF))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.01,
                left: width * 0.01,
                right: width * 0.01,
                bottom: height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.9,
                  height: height * 0.07,
                  child: ElevatedButton(
                    onPressed: (() => {
                          if (_formKey.currentState!.validate())
                            {
                              if (namaController.text.isNotEmpty &&
                                  noHpController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty)
                                {
                                  submitTrue(
                                      context,
                                      namaController.text,
                                      noHpController.text,
                                      passwordController.text)
                                }
                              else
                                {
                                  submitEmpty(
                                      context,
                                      namaController.text,
                                      noHpController.text,
                                      passwordController.text)
                                }
                            }
                        }),
                    child: const Text("Ubah"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void submitTrue(
      BuildContext context, String nama, String noHp, String password) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Edit Sukses",
      desc: "Data kamu telah sukses di ubah",
      style: const AlertStyle(
        descStyle: TextStyle(
            fontSize: 13,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.normal),
      ),
      buttons: [
        DialogButton(
            child: const Text(
              "Lanjut",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800),
            ),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    ).show();
  }

  void submitEmpty(
      BuildContext context, String nama, String noHp, String password) {
    if (nama.isEmpty && noHp.isEmpty && password.isEmpty) {
      const snackBar1 = SnackBar(
        duration: Duration(seconds: 2),
        content: Text("Data tidak boleh kosong!"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar1);
      return;
    }
  }
}
