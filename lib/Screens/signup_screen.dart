import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutribuddy_app/Screens/splash_screen_2.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:page_transition/page_transition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noHpController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
            height: height,
            width: width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
                              child: const Text(
                                'Sign Up',
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
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
          ),
        ));
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
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset("gambar/nama.png"),
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
                      height: height * 0.075,
                    ),
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
                  controller: emailController,
                  validator: (value) {
                    return value!.isEmpty ? "Email Tidak Boleh Kosong!" : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset(
                      "gambar/mail.png",
                      width: width * 0.01,
                    ),
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
                  controller: userNameController,
                  validator: (value) {
                    return value!.isEmpty
                        ? "Username Tidak Boleh Kosong!"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle:
                        const TextStyle(fontSize: 13, color: Color(0xff44B4FF)),
                    suffixIcon: Image.asset("gambar/nama.png"),
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
                              if (namaController != null &&
                                  noHpController != null &&
                                  emailController != null &&
                                  userNameController != null &&
                                  passwordController != null)
                                {
                                  submitTrue(
                                      context,
                                      namaController.text,
                                      noHpController.text,
                                      emailController.text,
                                      userNameController.text,
                                      passwordController.text)
                                }
                              else
                                {
                                  submitEmpty(
                                      context,
                                      namaController.text,
                                      noHpController.text,
                                      emailController.text,
                                      userNameController.text,
                                      passwordController.text)
                                }
                            }
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

  void submitTrue(BuildContext context, String nama, String noHp, String email,
      String username, String password) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Registrasi Sukses",
      desc: "Data kamu telah sukses di registrasikan",
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
              Navigator.push(
                  context,
                  PageTransition(
                    child: const SplashScreen2(),
                    type: PageTransitionType.rightToLeft,
                  ));
            })
      ],
    ).show();
  }

  void submitEmpty(BuildContext context, String nama, String noHp, String email,
      String username, String password) {
    if (nama.isEmpty &&
        noHp.isEmpty &&
        email.isEmpty &&
        username.isEmpty &&
        password.isEmpty) {
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
