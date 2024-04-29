import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';
import 'package:domus/src/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
	const Body({Key? key}) : super(key: key);

	@override
  Widget build(BuildContext context) {

    return Column(
	        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
       
	          const Padding(
	            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
	            child: Text('Register',style: TextStyle(fontSize: 30),),
	          ),
            const Padding(
	            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
	            child: Text('Fill all details to create Account',style: TextStyle(fontSize: 18),),
	          ),
            


	          Padding(
		          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
		          child: TextField(

			          decoration: InputDecoration(
				          contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
				          border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0),),
				          hintText: 'First Name',
				          prefixIcon: const Icon(Icons.person, color: Colors.black,)
			          ),),
	          ),

	          SizedBox(height: getProportionateScreenHeight(15)),

              Padding(
		          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
		          child: TextField(

			          decoration: InputDecoration(
				          contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
				          border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0),),
				          hintText: 'Last Name',
				          prefixIcon: const Icon(Icons.person, color: Colors.black,)
			          ),),
	          ),

	          SizedBox(height: getProportionateScreenHeight(15)),
              Padding(
		          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
		          child: TextField(

			          decoration: InputDecoration(
				          contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
				          border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0),),
				          hintText: 'Contact No',
				          prefixIcon: const Icon(Icons.phone, color: Colors.black,)
			          ),),
	          ),

	          SizedBox(height: getProportionateScreenHeight(15)),
             
             
             
            Padding(
		          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
		          child: TextField(

			          decoration: InputDecoration(
				          contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
				          border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0),),
				          hintText: 'Email',
				          prefixIcon: const Icon(Icons.email, color: Colors.black,)
			          ),),
	          ),


	          SizedBox(height: getProportionateScreenHeight(15)),
	          Padding(
		          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
		          child: TextField(

			          decoration: InputDecoration(
				          contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
				          border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0),),
				          hintText: 'Password',
				          prefixIcon: const Icon(Icons.lock, color: Colors.black,)
			          ),),
	          ),
	          SizedBox(height: getProportionateScreenHeight(20)),
	          Padding(
	            padding: const EdgeInsets.only(left: 20.0, right: 20),
	            child: GestureDetector(
		            onTap: (){
			            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

		            },
	              child: Container(
		          width: double.infinity,
		          padding: const EdgeInsets.all(16.0),
		          decoration:BoxDecoration(
			          color: const Color(0xFF464646),
			          borderRadius:BorderRadius.circular(70.0), ),
		          child: const Text('Get Started', style: TextStyle(color: Colors.white),),alignment: Alignment.center,),
	            ),
	          ),
	          SizedBox(height: getProportionateScreenHeight(10)),

	           Center(child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Already have Account? Login')))




      ],
    );
  }
}
