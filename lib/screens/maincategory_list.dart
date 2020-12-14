import 'dart:convert';
import 'global.dart' as globals;
import 'package:flutter/material.dart';
import 'package:flutter_app/http/request.dart';
import 'package:flutter_app/pojo/GetMainCategoryListResult.dart';
import 'package:flutter_app/util/common.dart';

class MainCategoryList extends StatefulWidget {
  @override
  _MainCategoryListState createState() => _MainCategoryListState();
}

class _MainCategoryListState extends State<MainCategoryList> {
  List<GetMainCategoryList> getMainCategoryList = [];
  String cartCount = '0';
  @override
  void initState() {
    // TODO: implement initState
    getCountData();
    getList();
    super.initState();
  }

  void getCountData() async {

    cartCount = globals.count;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Category List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: ListView.separated(
                itemCount: getMainCategoryList.length,
                itemBuilder: (context, index){
                  return Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                    child: GestureDetector(
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Image.network(getMainCategoryList[index].image, fit: BoxFit.fill),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(getMainCategoryList[index].mainCategoryId.toString()),
                                Text(getMainCategoryList[index].name)
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainCategoryList()));
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context,int index) => Divider(),
              ),
            )
          )
        ],
      ),
    );
  }
  
  void getList() async{
    if(await Common.isNetworkAvailable()){
      Future.delayed(Duration.zero, () => Common.dialogLoader(context));
      var data = {
        
      };
      
      Request request = Request("GetMainCategoryList", data);
      request.post().then((result){
        Navigator.pop(context);
        var rest = result.data['GetMainCategoryList'] as List;

        setState(() {
          getMainCategoryList = rest.map<GetMainCategoryList>((json) => GetMainCategoryList.fromJson(json)).toList();
        });
      }).catchError((error) {
        Navigator.pop(context);
        Common.toast(context, "Wrong");
      });
    } else {
      Navigator.pop(context);
      Common.toast(context, "noInternetMsg");
    };
  }
}
