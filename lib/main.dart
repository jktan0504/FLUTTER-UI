import 'package:flutter/material.dart';

// pages
import 'package:flutter_tut_ui/pages/easybee/ez_login_main.dart';

// components
import './components/logo_stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: ThemeData(
				primarySwatch: Colors.pink,
				fontFamily: 'Roboto'
			),
			home: MyHomePage(title: 'Flutter Demo Home Page'),
		);
	}
}

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key, this.title}) : super(key: key);
	final String title;
	
	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	
	Widget _getSingleMenuItemWidget (BuildContext context) {
		return Container(
			child: Text('A'),
		);
	}

	Widget _buildMainContent () {
		return Container(
			padding: EdgeInsets.all(8.0),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Container(
						child: Text('Quick Menu', style: TextStyle(
							fontFamily: 'Pacifico',
						)),
					),
					Expanded(
						child: SingleChildScrollView(
							child: Column(
								children: <Widget>[
									
									Padding(
										padding: EdgeInsets.symmetric(vertical: 10.0),
										child: Row(
											children: <Widget>[
												Expanded(
													child: RaisedButton(
														onPressed: () {
															Navigator.push(context, MaterialPageRoute(
																builder: (context) => EzLoginPageUI(),
															),);
														},
														color: Color(0xFF18D191),
														child: Padding(padding: EdgeInsets.all(20.0),
															child: Text(
																'Ez Bee UI',
																style: TextStyle(fontSize: 20, color: Colors.white,)
															),
														)
													),
												)
											],
										)
									)
									
								],
							),
						)
					)
				],
			),
		);
	}

	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(
					"Flutter UI",
					style: TextStyle(
						
						fontFamily: 'Monoton'
					),
				),
			),
			body: _buildMainContent()
		);
	}
}
