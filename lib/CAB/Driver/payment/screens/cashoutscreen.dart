import 'package:flutter/material.dart';

class CashOut extends StatefulWidget {
  const CashOut({Key? key}) : super(key: key);

  @override
  State<CashOut> createState() => _CashOutState();
}

class _CashOutState extends State<CashOut> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Payment",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                icon: Icon(Icons.info_outline, color: Colors.black),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        body:Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("Balance : \$12000.00",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Text("Payment Schedule for sep 4th",style: Theme.of(context).textTheme.subtitle2,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Account Info",style: Theme.of(context).textTheme.headline6),
                       TextButton(onPressed: (){}, child:  Text("Add Account +",style: TextStyle(color: Colors.blue)),),

                      ],
                    ),
                  ),
                  //container with rounded corners
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primary,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //row with one column
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:  Colors.grey.withOpacity(0.5),
                                child: IconButton(
                                  icon: Icon(Icons.info_outline, color: Colors.black),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Account Name",
                                      style: Theme.of(context).textTheme.subtitle2),
                                  Text("Account Number",
                                      style:Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        //row with two columns
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bank Name",
                                      style: Theme.of(context).textTheme.subtitle2),
                                  Text("Canara Number",
                                    style:Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),)
                                ],
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("IFSC code",
                                      style: Theme.of(context).textTheme.subtitle2),
                                  Text("UTIB000001",
                                      style:Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text("Payment Info",style: Theme.of(context).textTheme.headline6,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pay Out",style: Theme.of(context).textTheme.headline6,),
                      Text("\$200",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                 ],
        ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                color: Color(0xFFE4EDFF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Commision",style: Theme.of(context).textTheme.headline6,),
                      Text("\$200",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pay out",style: Theme.of(context).textTheme.headline6,),
                      Text("\$200",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton(onPressed: () {  }, child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                  child: Text("Cash OUT",style: TextStyle(color: Colors.white),),
                ),),
              ),
            )
          ],
        ),
    ));
  }
}
