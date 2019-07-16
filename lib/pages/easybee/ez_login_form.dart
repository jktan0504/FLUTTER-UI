import 'package:flutter/material.dart';

// components
import '../../components/logo_stack.dart';
// pages
import './ez_home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	
	Widget _buildLoginPageContent() {
		return Container(
			width: double.infinity,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				children: <Widget>[
					LogoStack(),
					
					// Logo Text
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
								child: Text('Login Form',
									style: TextStyle(
										fontFamily: 'Monoton',
										fontSize: 30.0
									),
								),
							)
						],
					),
					
					// username
					Padding(
						padding: EdgeInsets.symmetric(horizontal: 20.0),
						child: TextField(
							decoration: InputDecoration(
								labelText: 'Email or Username'
							),
						),
					),
					
					SizedBox(height: 15.0,),
					
					// password
					Padding(
						padding: EdgeInsets.symmetric(horizontal: 20.0),
						child: TextField(
							obscureText: true,
							decoration: InputDecoration(
								labelText: 'Password'
							),
						),
					),
					
					// forget password button
					Row(
						children: <Widget>[
							Expanded(
								child: Padding(
									padding: EdgeInsets.only(left: 20.0, right: 5.0, top: 0.0),
									child: GestureDetector(
										onTap: () {
											Navigator.push(context, MaterialPageRoute(
												builder: (context) => EzHomePage(),
											),);
										},
										child: Container(
											alignment: Alignment.centerLeft,
											height: 60.0,
											child: Text(
												'Forget password ?',
												style: TextStyle(
													fontSize: 12.0,
													color: Color(0xFF18D191),
													fontFamily: 'PTSerifCaption'
												),
											),
										),
									)
								)
							),
						],
					),
					
					Row(
						children: <Widget>[
							Expanded(
								child: Padding(
									padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0),
									child: GestureDetector(
										onTap: () {
											Navigator.push(context, MaterialPageRoute(
												builder: (context) => EzHomePage(),
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
												'Login',
												style: TextStyle(
													fontSize: 14.0,
													color: Colors.white,
													fontFamily: 'PTSerifCaption'
												),
											),
										),
									)
								)
							),
						],
					),
					
					Expanded(
						child: Padding(
							padding: EdgeInsets.only(left: 20, right: 20, top:10),
							child: Container(
								alignment: Alignment.center,
								height: 60.0,
								child: Text(
									'Create New Account',
									style: TextStyle(
										color: Color(0xFF18D191),
										fontSize: 12.0
									),
								),
							),
						),
					)
					
				],
			),
		);
	}
	
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    backgroundColor: Colors.transparent,
		    elevation: 0.0,
		    iconTheme: IconThemeData(
			    color: Color(0xFF18D191),
		    ),
	    ),
	    body: _buildLoginPageContent(),
    );
  }
}
