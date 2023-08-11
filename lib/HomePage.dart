import 'package:clevertap_plugin/clevertap_plugin.dart';
import 'package:clevertapdemo/Clevertap/CleverTap_UserEvents_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _ident = new TextEditingController();
  TextEditingController _numbe = new TextEditingController();

  TextEditingController _email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Column(
        children: [
          Text("Identitty"),
          TextField(
            controller: _ident,
          ),
          Text("number"),
          TextField(
            controller: _numbe,
          ),
          Text("email"),
          TextField(
            controller: _email,
          ),
          ElevatedButton(
              onPressed: () async {
                print(
                  " det ${_ident.text} ${_numbe.text} ${_email.text}",
                );
                var stuff = ["bags", "shoes"];
                var profile = {
                  'Name': 'Captain America1',
                  'Identity': _ident.text,
                  'Email': _email.text,
                  'Phone': _numbe.text,
                  'stuff': stuff,
                  'msg_whatsapp': true,
                };
                CleverTapPlugin.onUserLogin(profile);
                CleverTapPlugin.getCleverTapID()
                    .then((value) => print("is is ${value}"));
              },
              child: Text("Create profile")),
          ElevatedButton(
              onPressed: () async {
                var evtData = {
                  "Collection": "Collection",
                  "Name": "MF",
                  "Scheme": "Nippon"
                };
                ClevertapUserEventFunctions.CustomerecordEvent(
                    "myEvebt", evtData);
              },
              child: Text("Add event")),
        ],
      ),
    );
  }
}
