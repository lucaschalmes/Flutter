import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  String car = "carteira";
  String valor = "R\$ 100.000.00";
  String var2 = "+R\$ 100,00";
  String cdi = "(100% do CDI)";
  Widget icone = Icon(
    Icons.remove_red_eye,
    color: Colors.grey,
    size: 19.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          SizedBox(
            height: 60,
            width: 27,
          ),
          Text(
            car,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: 150.0,
          ),
          icone
        ]),
        Row(children: <Widget>[
          SizedBox(
            height: 20,
            width: 27,
          ),
          Text(
            valor,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            width: 125.0,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 19.5,
          ),
        ]),
        Row(children: <Widget>[
          SizedBox(
            width: 20.0,
          ),
          Text(
            var2,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Text(
            cdi,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ]),
        SizedBox(
          height: 40,
        ),
        const ListTile(
          leading: Icon(Icons.money),
          title: Text("ETH"),
          subtitle: Text("Ethereum"),
          trailing: Text("US\$0,00"),
        ),
        const ListTile(
          leading: Icon(Icons.currency_bitcoin),
          title: Text("BTC"),
          subtitle: Text("Bitcoin"),
          trailing: Text("US\$1.000,00"),
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("LTC"),
          subtitle: Text("Litecoin"),
          trailing: Text("US\$0,00"),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 0, 144),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_rounded,
              color: Color.fromARGB(255, 255, 0, 144),
            ),
            label: "Carteira",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment_rounded,
              color: Color.fromARGB(255, 255, 0, 144),
            ),
            label: "Movimentações",
          ),
        ],
      ),
    );
  }
}
