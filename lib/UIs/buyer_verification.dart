import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuyerVerification extends StatefulWidget {
  const BuyerVerification({Key? key}) : super(key: key);

  @override
  State<BuyerVerification> createState() => _BuyerVerificationState();
}

class _BuyerVerificationState extends State<BuyerVerification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  alignment: Alignment.center,
                  height: 70,
                  child: const Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/abuysicon.png'),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 70.0),
                child: Text(
                  'Buyer Verification',
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: const Image(
                    image: AssetImage('assets/Group 56.png'),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.contact_page_outlined),
                      labelText: "Phone number",
                    )),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.fromLTRB(0, 20, 25, 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyerhomepage');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal)),
                  child: const Text('Get OTP'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(hintText: "0"),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}