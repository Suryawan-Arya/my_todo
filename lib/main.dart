import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_todo/ui/home_page/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Image image = Image.asset('images/splash/splash_screen.png');
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            bodyText1: GoogleFonts.poppins(),
            bodyText2: GoogleFonts.poppins(),
          ),
        ),
        home: SplashScreenView(
          navigateRoute: HomePage(),
          duration: 8000,
          imageSize: 600,
          imageSrc: 'images/splash_screen/splash_screen2.png',
          backgroundColor: Colors.white,
        ));
  }
}
