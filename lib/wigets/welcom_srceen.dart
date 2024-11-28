
import 'package:flutter/material.dart';


import '../custom_scaffold/custom_scaffold.dart';
import '../custom_scaffold/welcom_buttun.dart';
import '../theme/theme.dart';
import 'Signin_screen.dart';
import 'Signup_screen.dart';


class WelcomSrceen extends StatelessWidget {
  const WelcomSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 7,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child:RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'Welcome Back!\n',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text:
                              '\nEnter personal details to your employee account',
                              style: TextStyle(
                                fontSize: 20,
                              )
                          )
                        ]
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomButtun(
                      buttonText: 'sign in',
                      onTap: SigninScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomButtun(
                      buttonText: 'sign up',
                      onTap: const SignupScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
