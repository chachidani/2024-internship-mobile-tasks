import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../product/presentation/widgets/custom_buttom.dart';
import '../widget/text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Card(
                  shadowColor: Colors.black,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color.fromRGBO(63, 81, 243, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, right: 13, left: 13),
                    child: Text(
                      'ECOM',
                      style: GoogleFonts.caveatBrush(
                        color: const Color.fromRGBO(63, 81, 243, 1),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text('Sign into your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
               const TextFieldWidget(hintText: 'ex: jon.smith@email.com', obscureText: 'Email'),
                const TextFieldWidget(hintText: '*********', obscureText: 'Password'),
                const SizedBox(
                  height: 30,
                ),
        
                CustomButton(
                       
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        borderColor: Theme.of(context).primaryColor,
                        buttonWidth: double.maxFinite,
                        buttonHeight: 45,
                        child:  const Text(
                                'SIGN IN',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                        onPressed: () {
                        },
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?' , style: TextStyle(color: Color.fromRGBO(111, 111, 111, 15)),),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: const Text('SIGN UP' , style: TextStyle(color:  Color.fromRGBO(63, 81, 243, 1), fontWeight: FontWeight.w200),),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
