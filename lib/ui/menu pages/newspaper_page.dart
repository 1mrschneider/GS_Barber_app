import 'package:flutter/material.dart';
import 'package:gsbarber_app/services/auth_provider_service.dart';

class NewsPaperPage extends StatefulWidget {
  @override
  _NewsPaperPageState createState() => _NewsPaperPageState();
}

class _NewsPaperPageState extends State<NewsPaperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (AuthProviderService.instance.user == null)
                  Text(
                    "Olá ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  )
                else
                  Text(
                    "Olá, ${AuthProviderService.instance.user.displayName}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
