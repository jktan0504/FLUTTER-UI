import 'package:flutter/material.dart';

class EzHomePage extends StatefulWidget {
  @override
  _EzHomePageState createState() => _EzHomePageState();
}

class _EzHomePageState extends State<EzHomePage> {
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
	    body: _MainEzHomeContent(),
    );
  }
}

class _MainEzHomeContent extends StatelessWidget {
	

    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return Column(
	        children: <Widget>[
		        Row(
			        children: <Widget>[
				        Padding(
					        padding: EdgeInsets.symmetric(horizontal: 10.0),
					        child: Container(
						        alignment: Alignment.centerLeft,
						        child: Text("Explore",
							        style: TextStyle(
								        fontFamily: 'Pacifico',
								        fontSize: 30.0,
							        ),
							        textAlign: TextAlign.left,
						        ),
					        ),
				        )
			        ],
		        ),
		        Expanded(
			        child: ListView(
				        children: <Widget>[
					        Padding(
						        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
						        child:  Container(
							        child: Column(
								        children: <Widget>[
									        SizedBox(
										        height: 10.0,
									        ),
									        Row(
										        children: <Widget>[
											        Expanded(
												        child: Padding(
													        padding: EdgeInsets.only(right: 5.0),
													        child: Container(
														        height: 100.0,
														        decoration: BoxDecoration(
															        borderRadius: BorderRadius.circular(5.0),
															        color: Color(0xFFFD7384)
														        ),
														        child: Column(
															        mainAxisAlignment: MainAxisAlignment.center,
															        children: <Widget>[
																        Icon(Icons.drive_eta,color: Colors.white,),
																        Text(
																	        'Motor',
																	        style: TextStyle(
																		        color: Colors.white
																	        ),
																        )
															        ],
														        ),
													        ),
												        )
											        ),
											        Expanded(
												        child: Container(
													        height: 100.0,
													        child: Column(
														        children: <Widget>[
															        Expanded(
																        child: Padding(
																	        padding: EdgeInsets.only(bottom: 2.5, right: 2.5),
																	        child: Container(
																		        decoration: BoxDecoration(
																			        color: Color(0xFF28D093),
																			        borderRadius: BorderRadius.circular(5.0)
																		        ),
																		        child: Row(
																			        mainAxisAlignment: MainAxisAlignment.center,
																			        children: <Widget>[
																				        Padding(
																					        padding: EdgeInsets.only(right: 8.0),
																					        child: Icon(Icons.local_offer, color: Colors.white,),
																				        ),
																				        Text('Classified', style: TextStyle(
																					        color: Colors.white
																				        ),)
																			        ],
																		        ),
																	        ),
																        )
															        ),
															        Expanded(
																        child: Padding(
																	        padding: EdgeInsets.only(top: 2.5, right: 2.5),
																	        child: Container(
																		        decoration: BoxDecoration(
																			        color: Color(0xFFFC784D),
																			        borderRadius: BorderRadius.circular(5.0)
																		        ),
																		        child: Row(
																			        mainAxisAlignment: MainAxisAlignment.center,
																			        children: <Widget>[
																				        Padding(
																					        padding: EdgeInsets.only(right: 8.0),
																					        child: Icon(Icons.beenhere, color: Colors.white,),
																				        ),
																				        Text('Services', style: TextStyle(
																					        color: Colors.white
																				        ),)
																			        ],
																		        ),
																	        ),
																        )
															        ),
														        ],
													        ),
												
												        )
											        ),
											        Expanded(
												        child: Container(
													        height: 100.0,
													        child: Column(
														        children: <Widget>[
															        Expanded(
																        child: Padding(
																	        padding: EdgeInsets.only(bottom: 2.5, left: 2.5),
																	        child: Container(
																		        decoration: BoxDecoration(
																			        color: Color(0XFF63CEDB),
																			        borderRadius: BorderRadius.circular(5.0)
																		        ),
																		        child: Row(
																			        mainAxisAlignment: MainAxisAlignment.center,
																			        children: <Widget>[
																				        Padding(
																					        padding: EdgeInsets.only(right: 8.0),
																					        child: Icon(Icons.account_balance, color: Colors.white,),
																				        ),
																				        Text('Properties', style: TextStyle(
																					        color: Colors.white
																				        ),)
																			        ],
																		        ),
																	        ),
																        )
															        ),
															        Expanded(
																        child: Padding(
																	        padding: EdgeInsets.only(top: 2.5, left: 2.5),
																	        child: Container(
																		        decoration: BoxDecoration(
																			        color: Color(0xFFF1B069),
																			        borderRadius: BorderRadius.circular(5.0)
																		        ),
																		        child: Row(
																			        mainAxisAlignment: MainAxisAlignment.center,
																			        children: <Widget>[
																				        Padding(
																					        padding: EdgeInsets.only(right: 8.0),
																					        child: Icon(Icons.art_track, color: Colors.white,),
																				        ),
																				        Text('Jobs', style: TextStyle(
																					        color: Colors.white
																				        ),)
																			        ],
																		        ),
																	        ),
																        )
															        ),
														        ],
													        ),
												
												        )
											        ),
										        ],
									        ),
								        ],
							        ),
						        ),
					        ),
				        ],
			        ),
		        ),
	        ],
        );
    }
	
}
