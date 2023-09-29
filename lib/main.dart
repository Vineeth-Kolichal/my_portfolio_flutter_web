import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_site/business_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:my_portfolio_site/presentation/screens/admin_screen/admin_screen.dart';

import 'firebase_options.dart';
import 'presentation/screens/home_screen/home_screen.dart';

Future<void> main(List<String> args) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            fontFamily: GoogleFonts.montserrat().fontFamily),
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
          "/admin": (context) => AdminScreen()

          //add more pages here
        },
        // home: HomeScreen(),
      ),
    );
  }
}
