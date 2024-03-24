import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}); 
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    result=double.parse(textEditingController.text)*279.33;
    setState(() {

    });
  }
  
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 48, 48, 1),
      appBar: AppBar(
        title: const Text('Currency Converter',
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(50, 48, 48, 1),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               'PKR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in PKR",
                  hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromRGBO(0 , 0, 0, 1),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: convert,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 15, 4, 4)),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  minimumSize: MaterialStatePropertyAll( Size(double.infinity, 50)),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(color: Colors.white), // Used const here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
