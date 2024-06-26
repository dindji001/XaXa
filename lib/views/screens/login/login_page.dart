import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kub_app/utils/appTheme.dart';
import 'package:kub_app/views/widgets/button.dart';
import 'package:kub_app/views/widgets/textField.dart';

import '../../../utils/navigation_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    color: AppTheme.color.primaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(400),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppTheme.asset.car,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: AppTheme.color.whithColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                            text: 'Connectez vous a votre compte KUB ',
                            style: TextStyle(
                                color: AppTheme.color.primaryColor,
                                fontSize: 24)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Saisissez un numéro de telephone ou une...",
                    hintStyle: TextStyle(
                      color: Color(0XffD9D9D9),
                      fontSize: 14,
                    ),
                    fillColor: AppTheme.color.backgroundTextField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CButton(title: 'Connexion', onPressed: () {}),
                 SizedBox(
                      height: 50,
                    ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 2,
                          width: (width(context) / 2) - 30,
                          decoration: BoxDecoration(
                            color: AppTheme.color.backgroundTextField,
                          ),
                        ),
                        Text(
                          "Ou",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: AppTheme.color.backgroundTextField,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: (width(context) / 2) - 30,
                          decoration: BoxDecoration(
                            color: AppTheme.color.backgroundTextField,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: AppTheme.color.primaryColor,
                              width: 2,
                            ),
                            color: AppTheme.color.backgroundTextField2,
                          ),
                          child: Center(
                            child: Image.asset(
                              AppTheme.asset.google,
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: AppTheme.color.primaryColor,
                              width: 2,
                            ),
                            color: AppTheme.color.backgroundTextField2,
                          ),
                          child: Center(
                            child: Image.asset(
                              AppTheme.asset.apple,
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: AppTheme.color.primaryColor,
                              width: 2,
                            ),
                            color: AppTheme.color.backgroundTextField2,
                          ),
                          child: Center(
                            child: Image.asset(
                              AppTheme.asset.facebook,
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        )
                      ],
                    ), SizedBox(height: 30,),

                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppTheme
                                .color.textColor), // Style du texte par défaut
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Vous n\'avez pas de compte? ',
                            style: TextStyle(color: AppTheme.color.textColor),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Rediriger l'utilisateur vers la page LoginPage
                                route(
                                  context,
                                  LoginPage(),
                                ); // Assurez-vous d'avoir la gestion de la navigation avec GetX
                              },
                            text: 'Inscrivez-vous',
                            style:
                                TextStyle(color: AppTheme.color.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
