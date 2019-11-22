import 'package:flutter/material.dart';
import 'data.dart';

class DoctorBooking extends StatelessWidget{

	@override
	Widget build(BuildContext context) => Scaffold(
		// body: _buildDialogue(),
		body: Column(
			// mainAxisSize: MainAxisSize.min,
			children: <Widget>[

				SizedBox(height: 30.0),

				Card(
					shape: RoundedRectangleBorder(
						borderRadius: BorderRadius.circular(10.0)
					),
					elevation: 5.0,

					child: Column(
						children: <Widget>[
							
							SizedBox(height: 10.0),

							Text(
								'Pick a Date Range',
								style: TextStyle(
									fontSize: 20.0,
									fontWeight: FontWeight.bold
								),
							),

							Row(
								mainAxisAlignment: MainAxisAlignment.center,
								children: <Widget>[
									
									RaisedButton(
										child: Text('Date1'),
										onPressed: (){},
									),

									SizedBox(width: 20.0),
									
									RaisedButton(
										child: Text('Date2'),
										onPressed: (){},
									)

								],
							),

							RaisedButton(
								child: Text('Search'),
								onPressed: (){},
							)
						],
					),
				),


				Expanded(
				  	child: ListView.builder(
						// padding: EdgeInsets.all(50.0),
						itemCount: doctors.length,
						itemBuilder: (context, idx) => Card(
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.circular(10.0)
							),
							elevation: 5.0,
							child: Row(
								
								children: <Widget>[
									
									//Picture
									Container(
										padding: EdgeInsets.all(10),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(10.0)
										),
										height: 70.0,
										width: 70.0,
										child: Image.asset(
											"assets/images/doctor.jpeg",
										)
									),

									SizedBox(width: 10.0),
									

									//Details
									Column(
										mainAxisAlignment: MainAxisAlignment.center,
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[

											SizedBox(height: 10.0),
											
											

											Text(
												doctors[idx],
												style: TextStyle(
													fontWeight: FontWeight.bold,
													fontSize: 20.0
												),
											),

											Text('Dentist'),

											RaisedButton(
												child: Text('Book Now'),
												onPressed: () => showDialog(
													context: context,
													builder: (_) => SimpleDialog(
														contentPadding: EdgeInsets.zero,
														shape: RoundedRectangleBorder(
															borderRadius: BorderRadius.circular(5.0)		
														),
														elevation: 10.0,
														children: <Widget>[
															Container(
																padding: EdgeInsets.all(20.0),
																child: Column(
																	children: <Widget>[
																		
																		Text(
																			'Dr. Yeafez Ali',
																			style: TextStyle(
																				fontSize: 20.0,
																				fontWeight: FontWeight.bold
																			),
																			textAlign: TextAlign.center,
																		),

																		Text(
																			'Dentist',
																			style: TextStyle(
																				fontSize: 15.0,
																				// fontWeight: FontWeight.bold
																			),
																			textAlign: TextAlign.center,
																		),

																		SizedBox(height: 10.0),
																		
																		Divider(
																			color: Colors.purple,
																		),

																		SizedBox(height: 20.0),

																		Row(
																			mainAxisAlignment: MainAxisAlignment.center,
																			children: <Widget>[
																				
																				Text(
																					'Pick a Day:',
																					style: TextStyle(
																						fontSize: 17.0
																					),
																				),

																				SizedBox(width: 20.0),

																				RaisedButton(
																					child: Text('Day'),
																					onPressed: (){},
																				)
																			],
																		),

																		SizedBox(height: 20.0),
																		
																		


																		Row(
																			mainAxisAlignment: MainAxisAlignment.center,
																			children: <Widget>[

																				Text(
																					'Pick a Time:',
																					style: TextStyle(
																						fontSize: 17.0
																					),
																				),

																				SizedBox(width: 20.0),

																				RaisedButton(
																					child: Text('Time'),
																					onPressed: (){},
																				)				],
																		),
																		
																		SizedBox(height: 40.0),

																		RaisedButton(
																			child: Text('Next'),
																			// onPressed: (){},
																			onPressed: () => showDialog(
																				context: context,
																				builder: (_) => SimpleDialog(
																					contentPadding: EdgeInsets.zero,
																					shape: RoundedRectangleBorder(
																						borderRadius: BorderRadius.circular(5.0)		
																					),
																					elevation: 10.0,
																					children: <Widget>[
																						_buildConfirmation()
																					],
																				),
																				barrierDismissible: false
																			),
																		),

																		// SizedBox(height: 20.0),

																		

																	],
																)
															)
														],
													),
													barrierDismissible: false
												),
											)

										],
									),
									

								],
							)
						),
				  	),
				),
				
			],
		)
	);

	_buildConfirmation() => Container(
		padding: EdgeInsets.all(20.0),
		child: Column(
			children: <Widget>[

				// SizedBox(height: 30.0),

				// SizedBox(height: 10.0),
				
				Text(
					'Booking Details',
					style: TextStyle(
						fontSize: 20.0,
						fontWeight: FontWeight.bold
					),
					textAlign: TextAlign.center,
				),

				SizedBox(height: 10.0),
				
				Divider(
					color: Colors.purple,
				),

				SizedBox(height: 20.0),
				

				RichText(
					text: TextSpan(
						children: <TextSpan>[

							_buildTextSpanBold("Doctor:\t"),
							_buildTextSpan("Dr. Yeafez\n"),
							_buildTextSpanBold("Specialty:\t"),
							_buildTextSpan("Dentist\n\n\n"),

							_buildTextSpanBold("Patient:\t"),
							_buildTextSpan("Mr. Jolil\n"),
							_buildTextSpanBold("Gender:\t"),
							_buildTextSpan("Male\n"),
							_buildTextSpanBold("Age:\t"),
							_buildTextSpan("25\n"),
							_buildTextSpanBold("Phone:\t"),
							_buildTextSpan("0XXXXXXXXXX\n"),
							_buildTextSpanBold("Address\t"),
							_buildTextSpan("194/1, Sipahibag"),


						]
					),
				),
				
				SizedBox(height: 50.0),

				RaisedButton(
					child: Text('Confirm Booking'),
					onPressed: (){},
				),

			],
		)
	);


	_buildTextSpanBold(String text) => TextSpan(
		text: text,
		style: TextStyle(
			color: Colors.black,
			fontWeight: FontWeight.bold
		)
	);



	_buildTextSpan(String text) => TextSpan(
		text: text,
		style: TextStyle(
			color: Colors.black,
		)
	);



	
}