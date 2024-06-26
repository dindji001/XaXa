import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kub_app/utils/appTheme.dart';
import 'package:kub_app/views/widgets/textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 450,
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
          Padding(
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
                          text: 'Creer un compte KUB ',
                          style: TextStyle(
                              color: AppTheme.color.primaryColor,
                              fontSize: 24)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                filled: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: AppTheme.color.backgroundTextFieldBordu,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppTheme.color.backgroundTextFieldBordu,
                ),
                hintText: "Nouveau mot de passe",
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
