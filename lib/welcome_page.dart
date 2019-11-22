import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
	@override
	Widget build(BuildContext context) => Scaffold(
		body: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[

				Row(),

				Text(
					"Welcome",
					style: TextStyle(
						color: Colors.purple,
						fontSize: 30.0,
					),
				),

				SizedBox(height: 10.0),

				Text(
					"To",
					style: TextStyle(
						color: Colors.purple,
						fontSize: 20.0,
					),
				),

				SizedBox(height: 10.0),

				Text(
					"Smile & Cure",
					style: TextStyle(
						color: Colors.purple,
						fontSize: 40.0,
						fontWeight: FontWeight.w700
					),
				),

				SizedBox(height: 30.0),

				FlatButton(
					color: Colors.purple,
					padding: EdgeInsets.symmetric(horizontal: 30.0),
					shape: RoundedRectangleBorder(
						borderRadius: BorderRadius.circular(8.0)
					),
					child: Text(
						"Get Started",
						style: TextStyle(
							fontSize: 20.0
						),
					),
					onPressed: () => Navigator.pushReplacementNamed(context, "/login_page"),
						
				)

			],
		)
	);
}