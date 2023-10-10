import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Dropdown(),);
  }
}
class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}
class _DropdownState extends State<Dropdown> {
  List<String> coll=["Ace","Acoe","Acet"];
  List<String> name=["ace","acoe","acet"];
  bool? isEnabled =false;
  String? isSelected="";
  String? orSelected="";
  bool ifEnabled=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxMenuButton(
            value: isEnabled, onChanged: (val){
            setState(() {
              isEnabled=val;
            });
          },
              child: Text("Selectes button"),
            trailingIcon: Icon(Icons.save),
          ),
            SizedBox(height: 20,),
            DropdownMenu(
              dropdownMenuEntries:coll.map<DropdownMenuEntry<String>>((val)
              {
                return DropdownMenuEntry(value: val, label: val);
              }) .toList(),
              onSelected: (select){
                setState(() {
                  isSelected=select;
                });
              },
              hintText: "Select",
            ),
            ElevatedButton(onPressed: (){
              print(isSelected);
            }, child: Text("get")),


            DropdownMenu(dropdownMenuEntries:name.map<DropdownMenuEntry<String>>((val){
              return DropdownMenuEntry(value: val, label: val);
            }).toList(),
              onSelected: (select){
              setState(() {
                orSelected=select;
              });
              },hintText: 'select',
            ),
           CupertinoSwitch(
             focusColor: Colors.amber,
             activeColor: Colors.red,
               value: ifEnabled, onChanged: (val){
             setState(() {
               ifEnabled=val;
             });
           })
          ],
        ),
    );
  }
}

