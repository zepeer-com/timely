import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:timely/core/configs/theme/app_colors.dart";
import "package:timely/presentation/main/pages/main.dart";
import "package:timely/presentation/signin/pages/signin.dart";
import "package:timely/presentation/signup/pages/signup.dart";
import "package:timely/presentation/splash/pages/splash.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        primaryColor: AppColors.primary,
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/": (context) => MainScreen(),
        "/splash": (context) => SplashScreen(),
        "/signin": (context) => SignInScreen(),
        "/signup": (context) => SignUpScreen(),
      },
    );
  }
}
