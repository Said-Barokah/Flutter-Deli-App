import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/login');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFF2EB),
      body: Container(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  SizedBox(width: 10),
                  Image.asset('assets/images/logo_deli.png')
                ],
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Selamat datang di Deli',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(74, 98, 138, 1.0))),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 280,
                    child: Text(
                      'Menghubungkan Masayarakat dengan Layanan Desa Secara Efisien.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(74, 98, 138, 1.0),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('assets/images/img_splash_1.png')],
                ),
              )
            ],
          )),
    );
  }
}
