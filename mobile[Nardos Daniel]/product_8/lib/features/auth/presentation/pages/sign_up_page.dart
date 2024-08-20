import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../product/presentation/widgets/custom_buttom.dart';
import '../widget/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.indigoAccent.shade400,
            )),
        actions: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'ECOM',
                  style: GoogleFonts.caveatBrush(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
                const Text('Create your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                
                const TextFieldWidget(hintText: 'ex: jon smith', obscureText: 'Name'),
                const TextFieldWidget(
                    hintText: 'ex: jon.smith@email.com', obscureText: 'Email'),
                const TextFieldWidget(hintText: '**********', obscureText: 'Password'),
                const TextFieldWidget(
                    hintText: '**********', obscureText: 'Confirm Password'),
               
              Row(children: [Transform.scale(
                            scale: 0.8,
                            child: Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                side:  BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 1),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                          ),
                          const Text('I understood the '),
                
                          const Text('term & policy.' , style: TextStyle(color:  Color.fromRGBO(63, 81, 243, 1), fontWeight: FontWeight.w200),) ,
                            ],),
                            CustomButton(
                       
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        borderColor: Theme.of(context).primaryColor,
                        buttonWidth: double.maxFinite,
                        buttonHeight: 45,
                        child:  const Text(
                                'SIGN UP',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                        onPressed: () {
                        },
                      ),
        
                      const SizedBox(
                        height: 40,
                      ),
        
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Have an account?' , style: TextStyle(color: Color.fromRGBO(111, 111, 111, 15)),),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signin');
                            },
                            child: const Text('SIGN IN' , style: TextStyle(color:  Color.fromRGBO(63, 81, 243, 1), fontWeight: FontWeight.w200),),
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
