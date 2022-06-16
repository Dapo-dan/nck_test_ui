import 'package:flutter/material.dart';
import 'package:nck_test_ui/screens/checkout.dart';
import 'package:nck_test_ui/screens/delivery_address.dart';
import 'package:nck_test_ui/screens/mainpages/bottom_navigation.dart';
import 'package:nck_test_ui/screens/order.dart';
import 'package:nck_test_ui/screens/payment.dart';
import 'package:nck_test_ui/screens/purchase_order.dart';
import 'package:nck_test_ui/screens/top_up.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCK Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black)),
          backgroundColor: Colors.white,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
          textTheme: const TextTheme(
            headline4: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
            headline5: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            headline6: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
            bodyText1: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
            bodyText2: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.grey),
            caption: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
            button: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.black)),
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNavBar(),
        '/top_up': (context) => const TopUpPage(),
        '/purchase_order': (context) => const PurchaseOrderPage(),
        '/delivery_address': (context) => const DeliveryAddress(),
        '/check_out': (context) => const CheckoutPage(),
        '/payment': (context) => const PaymentPage(),
        '/order': (context) => const OrderPage(),
      },
    );
  }
}
