import 'package:flutter/material.dart';
import 'package:gemini_gpt/myHomePage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  'Assistente Virtual',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Usando este software você pode fazer questões e artigos, tendo sempre contigo um assistente virtual',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                  ),
                )
              ],
            ),
            const SizedBox(height: 32,),
            Image.asset('assets/onboarding.png'),
            const SizedBox(height: 32,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()),
                          (route) => false
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32)
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Continuar'),
                    SizedBox(height: 8,),
                    Icon(Icons.arrow_forward)
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
