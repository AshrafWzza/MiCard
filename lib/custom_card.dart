import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

final Uri _urlphone = Uri.parse('tel:+2001029696595');

void _launchUrlPhone() async {
  try {
    !await launchUrl(_urlphone);
  } on Exception catch (e) {
    AlertDialog(
      title: Text('$e'),
    );
  }
}

final Uri _urlLinkedIn =
    Uri.parse('https://www.linkedin.com/in/ashraf-wzza-b9933024a/');
void _launchUrlLinkedIn() async {
  try {
    !await launchUrl(_urlLinkedIn);
  } on Exception catch (e) {
    AlertDialog(
      title: Text('$e'),
    );
  }
}

final Uri _urlgit = Uri.parse('https://github.com/AshrafWzza');
void _launchUrlGit() async {
  try {
    !await launchUrl(_urlgit);
  } on Exception catch (e) {
    AlertDialog(
      title: Text('$e'),
    );
  }
}

void _launcherMail() async {
  try {
    await canLaunchUrl(Uri.parse('mailto:ashrafwzza2@gmail.com'));
    launchUrl(Uri.parse('mailto:ashrafwzza2@gmail.com'));
  } on Exception catch (e) {
    AlertDialog(
      title: Text('$e'),
    );
  }
// you can Also use recognizer: TapGestureRecognizer()..onTap = () async {}
// final Uri _urlmail = Uri.parse('mailto:ashrafwzza2@gmail.com');
// void _launchUrlMail() async {
//   if (!await launchUrl(_urlmail)) throw 'Could not launch $_urlmail';
// }

  // if (await canLaunchUrl(Uri.parse('mailto:ashrafwzza2@gmail.com')) == true) {
  //   launchUrl(Uri.parse('mailto:ashrafwzza2@gmail.com'));
  // } else {
  //   print("Can't launch Mail");
  // }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key, required this.icon, required this.text, required this.type})
      : super(key: key);
  final IconData icon;
  final String text;
  final linkType type;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blueGrey,
        ),
        title: RichText(
          text: TextSpan(
            text: text,
            style: const TextStyle(color: Colors.blueGrey),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (type == linkType.phone) {
                  _launchUrlPhone();
                } else if (type == linkType.mail) {
                  _launcherMail();
                } else if (type == linkType.linkedIn) {
                  _launchUrlLinkedIn();
                } else {
                  _launchUrlGit();
                }
              },
          ),
        ),
      ),
    );
  }
}
