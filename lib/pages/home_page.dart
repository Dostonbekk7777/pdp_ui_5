import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [

          // #head
          Expanded(flex: 1,
            child:  Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/ic_header.jpg'),
                    fit: BoxFit.cover)
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.bottomRight,colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.2),
                  ])
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Best Hotels Ever',
                    style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: 'Search for hotels...',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),),

          // #body
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Business Hotels',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Container(
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                                    makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                                    makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                                    makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                                    makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                                  ],
                                )),
                            SizedBox(height: 15,),

                            Text('Airport Hotels',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Container(
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                                    makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                                    makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                                    makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                                    makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                                  ],
                                )),
                            SizedBox(height: 15,),

                            Text('Resort Hotels',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Container(
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                                    makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                                    makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                                    makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                                    makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                                  ],
                                )),
                            SizedBox(height: 15,),

                          ],
                        ),
                      ),
                    ]
                ),
            ),
          ),
        ],
      ),
    );
  }

  makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         image: DecorationImage(image: AssetImage(image),
         fit: BoxFit.cover)
       ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight,colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2)
            ])
          ),
          child: Row(
            crossAxisAlignment:CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Icon(Icons.favorite,color: Colors.red,size: 25,)
          ],
          ),
        )
      ),
    );
  }
}
