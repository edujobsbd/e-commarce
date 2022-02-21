import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child:  Column(
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                        child: Text('Discover',style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),),
                      ),
                      CircleAvatar(
                        foregroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fman%2F&psig=AOvVaw3dpjzRpBzG9T9bhuQ4QwXj&ust=1642258146443000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKic-pC-sfUCFQAAAAAdAAAAABAD'),
                        backgroundImage: NetworkImage('https://media.istockphoto.com/photos/smiling-mixed-race-mature-man-on-grey-background-picture-id1319763895?b=1&k=20&m=1319763895&s=170667a&w=0&h=jhqKyg62cQVZ-NjDQjpcenCdHDrprkN4caRjk4K76E8='),
                      )
                    ],
                  ),
                ),
                Container( width:MediaQuery.of(context).size.width*.8 ,
                  child:TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Products       ',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 15,20),
                          child: Text('Categories',style:TextStyle(
                              fontSize:23,fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        IconButton(
                          onPressed: (){

                          },
                          icon:Icon(
                            Icons.arrow_forward_outlined,
                            size: 30,
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
            Container(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10,),
                itemBuilder: (context, index) => buildCard(),
                scrollDirection: Axis.horizontal,
                itemCount: 7,

              ),
              // child: GridView.builder(
              //   scrollDirection: Axis.horizontal,
              //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //       childAspectRatio: 1/1.5,
              //       mainAxisSpacing: 10,
              //       crossAxisSpacing: 10,
              //       maxCrossAxisExtent: 300
              //   ),
              //   itemBuilder: (context, index) => buildCard(),
              //   itemCount: 10,
              // )
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 15,20),
                      child: Text('Most Poplar',style:TextStyle(
                          fontSize:23,fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    IconButton(
                      onPressed: (){

                      },
                      icon:Icon(
                        Icons.arrow_forward_outlined,
                        size: 30,
                      ),
                    )
                  ],
                )
            ),
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width*1,
              color: Color(0xffDECCCCFF),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNpo76VqOwXxOtbyhUZD40zenM6Aj4pyDsiQ&usqp=CAU'),
                          height: 120,
                          width: MediaQuery.of(context).size.width*0.48,
                        ),
                        Text('Regular Price : 1700 Taka',),
                        Text('Offer Price : 1200 Taka',),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text('Add To Card')
                        )
                      ],
                    )

                  ),
                  Container(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Card(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-i1em81lcJOSTsl0v55N1qtamseqE237Uog&usqp=CAU'),
                                    height:50,
                                    width: MediaQuery.of(context).size.width*0.42,
                                  ),
                                  Text('Regular Price : 1700 Taka',style:TextStyle(
                                    fontSize: 12
                                  ),),
                                  Text('Offer Price : 1200 Taka',style:TextStyle(
                                      fontSize: 12
                                  ),),
                                  ElevatedButton(
                                      onPressed: (){},
                                      child: Text('Add To Card',style:TextStyle(
                                          fontSize: 12
                                      ),)
                                  )
                                ],
                              )
                          ),
                          Card(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVzzH7sMEnvNkHAjzV-Qo0tjEjTYvjtkh84A&usqp=CAU'),
                                    height:50,
                                    width: MediaQuery.of(context).size.width*0.42,
                                  ),
                                  Text('Regular Price : 1700 Taka',style:TextStyle(
                                    fontSize: 12
                                  ),),
                                  Text('Offer Price : 1200 Taka',style:TextStyle(
                                      fontSize: 12
                                  ),),
                                  ElevatedButton(
                                      onPressed: (){},
                                      child: Text('Add To Card',style:TextStyle(
                                          fontSize: 12
                                      ),)
                                  )
                                ],
                              )
                          ),


                      ],
                    )

                  ),
                ],
                    
              ),

            )
          ],
        ),
        ),
      );
  }


  Widget buildCard(){
    return Column(
      children:[
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 1,)),
          height: 150,
          width:190,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                ('https://i.pinimg.com/originals/a1/86/a6/a186a634b72605d77b5e2193fdc44a0a.jpg' ), height: 110,
                width: 150,
              ),
              Text('Sofa',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
        )
      ]

    );
  }
}
