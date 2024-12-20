import "package:flutter/material.dart";
import "register.dart";

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              "Register",
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
                            'Masukkan datamu',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(74, 98, 138,
                                  1.0), // Perbaiki opacity menjadi 1.0
                            ),
                          ))),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'NIK',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(74, 97, 138,
                                0.518), // Perbaiki opacity menjadi 1.0
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2.0),
                            child: Image.asset(
                              'assets/images/icon_check.png',
                              width: 5,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(74, 98, 138, 0.39))),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Nama Lengkap',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(74, 97, 138,
                                0.518), // Perbaiki opacity menjadi 1.0
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2.0),
                            child: Image.asset(
                              'assets/images/icon_check.png',
                              width: 5,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(74, 98, 138, 0.39))),
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(74, 97, 138,
                                0.518), // Perbaiki opacity menjadi 1.0
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2.0),
                            child: Image.asset(
                              'assets/images/icon_check.png',
                              width: 5,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(74, 98, 138, 0.39))),
                        ),
                      )),
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
                          hintText: 'Masukkan Kata Sandi',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(74, 97, 138, 0.518),
                          ),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Image.asset(
                            'assets/images/check_border.png',
                            width: 26,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text.rich(
                              TextSpan(
                                  text:
                                      'Dengan mendaftar, Anda setuju untuk mematuhi syarat dan ketentuan yang berlaku',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(74, 98, 138, 0.7)),
                                  children: [
                                    TextSpan(
                                        text: ' syarat',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                74, 98, 138, 0.9))),
                                    TextSpan(text: ' dan '),
                                    TextSpan(
                                        text: 'ketentuan ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                74, 98, 138, 0.9))),
                                    TextSpan(text: 'yang berlaku')
                                  ]),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: _login,
                          child: Text('Daftar'),
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
