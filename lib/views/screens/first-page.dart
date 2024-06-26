import 'package:flutter/material.dart';

import '../../utils/appTheme.dart';
import '../../utils/navigation_service.dart';
import '../widgets/button.dart';
import 'login/login_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height(context),
          decoration: BoxDecoration(color: AppTheme.color.primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height(context) * 0.55,
                width: width(context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppTheme.asset.car,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 43,
                                color: AppTheme.color.whithColor,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: 'Bienvenu sur'),
                              TextSpan(
                                text: ' KUB !',
                                style: TextStyle(
                                  color: AppTheme.color.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: AppTheme.color.whithColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      'Rejoignez-nous et découvrez une nouvelle manière de vous déplacer en toute simplicité et sécurité. ',
                                  style: TextStyle(color: Colors.grey)),
                              TextSpan(
                                text: 'Ça vous intéresse? alors:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  CButton(
                    title: 'Inscrivez-vous',
                    titleColor: AppTheme.color.primaryColor,
                    sizeTitle: 14,
                    width: width(context) - 10,
                    color: AppTheme.color.secondaryColor,
                    onPressed: () {
                      print('######################################');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CButton(
                    title: 'Connectez-vous',
                    sizeTitle: 14,
                    width: width(context) - 10,
                    color: Colors.transparent,
                  
                    onPressed: () {
                      routeAnimation(context, LoginPage());
                      print('######################################');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
