import 'package:flutter/material.dart';

// pages
import 'package:flutter_tut_ui/pages/easybee/ez_login_form.dart';

// components
import '../../components/logo_stack.dart';

class EzLoginPageUI extends StatefulWidget {
  @override
  _EzLoginPageUIState createState() => _EzLoginPageUIState();
}

class _EzLoginPageUIState extends State<EzLoginPageUI> {
	//	main content
	Widget _buildLoginUIContent () {
		return Center(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					// Logo Stack,
					LogoStack(),
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
								child: Text('Flutter UIs',
									style: TextStyle(
										fontFamily: 'Monoton',
										fontSize: 30.0
									),
								),
							)
						],
					),
					Row(
						children: <Widget>[
							Expanded(
								child: Padding(
									padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
									child: GestureDetector(
										onTap: () {
											Navigator.push(context, MaterialPageRoute(
												builder: (context) => LoginPage(),
											),);
										},
										child: Container(
											alignment: Alignment.center,
											height: 60.0,
											decoration: BoxDecoration(
												color: Color(0xFF18D191),
												borderRadius: BorderRadius.circular(10.0)
											),
											child: Text(
												'Sign In With Email',
												style: TextStyle(
													fontSize: 14.0,
													color: Colors.white,
													fontFamily: 'PTSerifCaption'
												),
											),
										),
									)
								)
							)
						],
					),
					
					Row(
						children: <Widget>[
							Expanded(
								child: Padding(
									padding: EdgeInsets.only(left: 20.0, right: 5.0, top: 10.0),
									child: Container(
										alignment: Alignment.center,
										height: 60.0,
										decoration: BoxDecoration(
											color: Color(0xFF4364A1),
											borderRadius: BorderRadius.circular(10.0)
										),
										child: Text(
											'Sign In With Facebook',
											style: TextStyle(
												fontSize: 14.0,
												color: Colors.white,
												fontFamily: 'PTSerifCaption'
											),
										),
									),
								)
							),
							Expanded(
								child: Padding(
									padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
									child: Container(
										alignment: Alignment.center,
										height: 60.0,
										decoration: BoxDecoration(
											color: Color(0xFFDF513B),
											borderRadius: BorderRadius.circular(10.0)
										),
										child: Text(
											'Sign In With Google +',
											style: TextStyle(
												fontSize: 14.0,
												color: Colors.white,
												fontFamily: 'PTSerifCaption'
											),
										),
									),
								)
							),
						],
					),
				],
			),
		);
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
//			appBar: AppBar(
//				title: Text(widget.title),
//			),
			body: _buildLoginUIContent()
		);
	}
}

