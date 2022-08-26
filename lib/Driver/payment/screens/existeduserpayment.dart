import 'package:ccdriver/Driver/payment/screens/cashoutscreen.dart';
import 'package:ccdriver/Driver/payment/widgets/graph.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("\$12000.00",
                      style: Theme.of(context).textTheme.headline6),
                ),
                Text("Aug1-Sep30"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                    child: SimpleBarChart.withSampleData(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("OnLine",
                          style: Theme.of(context).textTheme.headline6),
                      Text("\$12000.00",
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tips",
                          style: Theme.of(context).textTheme.headline6),
                      Text("\$12000.00",
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Points",
                          style: Theme.of(context).textTheme.headline6),
                      Text("\$12000.00",
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                Divider(thickness: 2,),
                //row with one column and one button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Balance : \$12000.00",
                              style: Theme.of(context).textTheme.headline6),
                          Text("Payment Schedule for sep 4th",style: Theme.of(context).textTheme.subtitle2,)
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),

                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                     CashOut()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
                          child: Text("Cash OUT",style: TextStyle(color: Colors.white),),
                        ),),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Container(
                margin: EdgeInsets.only(top: 5), // ***
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 40,
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Complete 19 more trips to make \$20 extra",
                                style: Theme.of(context).textTheme.bodySmall),
                            LinearProgressIndicator(
                              minHeight: 10,
                              backgroundColor: Colors.grey[200],
                              valueColor: AlwaysStoppedAnimation(Colors.green),
                              value: 0.1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child:Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                          child: Text.rich(
                            TextSpan(
                              text: "1 |",
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: ' 20',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    )),
                                // can add more TextSpans here...
                              ],
                            ),
                          )
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
