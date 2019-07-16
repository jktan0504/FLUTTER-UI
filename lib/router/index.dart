import 'package:flutter/material.dart';
import './route_names.dart';

// Pages
import '../main.dart';
import '../pages/undefined/underfined_view.dart';
import '../pages/easybee/ez_login_main.dart';
import '../pages/easybee/ez_login_form.dart';
import '../pages/easybee/ez_home.dart';
import '../pages/easybee/ez_profile.dart';

// Route Define Here
Route<dynamic> generateRoute (RouteSettings settings) {
	switch (settings.name) {
		case HOME_MAIN_ROUTE: // home main route
			return MaterialPageRoute(builder: (context) => MyHomePage());
		case EZ_LOGIN_MAIN_ROUTE:
			return MaterialPageRoute(builder: (context) => EzLoginPageUI());
		case EZ_LOGIN_FORM_ROUTE:
			return MaterialPageRoute(builder: (context) => LoginPage());
		case EZ_HOME_ROUTE:
			return MaterialPageRoute(builder: (context) => EzHomePage());
			
		case EZ_PROFILE_MAIN_ROUTE:
			return MaterialPageRoute(builder: (context) => EzProfilePage());
		default:
			return MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name,));
	}
	
}