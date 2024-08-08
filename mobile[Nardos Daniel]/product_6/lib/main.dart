import 'package:flutter/material.dart';
import 'package:product_6/AddPage.dart';
import 'package:product_6/DetailsPage.dart';
import 'package:product_6/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_6/SearchPage.dart';
import 'package:product_6/shoe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (settings) {
      //   if (settings.name == Detailspage.routeName) {
      //     final args = settings.arguments as Shoe;
      //   return MaterialPageRoute(builder: (context) {
      //     return Detailspage(shoes: args);
      //   });
      //   }
      // },
        onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return _createRoute(const HomePage());
          case '/search':
            return _createRoute(const Searchpage());
          case '/detail/add':
            return _createRoute(const UpDate());
          case '/detail':
            final args = settings.arguments as Shoe;
            return _createRoute(Detailspage(shoes: args,));
          default:
            return null;
        }},
      initialRoute: '/',
    
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.indigoAccent.shade400),
        useMaterial3: true,
      ),
      // home: const HomePage(),
    );
  }
}
PageRouteBuilder _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}