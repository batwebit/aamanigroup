import 'package:flutter/material.dart';
class ThankYouPage  extends StatefulWidget {
  const ThankYouPage({super.key});
  @override
  State<ThankYouPage> createState() => _ThankYouPageState();
}
class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank You For Submit Your Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
            SizedBox(height: 10,),
            Text("Aamani Group",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
            SizedBox(height: 50,),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.network(
                "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=434,fit=crop,q=95/Y4LODR9ED1S2NLX4/aamani_group_logo-removebg-preview-Aq2e3QQxG6HRznjg.png",
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
