import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_e_commerce_app/provider/cart_provider.dart';

import 'screens/nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
        ),
        home: const NavBarScreen(),
      ),
    );
  }
}
