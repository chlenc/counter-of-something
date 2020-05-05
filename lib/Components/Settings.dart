import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:timeapp/Components/UserAvatar.dart';
import 'package:timeapp/stores/root_store.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final accountStore = Provider.of<RootStore>(context).accountStore;
    final nameController = TextEditingController(text: accountStore.name);
    final descriptionController =
        TextEditingController(text: accountStore.description);

    return Observer(
      builder: (BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UserAvatar(path: accountStore.avatar, radius: 50),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LoadImgBtn(
                      icon: Icons.image,
                      label: 'From gallery',
                      onClick: () =>
                          accountStore.setAvatar(ImageSource.gallery),
                    ),
                    SizedBox(width: 20),
                    LoadImgBtn(
                      icon: Icons.camera_alt,
                      label: 'From camera',
                      onClick: () => accountStore.setAvatar(ImageSource.camera),
                    ),
                  ],
                ),
                Input(
                  controller: nameController,
                  onChange: accountStore.changeName,
                  hintText: 'Your name',
                  labelText: 'NAME',
                ),
                Input(
                  controller: descriptionController,
                  onChange: accountStore.changeDescription,
                  hintText: 'What will you count',
                  labelText: 'DESCRIPTION',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoadImgBtn extends StatelessWidget {
  LoadImgBtn({this.onClick, this.label, this.icon});

  final void Function() onClick;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) => FlatButton.icon(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        onPressed: onClick,
        icon: Icon(icon, color: Colors.white),
        label: Text(label, style: TextStyle(color: Colors.white)),
        color: Colors.grey[850],
      );
}

class Input extends StatelessWidget {
  Input({this.onChange, this.controller, this.hintText, this.labelText});

  final void Function(String) onChange;
  final TextEditingController controller;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: TextField(
          style: TextStyle(color: Colors.white, letterSpacing: 2.0),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hoverColor: Colors.grey,
            hintText: hintText,
            labelText: labelText,
            hintStyle: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            labelStyle: TextStyle(color: Colors.grey, letterSpacing: 2.0),
          ),
          onSubmitted: onChange,
          controller: controller,
        ),
      );
}
