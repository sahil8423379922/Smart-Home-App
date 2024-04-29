import 'package:domus/config/size_config.dart';
import 'package:domus/provider/base_view.dart';
import 'package:domus/src/screens/edit_profile/edit_profile.dart';
import 'package:domus/src/screens/favourites_screen/favourites_screen.dart';
import 'package:domus/src/screens/home_screen/components/dark_container.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/widgets/custom_bottom_nav_bar.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/body.dart';
import 'package:domus/src/screens/menu_page/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView<HomeScreenViewModel>(
        onModelReady: (model) => {
              model.generateRandomNumber(),
            },
        builder: (context, model, child) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 247, 189, 0),
                toolbarHeight: getProportionateScreenHeight(60),
                elevation: 0,
                iconTheme: const IconThemeData(color: Colors.black),
                title: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(
                      3,
                    ),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, Sahil',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(45),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xffdadada),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(45, 45)),
                        ),

                        child: IconButton(
                          splashRadius: 25,
                          icon: const Icon(
                            FontAwesomeIcons.solidUser,
                            color: Color.fromARGB(255, 31, 31, 30),
                          ),
                          onPressed: () {
                            // Navigator.of(context).pushNamed(EditProfile.routeName);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile(),));
                          },

                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xffdadada),
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(45, 45)),
                        ),

                        child: IconButton(
                          splashRadius: 25,
                          icon: const Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.grey,
                            size: 30,
                          ),
                          onPressed: () {
                            // Navigator.of(context).pushNamed(EditProfile.routeName);
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                Favourites(
                                  model:model,
                                ),));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.white.withOpacity(0.3),
                      indicatorColor: const Color(0xFF464646),
                      tabs: [
                        Tab(
                          child: Text(
                            'Living Room',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Dining',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Kitchen',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ]),
                  preferredSize: Size.fromHeight(
                    getProportionateScreenHeight(
                      35,
                    ),
                  ),
                ),
              ),
              drawer: SizedBox(
                 width: getProportionateScreenWidth(270),
                  child: const Menu()),
              body: TabBarView(
                children: <Widget>[
                  Body(
                    model: model,
                  ),

                 Container(
                  color: Colors.grey[100],
                 
                   child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                     children:[ 
                      SizedBox(height: 20,),
                      Row(
                                   children: [
                                     Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                        child: DarkContainer(
                          itsOn: model.isLightOn,
                          switchButton: model.lightSwitch,
                          onTap: () {
                            Navigator.of(context).pushNamed(SmartLight.routeName);
                          },
                          iconAsset: 'assets/icons/svg/light.svg',
                          device: 'Lightening',
                          deviceCount: '4 lamps',
                          switchFav: model.lightFav,
                          isFav: model.isLightFav,
                        ),
                      ),
                                     ),
                                     Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                        child: DarkContainer(
                          itsOn: model.isACON,
                          switchButton: model.acSwitch,
                          onTap: () {
                            Navigator.of(context).pushNamed(SmartAC.routeName);
                          },
                          iconAsset: 'assets/icons/svg/ac.svg',
                          device: 'AC',
                          deviceCount: '4 devices',
                          switchFav: model.acFav,
                          isFav: model.isACFav,
                        ),
                      ),
                                     ),
                                   
                                   
                                   ],
                                 ),
                     ]
                   ),
                 ),
            
                 
                  
                  const Center(
                    child: Text('under construction'),
                  ),
                ],
              ),
            
            ),
          );
        });
  }
}
