import 'package:go_router/go_router.dart';
import 'package:whoosh/Pages/home.dart';
import 'package:whoosh/auth/loginPage.dart';
import 'package:whoosh/auth/otpPage.dart';
import 'package:whoosh/auth/splashScreen.dart'; 
final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) =>  const Loginpage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) =>  const Homepage(),
      
    ),
     GoRoute(
      path: '/otp',
      builder: (context, state) =>  const OTPPage(),
      
    ),
  ],
);

