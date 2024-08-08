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
      onGenerateRoute: (settings) {
        if (settings.name == Detailspage.routeName) {
          final args = settings.arguments as Shoe;
        return MaterialPageRoute(builder: (context) {
          return Detailspage(shoes: args);
        });
        }
      },
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // Detailspage.routeName: (context) => const Detailspage(),
        '/search': (context) => Searchpage(),
        '/detail/add': (context) => UpDate(),
      },
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
