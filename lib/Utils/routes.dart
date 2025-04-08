import 'package:go_router/go_router.dart';
import 'package:whoosh/Auth/splashScreen.dart';
import 'package:whoosh/Pages/Features/order/confirmatiom_page.dart';
import 'package:whoosh/Pages/Features/order/time_slot.dart';
import 'package:whoosh/Pages/Features/shop_details/shop_details.dart';
import 'package:whoosh/Pages/home.dart';
import 'package:whoosh/auth/loginPage.dart';
import 'package:whoosh/auth/otpPage.dart'; 
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

    GoRoute(
      path: '/laundryDetails',
      builder: (context, state) {
        String title = state.extra as String;
        return ShopDetailsScreen(title: title,);
     }  
    ),

     GoRoute(
      path: '/timeSlot',
      builder: (context, state) =>  const TimeSlot(),
      
    ),

    GoRoute(
      path: '/orderConfirmation',
      builder: (context, state) =>  const OrderConfirmatiomPage(),
      
    ),
  ],
);

