import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _urlgit = Uri.parse('https://github.com/AshrafWzza');
    void _launchUrlGit() async {
      if (!await launchUrl(_urlgit)) throw 'Could not launch $_urlgit';
    }

    final Uri _urlmail = Uri.parse('mailto:ashrafwzza2@gmail.com');
    void _launchUrlMail() async {
      if (!await launchUrl(_urlmail)) throw 'Could not launch $_urlmail';
    }

    final Uri _urlphone = Uri.parse('tel:+2001029696595');
    void _launchUrlPhone() async {
      if (!await launchUrl(_urlphone)) throw 'Could not Call $_urlphone';
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width:
                      double.infinity), //to make Column align center horizontal
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/aa.jpg'),
              ),
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
                child: Divider(
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: '+20 01029696595',
                      style: TextStyle(color: Colors.blueGrey),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          _launchUrlPhone();
                        },
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  title: RichText(
                    text: TextSpan(
                        text: 'ashrafwzza2@gmail.com',
                        style: TextStyle(color: Colors.blueGrey),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () async {
                        //     launchUrl(emailLaunchUri);
                        //   },
                        //YOU CAN USE THIS WAY ALSO
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            if (await canLaunchUrl(Uri.parse(
                                    'mailto:ashrafwzza2@gmail.com')) ==
                                true) {
                              launchUrl(
                                  Uri.parse('mailto:ashrafwzza2@gmail.com'));
                            } else {
                              print("Can't launch Mail");
                            }
                          }),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  // using FontAwesomeIcons
                  leading: FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.blueGrey,
                  ),
                  title: Container(
                    margin: EdgeInsets.all(2.0),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      // Use styleFrom to make padding 0 between button's boundary an child
                      // or you can use RichText textSpan and get rid of styleFrom
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0.0),
                      ),
                      onPressed: _launchUrlGit,
                      child: Text(
                        'github.com',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
