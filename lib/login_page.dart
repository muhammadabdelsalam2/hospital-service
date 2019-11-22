// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
	@override
	State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

	// var _auth = FirebaseAuth.instance;
	// var verificationId;
	// String _number = "+8801575023869";

	var _number;

	var _formKey = GlobalKey<FormState>();

	@override
	Widget build(BuildContext context) => Scaffold(
		appBar: AppBar(
			centerTitle: true,
			title: Text(
				"Sign Up",
				style: TextStyle(
					fontSize: 25.0,
					fontWeight: FontWeight.bold,
				),
			),
			automaticallyImplyLeading: false,
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
                          		else if (val.length < 10)
                            		return "Need more!";
                        		else if(val.length > 10)
                            		return "Too much!";
				  				else
				  					return null;
                       		},
                        	onSaved: (val) => _number = val,
                        	decoration: InputDecoration(
                        		labelText: "Number",
								hintText: "Without 0",
                        		border: OutlineInputBorder(
                            		borderRadius: BorderRadius.circular(15.0)
								),
                          		prefixIcon: Icon(Icons.phone_android),
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
				  			"Submit",
				  		),
				  		onPressed: _validateForm,
					),
				),

				SizedBox(height: 20.0),

				// RichText(
				// 	text: TextSpan(
				// 		text: "Have An Account?",
				// 		style: TextStyle(color: Colors.grey),
				// 		children: <TextSpan>[
				// 			TextSpan(
				// 				text: " SIGN IN",
				// 				style: TextStyle(
				// 					color: Colors.purple,
				// 				)
				// 				// recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
				// 				)
				// 		]
				// 	),
				// )

			],
		)
	);

	void _validateForm() {
		// verifyPhoneNumber();
		// MyFireBaseAuth(number: "+8801575023869").verifyPhoneNumber();
		Navigator.pushNamed(context, "/otp_page");

	// final form = _formKey.currentState;
    	// if (form.validate()) {
      	// 	form.save();
		// 	Navigator.push(context, MaterialPageRoute(builder: (context) => OTPPage()));
			
    	// }
	
		//   MyFireBaseAuth(number: "+8801575023869");

		//   Navigator.push(context, MaterialPageRoute(builder: (context) => OTPPage()));
		// _number = "+880" + _number;
		// print('$_number');
		// _verifyPhoneNumber();
		// MyFireBaseAuth(context: context, number: "+8801575023869", nextPage: OTPPage()).verifyPhoneNumber();
	}

	// void verifyPhoneNumber() async => await _auth.verifyPhoneNumber(
	// 	phoneNumber: _number,
	// 	timeout: const Duration(seconds: 5),
	// 	verificationCompleted: (phoneAuthCredential) => _auth.signInWithCredential(phoneAuthCredential),
	// 	verificationFailed: (authException) => print('Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}'),
	// 	codeSent: (verificationId, [forceResendingToken]) async => this.verificationId = verificationId,
	// 	codeAutoRetrievalTimeout: (verificationId) => this.verificationId = verificationId
	// );
}