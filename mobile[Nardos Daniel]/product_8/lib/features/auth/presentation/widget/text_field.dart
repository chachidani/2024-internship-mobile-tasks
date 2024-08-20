import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  
  final String obscureText;
  
  const TextFieldWidget({super.key , required this.hintText , required  this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      obscureText,
                      style:
                          const TextStyle(color: Color.fromRGBO(111, 111, 111, 15)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      
                      decoration: InputDecoration(
                        label: Text(hintText,
                            style: const TextStyle(
                                color: Color.fromRGBO(111, 111, 111, 15))),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius:  BorderRadius.circular(10)
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(243, 243, 243, 0.7),
                      ),
                    ),
                  ],
                ),
              );
  }
}