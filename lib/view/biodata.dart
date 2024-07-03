import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BiodataView extends StatelessWidget {
  const BiodataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text("Biodata"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("img/hendri.jpg"),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Text(
            "Hendri Gunawan",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 300,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Nama : Hendri Gunawan"),
                    Text("TTL : Jakarta, 13 Juli 1998"),
                    Text("Agama : Islam"),
                    Text("Motto : Teruslah berbuat baik"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          LaunchButton("Instagram", () async {
            await openUrl("https://www.instagram.com/hendri12399/");
          } )
        ],
      ),
    );
  }
}

class LaunchButton extends StatelessWidget {
  final String text;
  final Function onTap;
  LaunchButton(this.text, this.onTap );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ()=>onTap.call(),
        child: Column(
          children: [Icon(FontAwesomeIcons.instagram), Text(text)],
        ));
  }
}
Future<void> openUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  await launchUrlString(url);
}
