import 'package:flutter/material.dart';
import 'data.dart';

class HomePage extends StatefulWidget{
	@override
	State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
	@override
	Widget build(BuildContext context) => Scaffold(

		backgroundColor: Colors.white,

		body: Column(
			children: <Widget>[

				SizedBox(height: 25.0),

				//Banner
				Container(
					height: 100.0,
					width: double.infinity,
					child: Image.asset(
						"assets/images/banner.png",
						fit: BoxFit.cover,
					)	
				),

				Container(
					alignment: Alignment.center,
					margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
					child: Text(
						"Booking Services",
						style: TextStyle(
							fontSize: 20.0,
							fontWeight: FontWeight.bold
						),
					),
				),

				Expanded(
					child: Row(
						children: <Widget>[

							buildContainer("Ambulance\nBooking", "ambulance"),

							buildContainer("Doctor\nBooking", "doctor"),

						],
					),
				),

				Container(
					alignment: Alignment.center,
					margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
					child: Text(
						"Homecare Services",
						style: TextStyle(
							fontSize: 20.0,
							fontWeight: FontWeight.bold
						),
					),
				),

				Expanded(
					child: Row(
						children: <Widget>[

							buildContainer("Diagonostic\nat Home", "diagonostic"),

							buildContainer("Nurse\nat Home", "nurse"),

							buildContainer("Doctor\nat Home", "doctor_home"),

						],
					),
				),

				SizedBox(height: 20.0),

			],
		)

	);

	Expanded buildContainer(String serviceName, String iconName) => Expanded(
			child: GestureDetector(
				child: Card(
				// child: Container(
				// 	decoration: BoxDecoration(
				// 			color: Colors.white,
				// 			borderRadius: BorderRadius.circular(10.0),
				// 			boxShadow: [
				// 				BoxShadow(
				// 					color: Colors.black,
				// 					blurRadius: 5.0,
				// 				)
				// 			]
				// 	),
			  	// 	margin: EdgeInsets.only(left: 10.0, right: 10.0),

					elevation: 10.0,
					// margin: EdgeInsets.only(left: 10.0, right: 10.0),
					shape: RoundedRectangleBorder(
						borderRadius: BorderRadius.circular(15.0)		
					),



					
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							
							Image.asset(
								"assets/icons/$iconName.png",
								width: 40.0,
								height: 40.0,

							),
							
							SizedBox(height: 15.0),

							Text(serviceName)


						],
					),
			  	),
				// onTap: () => Navigator.pushNamed(context, "/DoctorBooking"),
				onTap: () => showDialog(
					context: context,
					builder: (_) => SimpleDialog(
						contentPadding: EdgeInsets.zero,
						shape: RoundedRectangleBorder(
							borderRadius: BorderRadius.circular(5.0)		
						),
						elevation: 10.0,
						children: <Widget>[
							_buildDialogue()
						],
					),
					barrierDismissible: false
				),
			),
	);

	_buildDialogue() => Container(
		padding: EdgeInsets.all(20.0),
		child: Column(
			children: <Widget>[
				
				Text(
					'Categories',
					style: TextStyle(
						color: Colors.grey,
						fontSize: 25.0,
						fontWeight: FontWeight.bold
					),
				),

				SizedBox(height: 10.0),
				
				Divider(
					color: Colors.purple,
				),
				
				SizedBox(height: 10.0),
			
			

				// Expanded(
				// 	child: Scrollbar(
				// 		child: ListView.builder(
				// 			// padding: EdgeInsets.all(50.0),
				// 			itemCount: category.length,
				// 			itemBuilder: (context, idx) => Card(
				// 				// elevation: 5.0,
				// 				child: ListTile(
				// 					title: Text(category[idx], textAlign: TextAlign.center,),
				// 				)
				// 			),
				// 		),
				// 	),
				// ),


				Container(
					height: 200.0,
					child: Scrollbar(
						child: ListView.builder(
					  		itemCount: category.length,
					  		itemBuilder: (context, idx) => Card(
					  			elevation: 5.0,
					  			child: ListTile(
					  				title: Text(category[idx], textAlign: TextAlign.center,),
					  				onTap: () => Navigator.of(context).pushReplacementNamed("/DoctorBooking")
					  			)
					  		),
					  	),
					),
				),

				SizedBox(height: 30.0),
				
				RaisedButton(
					child: Text("Close"),
					onPressed: () => Navigator.of(context).pop()
				)


			],
		)
	);

}