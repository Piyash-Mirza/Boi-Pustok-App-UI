import 'package:boi_pustok_app_ui/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class LifeChangeScreen extends StatefulWidget {

  const LifeChangeScreen({ Key? key }) : super(key: key);

  @override
  LifeChangeScreenState createState() => LifeChangeScreenState();
}

class LifeChangeScreenState extends State<LifeChangeScreen>
{

  List<String> lifeChangeList = [

    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "পর্ব-১",
    "বিখ্যাত ব্যক্তিদের মজার কিছু উক্তি",
    "এ পি জে আবুল কালামের বিখ্যাত উক্তি",
    "মাশরাফি বিন মর্তুজার উক্তি"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(

          padding: EdgeInsets.all(8.0),
          child: AppBarLeading(),
        ),
        actions: [

          Container(

            width: 200.0,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), 
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),
            child: SizedBox(

              width: 200.0, height: 30.0,
              child: MaterialButton(

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(

                  "জীবন পরিবর্তন হওয়ার বাণী", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 14.0, fontWeight: FontWeight.w600
                  )
                ),
              ),
            ),
          )
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(

          scrollDirection: Axis.vertical,
          itemCount: lifeChangeList.length,
          separatorBuilder: (_, index) => const SizedBox(height: 8.0),
          itemBuilder: (context, index){

            return Container(

              width: MediaQuery.of(context).size.width,
              height: 60.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15.0), 
                border: Border.all(color: Colors.orangeAccent, width: 2)
              ),

              child: MaterialButton(
                
                onPressed: (){},

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                height: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width,
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Text(

                  lifeChangeList[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            );
          },
        ),
      ),
      
    );
  }
}