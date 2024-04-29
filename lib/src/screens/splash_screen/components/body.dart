import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 14,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF464646),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Material(
            child: Image.asset('assets/images/splash_img.png'),
            color: Colors.transparent,
          ),
          
          Align(
alignment: Alignment.center,
            child: Text(
              'Smart Home Automation',
              style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
            ),
          ),
          Text(
            'Smart Home Automation\nA smart way to control apliances',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Color.fromARGB(255, 189, 189, 189),
                  
                ),
          ),
          ElevatedButton(
            onPressed: () {
	            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
            child: Text(
              'Get Started',
              style: Theme.of(context).textTheme.headline2,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(70),
                vertical: getProportionateScreenHeight(15),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // <-- Radius
              ),
            ),
          )
        ],
      ),
    );
  }
}
