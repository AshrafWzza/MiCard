import 'package:flutter/material.dart';
import 'package:mi_card_flutter/custom_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum linkType { phone, mail, linkedIn, github }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  width:
                      double.infinity), //to make Column align center horizontal
              const CircleAvatar(
                  radius: 50.0, backgroundImage: AssetImage('images/a.png')),
              Text(
                'Ashraf Wzza',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BeauRivage',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 25,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(color: Colors.blueGrey.shade900),
              ),
              const CustomCard(
                icon: Icons.phone,
                text: '+20 01029696595',
                type: linkType.phone,
              ),
              const CustomCard(
                icon: Icons.mail,
                text: 'ashrafwzza2@gmail.com',
                type: linkType.mail,
              ),
              const CustomCard(
                icon: FontAwesomeIcons.linkedin,
                text: 'linkedin.com',
                type: linkType.linkedIn,
              ),
              const CustomCard(
                icon: FontAwesomeIcons.github,
                text: 'github.com',
                type: linkType.github,
              ),
              /*  Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: '+20 01029696595',
                      style: const TextStyle(color: Colors.blueGrey),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          _launchUrlPhone();
                        },
                    ),
                  ),
                ),
              ),*/

              /*Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  title: RichText(
                    text: TextSpan(
                        text: 'ashrafwzza2@gmail.com',
                        style: const TextStyle(color: Colors.blueGrey),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () async {
                        //     launchUrl(emailLaunchUri);
                        //   },
                        //YOU CAN USE THIS WAY ALSO
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            // _launcherMail();
                          }),
                  ),
                ),
              ),*/

              /*Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  // using FontAwesomeIcons
                  leading: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.blueGrey,
                  ),
                  title: Container(
                    margin: const EdgeInsets.all(2.0),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      // Use styleFrom to make padding 0 between button's boundary an child
                      // or you can use RichText textSpan and get rid of styleFrom
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0.0),
                      ),
                      onPressed: () {} //_launchUrlGit,
                      ,
                      child: const Text(
                        'github.com',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
