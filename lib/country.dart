import 'package:flutter/material.dart';
import 'package:suiz/signup.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    List<String> _countryes = <String>['', 'EGYBT', 'SAUDIA', 'EMARAT', ];
    String _country = '';
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black.withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
           Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/suiz.jpg',
                width: double.infinity,
                height: 400,
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 200.0, 20.0, 20.0),
              child: Center(
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                      child: Text(
                        'IT IS GET STARTED ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                      child: Text(
                        'CREATE AN ACOUNT TO FUTURE ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 50.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white.withOpacity(1),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: FormField(
                            builder: (FormFieldState state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                  icon: const Icon(Icons.location_on,
                                  size: 40,
                                  color: Color(0xFFFF6D00),
                                  
                                  ),
                                  labelText: 'COUNTRY',
                                ),
                                isEmpty: _country == '',
                                child: new DropdownButtonHideUnderline(
                                  child: new DropdownButton(
                                    value: _country,
                                    isDense: true,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        // newContact.favoriteColor = newValue;
                                        _country = newValue;
                                        state.didChange(newValue);
                                      });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                    },
                                    items: _countryes.map((String value) {
                                      return new DropdownMenuItem(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
