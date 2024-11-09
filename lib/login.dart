import "package:flutter/material.dart";
import "register.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? selectedCode;
  List<String> phoneCodes = ['+62', '+91', '+44', '+81'];
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isObscured = true;
  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    // Lakukan aksi login di sini (misalnya validasi atau kirim data ke server)
    print("Email: $email");
    print("Password: $password");
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromRGBO(242, 255, 250, 1),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromRGBO(242, 255, 250, 1),
            title: Text(
              "Login",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(74, 98, 138, 1)),
            )),
        body: Container(
            alignment: Alignment.bottomCenter,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Deli',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(
                          74, 98, 138, 1.0), // Perbaiki opacity menjadi 1.0
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/logo_deli.png')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  'assets/images/img_splash_1.png',
                  height: 303,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Masukkan nomer telepon',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(74, 98, 138,
                                  1.0), // Perbaiki opacity menjadi 1.0
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    value: selectedCode,
                                    onChanged: (String? newValue) {
                                      // Mengubah nilai yang dipilih dan memperbarui state
                                      setState(() {
                                        selectedCode = newValue;
                                      });
                                    },
                                    items: phoneCodes.map((String code) {
                                      return DropdownMenuItem<String>(
                                          value: code, child: Text(code));
                                    }).toList(),
                                    underline: Container(),
                                  ),
                                  Container(
                                    height: 1.5,
                                    width: double.maxFinite,
                                    color: Color.fromRGBO(74, 98, 138, 0.39),
                                  ),
                                ])),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 4,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(74, 98, 138, 0.39)),
                            )),
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility, // Mengubah ikon mata
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured; // Toggle visibility
                              });
                            },
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(74, 98, 138, 0.39))),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Lupa Kata Sandi',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(74, 98, 138,
                                1.0), // Perbaiki opacity menjadi 1.0
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          // onPressed: _login,
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(74, 98, 138, 1.0),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              textStyle:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ))
                ]),
              )
            ])));
  }
}
