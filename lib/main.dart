import 'package:abuys/UIs/main_signup_page.dart';
import 'package:abuys/UIs/spleash_screen.dart';
import 'package:flutter/material.dart';
import 'UIs/buyer_Login.dart';
import 'UIs/buyer_home_page.dart';
import 'UIs/buyer_verification.dart';
import 'UIs/create_an_account.dart';
import 'UIs/delivery_conformation.dart';
import 'UIs/guarantor_login.dart';
import 'UIs/guarantor_signup_page.dart';
import 'UIs/main_login_page.dart';
import 'UIs/seller_home_page.dart';
import 'UIs/seller_login.dart';
import 'UIs/seller_sign_up.dart';
import 'UIs/seller_verification.dart';
import 'UIs/transporter_signup_page.dart';
import 'UIs/transportor_Login.dart';
import 'UIs/transportor_pickups.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Screens',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) => const LoginScreen(),
        '/login': (context) => const MainLoginPage(),
        '/mainsignup': (context) => const MainSignupPage(),
        '/buyer': (context) => const BuyerVerification(),
        '/seller': (context) => const SellerVerification(),
        '/buyerLogin': (context) => const BuyerLogin(),
        '/sellerLogin': (context) => const SellerLogin(),
        '/transporter': (context) => const TransportorLogin(),
        '/guarantor': (context) => const GuarantorLogin(),
        '/signup': (context) => const CreateAnAccount(),
        '/sellerSignup': (context) => const SellerSignupPage(),
        '/transporterSignup': (context) => const TransporterSignupPage(),
        '/guarantorSignup': (context) => const GuarantorSignupPage(),
        '/transportorpickups': (context) => const TransportorPickups(),
        '/deliveryConformation': (context) => const DeliveryConformation(),
        '/buyerhomepage': (context) => const BuyerHomePage(),
        '/sellerhomepage': (context) => const SellerHomePage(),
      },
    );
  }
}