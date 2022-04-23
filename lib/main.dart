import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
  home: ProfileScreen(),
));


class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit profile',),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(0, 62, 41, 1),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(//Контейнер Stack позволяет располагать одни элементы поверх других.Контейнер Stack позволяет располагать одни элементы поверх других.
          children: [
            Container(
              height: 170,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 62, 41, 1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(34),
                    bottomLeft: Radius.circular(34)),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),// суретке отступ устинен
                

                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 3),
                            borderRadius: BorderRadius.circular(60),
                          ),

                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                           child: const Image(
                             image: NetworkImage('https://icdn.lenta.ru/images/2019/07/26/11/20190726115226523/square_1280_69bcf555abe5667a24640b60984dd996.jpg'),
                             height: 120,
                             width: 120,
                           ),
                        ),
                      ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Text("Name"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextFormField(

                          style: TextStyle(color: Colors.black) ,
                          decoration: InputDecoration(

                              border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                           prefixIcon: Padding(
                             padding: const EdgeInsets.all(4.0),
                             child: Container(
                               height: 25,
                               width: 25,
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Color.fromRGBO(0, 62, 41, 1),
                               ),
                               child: const Icon(Icons.person_outline,
                              color: Colors.white,),
                              ),
                           ),
                           suffixIcon: GestureDetector(
                             onTap: () {},
                             child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                       height: 25,
                                       width: 25,
                                       decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                       color: Color.fromRGBO(0, 62, 41, 1),
                                       ),
                                       child: const Icon(Icons.edit_outlined,
                                       color: Colors.white,),
                                  ),
                               ),
                           ),
                      ),
                      ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextFormField(

                          style: TextStyle(color: Colors.black) ,
                          decoration: InputDecoration(

                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(0, 62, 41, 1),
                                ),
                                child: const Icon(Icons.email_outlined,
                                  color: Colors.white,),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(0, 62, 41, 1),
                                  ),
                                  child: const Icon(Icons.edit_outlined,
                                    color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Text("Phone Number"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black) ,
                          decoration: InputDecoration(

                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(0, 62, 41, 1),
                                ),
                                child: const Icon(Icons.phone_outlined,
                                  color: Colors.white,),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(0, 62, 41, 1),
                                  ),
                                  child: const Icon(Icons.edit_outlined,
                                    color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                )
            ),
            Positioned(
                top: 170,
                left: MediaQuery.of(context).size.width*0.5+20,// иконканы ортага жылжыту ушин
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(0, 62, 41, 1),// конканын орналасуы
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
            ),
            )

          ],
        ),

      ),
    );
  }
}
