import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget{

const MyAPP({super.key});
  @override
  Widget build(BuildContext context){
    
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
  
  

}