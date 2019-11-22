import 'package:flutter/material.dart';
import 'package:hospital_service/doctor_booking.dart';
import 'package:hospital_service/otp_page.dart';
import 'login_page.dart';
import 'welcome_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());


var logged = false;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
	@override
	Widget build(BuildContext context) => MaterialApp(
		home: logged ?  HomePage() : WelcomePage(),
		// initialRoute: "/welcome_page",
		routes: <String, WidgetBuilder>{
			"/welcome_page": (_) => WelcomePage(),
			"/login_page": (_) => LoginPage(),
			"/otp_page": (_) => OTPPage(),
			"/home_page": (_) => HomePage(),
			"/DoctorBooking": (_) => DoctorBooking(),
			
		},
		debugShowCheckedModeBanner: false,
		theme: ThemeData(
			primarySwatch: Colors.purple,
			buttonColor: Colors.purple,
			buttonTheme: ButtonThemeData(
				textTheme: ButtonTextTheme.primary
			),
		),
	);
}
