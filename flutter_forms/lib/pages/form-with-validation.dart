import 'package:flutter/material.dart';

class FormValidationPage extends StatefulWidget {
  static const String routeName = "/form-with-validation";

  @override
  _FormValidationPageState createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form with Validation"),
      ),
      body: FormContainer(),
    );
  }
}

class FormContainer extends StatefulWidget {
  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              autofocus: true,
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: "Write your name",
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please write your name";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              color: Colors.yellowAccent[100],
            ),
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: () async {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green[400],
                    content: Text(
                      "Success!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );

                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.indigo[100],
                      title: Text("Form with Validation"),
                      content: Text(
                          "Hi, ${textEditingController.text}! You passed in the validation."),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
