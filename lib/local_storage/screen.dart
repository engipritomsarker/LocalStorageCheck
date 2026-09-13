import 'package:flutter/material.dart';

class LocalStorageCheck extends StatefulWidget {
  const LocalStorageCheck({super.key});

  @override
  State<LocalStorageCheck> createState() => _LocalStorageCheckState();
}

class _LocalStorageCheckState extends State<LocalStorageCheck> {

 TextEditingController dataController = TextEditingController();

 String name ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Local Storage Check"),backgroundColor: Colors.lightBlueAccent,centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hint:Text("Text"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                controller: dataController,
              ),
            ),

            SizedBox(height: 50,),

            Text("Result : $name",style:
            TextStyle(color: Colors.pink,fontSize: 18,backgroundColor:Colors.green.shade50,fontWeight: FontWeight.bold)),

            SizedBox(height: 100,),

            ElevatedButton(
                onPressed: (){
                  name = dataController.text;
                  setState(() {});
                },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,),
                child: Text(
                  "Save",style: TextStyle(color: Colors.white),
                )
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      name=dataController.text;
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,iconColor: Colors.white),
                    child: Icon(Icons.refresh),),

                SizedBox(width: 150,),

                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,iconColor: Colors.white),
                  child: Icon(Icons.delete),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
