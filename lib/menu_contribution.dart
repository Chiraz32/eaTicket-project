// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'costants.dart';
import 'package:carousel_slider/carousel_slider.dart';


class menu_contribution extends StatefulWidget {
  const menu_contribution({Key? key}) : super(key: key);

  @override
  State<menu_contribution> createState() => _menu_contributionState();
}

class _menu_contributionState extends State<menu_contribution> {
  bool maincourse = true;
  bool isFavorite = false;
  //couleurs de chaque bouton (main course/entree)
  Color clr1= couleur5;

  Color clr2 =bck_color;
//  style de texte de chaque plat 
 static TextStyle tex=  TextStyle(
    fontFamily: "Montserrat",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: couleur2,
    );
// les listes contenant les plats/les entree /les valeurs de checked or not
  List<Text>plats=[Text("kouskous",style: tex,),Text("Makrouna",style: tex,),
  Text("Nwaser",style: tex,),Text("Riz",style: tex,),
  Text("kouskous",style: tex,),Text("Makrouna",style: tex,),
  Text("kouskous",style: tex,),Text("Makrouna",style: tex,),
  Text("kouskous",style: tex,),Text("Makrouna",style: tex,)];
  List<Text>entree=[Text("salade tunisienne",style: tex,),
  Text("salade houriya",style: tex,),
  Text("salade verte ",style: tex,),Text("salade cuite ",style: tex,),
  Text("salade tunisienne ",style: tex,),Text("soup ",style: tex,),];
  List<bool?>values1=[ false,false,false,false,
  false,false,false,false,
  false,false,
  ];
  List<bool?>values2=[ false,false,false,false,false,false,];
  

  @override
  Widget build(BuildContext context) {
    //  le nombre des tickets
      var x = 7;

    return Scaffold(

    backgroundColor: bck_color,
    body: Theme 
    ( data: ThemeData(
                unselectedWidgetColor: couleur2,
            )
      ,child:Column(children: [
    // row= appbar contains icon ,nbr of tickets and image of tickets.

    Padding(
    padding: EdgeInsets.only(
    top: 0.05 * MediaQuery.of(context).size.height,
    bottom: 0.01 * MediaQuery.of(context).size.height,
    right: 0.05 * MediaQuery.of(context).size.width,
    left: 0.05 * MediaQuery.of(context).size.width,
    ),
    child: Row(
    verticalDirection: VerticalDirection.down,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    IconButton(
    icon: const Icon(Icons.arrow_back, color:couleur2, size: 30),
    onPressed: () {},
    ),
    Spacer(),
    Text(
    x.toString(),
    style: const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 35,
    fontWeight: FontWeight.w700,
    color: couleur4,
    ),
    ),
    Padding(
    padding: EdgeInsets.only(left: 5),
    child: const Image(
    image: AssetImage('assets/images/receipt 2.png'),
    color: couleur4,
    ),
    )
    ],
    ),
    ),

    // row contains the two buttons ,main course and entree
    Padding(
    padding: EdgeInsets.symmetric(
    vertical: 0.02 * MediaQuery.of(context).size.height,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    ConstrainedBox(
    constraints: const BoxConstraints.tightFor(width: 120, height: 40),
    child: ElevatedButton(
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(clr1),
   
    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    ),
    ))),
    child: Text("Main Course",
    style: TextStyle(
    fontFamily: "Montserrat",
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: couleur2,
    )),
    onPressed: () {
    setState(() {
    maincourse = true;
    clr1 =couleur5;
    clr2 =bck_color;
    });
    },
    ),
    ),
    ConstrainedBox(
    constraints: const BoxConstraints.tightFor(width: 120, height: 40),
    child: ElevatedButton(
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>( clr2),
    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10),
    ),
    ))),
    child: Text("Entree",
    style: TextStyle(
    fontFamily: "Montserrat",
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color:couleur2,
    )),
    onPressed: () {
    setState(() {
    maincourse = false;
     clr2 =couleur5;
     clr1=bck_color;
               });
          },
         )),
    ],
    ),
    ),
    // padding contains the listview
    Expanded(
      child:Padding(
    padding: const EdgeInsets.symmetric(horizontal:30, vertical:20),
    child: 
    Container(
       
    // decoration of list view
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: couleur6,
   border: Border.all(color: couleur6, width: 10),
   
    ),
    
  
    child:ListView.separated(
       
        itemBuilder: (BuildContext, index){
          return Card(
            child:Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: bck_color,

    ),child:
    
    Container(
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),),
    child: ListTile(
    
              leading: Image(image: AssetImage(
                maincourse? "assets/images/spoon.png": "assets/images/fork.png" )),
              title: 
              maincourse? plats[index]: entree[index],
             trailing: Checkbox(
              value: 
              maincourse ?values1[index]:values2[index],
              onChanged: (value) {
                setState(() {
                  maincourse ?values1[index] = value:
                  values2[index] = value;
                  
                });
                  

              },
            ),
              
            ),))
          );
        },
        itemCount: 
          maincourse ?plats.length : entree.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext,index)
        {
          return SizedBox(
            height:20,
          );
        },
        )
        ) ,
      )
      ,)
      
    
    
    
    // expanded contains the button submit

    ,Padding(
    padding: EdgeInsets.only(
    bottom: 0.06 * MediaQuery.of(context).size.height,
    ),
    child: ConstrainedBox(
    constraints: const BoxConstraints.tightFor(width: 160, height: 50),
    child: ElevatedButton(
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(couleur4),
    shape: MaterialStateProperty.all(
    const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
    )),
    child: Text("Submit",
    style: TextStyle(
    fontFamily: "Montserrat",
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: bck_color,
    )),
             onPressed: () {},
    ),
    )),
    
    
   
      ])

    
    ));
  }
}
