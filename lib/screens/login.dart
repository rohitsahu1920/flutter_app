import 'package:flutter/material.dart';
import 'package:flutter_app/http/request.dart';
import 'package:flutter_app/res/color.dart';
import 'package:flutter_app/util/common.dart';

import 'maincategory_list.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  bool _obsecureText = true;
  String _password = "";
  String _mobile = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _obsecureText = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1,
                    )
                ),
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      onChanged: (value) => _mobile = value,
                      validator: (value) {
                        if(_mobile.trim().length < 10){
                          return 'Enter your 10 digit Number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle, color: Colors.black,),
                          contentPadding: EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 0),
                          hintText: "Mobile Number",
                          hintStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1,
                    )
                ),
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obsecureText,
                      onChanged: (value) => _password = value,
                      validator: (value){
                        if(value.isEmpty){
                          return "Please enter your password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone, color: Colors.black,),
                          contentPadding: EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 0),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obsecureText? Icons.visibility: Icons.visibility_off
                          ),
                          onPressed: (){
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                        )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                color: Colors.cyan,
                child: Text("Login"),
                onPressed: (){
                  signIn();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  signIn() async{
    if(await Common.isNetworkAvailable()){
      Future.delayed(Duration.zero, () => Common.dialogLoader(context));
      var data = {
        "Mobile": _mobile,
        "Password" : _password,
        "RegId": ""
      };

      Request request = Request("UserLogin", data);
      request.post().then((result){
        Navigator.pop(context);
        if(result.data['UserLoginResult']['ServiceStatus'] == "1"){
          Common.toast(context, result.data['UserLoginResult']['Message']);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainCategoryList()));
        }
        else{
          setState(() {
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    content: new Text(result.data['UserLoginResult']['Message']),
                    actions: [
                      new FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: new Text('Close', style: TextStyle(color: colorPrimary)),

                      ),
                    ],
                  );
                });
          });
        }
      });
    }
  }
}
