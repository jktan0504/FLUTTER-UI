import 'package:flutter/material.dart';

// components
import '../../components/black_clipper.dart';

class EzProfilePage extends StatefulWidget {
  @override
  _EzProfilePageState createState() => _EzProfilePageState();
}

class _EzProfilePageState extends State<EzProfilePage> {
	
	final String ironMan_url = "https://i.etsystatic.com/iusa/02352d/59954157/iusa_400x400.59954157_515y.jpg?version=0";
	
	Widget _getMainProfileContent () {
		return Container(
			child: Stack(
				children: <Widget>[
					ClipPath(
						child: Container(
							color: Colors.black.withOpacity(0.8),
						),
						clipper: BlackClipper(),
					),
					Positioned(
						width: 350.0,
						top: MediaQuery.of(context).size.height / 5,
						left: MediaQuery.of(context).size.width / 12,
						child: Column(
							children: <Widget>[
								//	circular profile img
								Container(
									width: 150.0,
									height: 150.0,
									
									decoration: BoxDecoration(
										color: Colors.redAccent,
										image: DecorationImage(
											image: NetworkImage(ironMan_url),
											fit: BoxFit.cover
										),
										borderRadius: BorderRadius.circular(75.0),
										boxShadow: [
											BoxShadow(
												color: Colors.black,
												blurRadius: 7.0,
												
											)
										]
									),
								),
								
								SizedBox(
									height: 10.0,
								),
								Text(
									'Ironboy',
									style: TextStyle(
										fontSize: 25.0,
										color: Colors.black,
										fontFamily: 'PTSerifCaption',
										fontWeight: FontWeight.bold,
									),
								),
								SizedBox(
									height: 10.0,
								),
								Text(
									'Active',
									style: TextStyle(
										color: Colors.blueAccent,
										fontSize: 18.0,
									),
								),
								SizedBox(height: 10.0,),
								Container(
									height: 50.0,
									width: 150.0,
									child: Material(
										borderRadius: BorderRadius.circular(20.0),
										shadowColor: Colors.greenAccent,
										elevation: 7.0,
										child: GestureDetector(
											onTap: () {
												Scaffold
													.of(context)
													.showSnackBar(SnackBar(content: Text('Processing Data ...')));
											},
											child: Center(
												child: Padding(
													padding: EdgeInsets.all(5.0),
													child: Text(
														'Edit Profile',
														style: TextStyle(
															color: Colors.greenAccent,
															fontSize: 18.0,
															fontWeight: FontWeight.bold,
														)
													),
												),
											),
										),
									),
								),
							],
						),
					)
				],
			),
		);
	}
	
    @override
    Widget build(BuildContext context) {
        return Scaffold(
	        body: _getMainProfileContent(),
        );
    }
}


