// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
	@override
	State<StatefulWidget> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {

	// var _auth = FirebaseAuth.instance;
	// var _verificationId;
	var _code;

	var _formKey = GlobalKey<FormState>();

	@override
	Widget build(BuildContext context) => Scaffold(
		appBar: AppBar(
			centerTitle: true,
			title: Text(
				"Verification",
				style: TextStyle(
					fontWeight: FontWeight.bold,
					fontSize: 25.0,
				),
			),
		),


		body: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[

				Row(),

				Text(
					"Smile & Cure",
					style: TextStyle(
						color: Colors.purple,
						fontSize: 40.0,
						fontWeight: FontWeight.w700
					),
				),

				SizedBox(height: 70.0),

				Container(
					margin: EdgeInsets.only(left: 50.0, right: 50.0),
					child: Form(
						key: _formKey,
						child: TextFormField(
							keyboardType: TextInputType.number,
							validator: (val) {
							if (val.isEmpty)
								return "Stop fooling around!";
							else if (val.length < 6)
								return "Need more!";
							else if (val.length > 6)
								return "Too much!";
							else
								return null;
							},
							onSaved: (val) => _code = val,
							decoration: InputDecoration(
								labelText: "OTP Code",
								border: OutlineInputBorder(
									borderRadius: BorderRadius.circular(15.0)
								),
								prefixIcon: Icon(Icons.vpn_key),
							),
						),
					),
				),

				SizedBox(height: 20.0),

				Container(
					width: double.infinity,
					height: 40.0,
					margin: EdgeInsets.only(left: 50.0, right: 50.0),
					child: FlatButton(
						color: Colors.purple,
						shape: RoundedRectangleBorder(
							borderRadius: BorderRadius.circular(15.0)
						),
						child: Text(
							"Verify",
						),
						onPressed: _validateForm,
					),
				),
			],
		)
	);

	void _validateForm() {
		Navigator.pushNamedAndRemoveUntil(context, "/home_page", (route) => false);
		
		// final form = _formKey.currentState;
		// if (form.validate()) {
		// 	form.save();
		// 	Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
		// }

		//   MyFireBaseAuth(number: "+8801575023869");

		//   Navigator.push(context, MaterialPageRoute(builder: (context) => OTPPage()));
		// _number = "+880" + _number;
		// print('$_number');
		// _verifyPhoneNumber();
		// MyFireBaseAuth(context: context, number: "+8801575023869", nextPage: OTPPage()).verifyPhoneNumber();
	}

	// void _signInWithPhoneNumber() async {
    
	// 	final AuthCredential credential = PhoneAuthProvider.getCredential(
	// 	verificationId: _verificationId,
	// 	smsCode: _code,
	// 	);

	// 	final FirebaseUser user =
	// 		(await _auth.signInWithCredential(credential)).user;
	// 	final FirebaseUser currentUser = await _auth.currentUser();
	// 	assert(user.uid == currentUser.uid);

	// 	if (user != null)
	// 		// Navigator.pushNamedAndRemoveUntil(context, "/home_page", (route) => false);
	// 		;
	// 	else
	// 		// message = 'Sign in failed';
	// 		;
    
	// }


}
