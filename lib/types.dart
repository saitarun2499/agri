import 'package:flutter/material.dart';

class Types extends StatelessWidget {
  const Types({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('రకాలు')),
      ),
      body: const CardLayout(),
    );
  }
}

class CardLayout extends StatelessWidget {
  const CardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'AH-92504',
    'AH-92624',
    'AH-92637',
    'AH-92941',
    'AH-92105',
  ];

  final images = [
    'images/AH-92504.JPG',
    'images/AH-92624.JPG',
    'images/AH-92637.JPG',
    'images/AH-92941.JPG',
    'images/AH-92105.JPG',
  ];
  final screens = [
    const Type1(),
    const Type2(),
    const Type3(),
    const Type4(),
    const Type5(),
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return InkWell(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: Card(
            child: Column(
              children: [
                Image.asset(images[index]),
                ListTile(
                  title: Center(
                    child: Text(
                      titles[index],
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            elevation: 20.0,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screens[index]),
          );
        },
      );
    },
  );
}

class Type1 extends StatelessWidget {
  const Type1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AH-92504'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/AH-92504.JPG'),
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'మొక్క లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
      * మొక్క రకం: పాక్షికంగా నిటారు
      * పంట కాల వ్యవధి: 150-160 రోజులు
      * మొదటి పంటకోత: 55 DAT 
      * రసాన్ని పిల్చే పురుగులను తట్టుకునే మరియు వైరస్ తెగుళ్లను  తట్టుకునే మంచి రకం    
                   ''',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                )),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'దిగుబడి సామర్థ్యం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఉత్తమం',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'కాయ లక్షణాలు',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
* పరిపక్వత లేని: ఆకర్షణీయ ఆకపచ్చరంగు
* పరిపక్వత: ఎరుపురంగు
* కాయ పొడవు : 12-14 సె. మి. 
* కాయ ఘాటు: అధికం
* ఉపరితలం: మధ్యస్థంగా ముడతలు   
                     ''',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'వినియోగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'పచ్చిమిర్చి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Type2 extends StatelessWidget {
  const Type2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AH-92624'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/AH-92624.JPG'),
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'మొక్క లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
      * మొక్క రకం: పాక్షికంగా నిటారు
* పంట కాల వ్యవధి: 150-160 రోజులు
* మొదటి పంటకోత: 50-55 DAT 
* రసాన్ని పిల్చే పురుగులను తట్టుకునే మరియు వైరస్ తెగుళ్లను  తట్టుకునే మంచి రకం   
                   ''',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                )),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'దిగుబడి సామర్థ్యం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఉత్తమం',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'కాయ లక్షణాలు',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
* పరిపక్వత లేని: ఆకర్షణీయ ముదురు ఆకపచ్చరంగు
* పరిపక్వత: ఎరుపురంగు
* కాయ పొడవు : 12-14 సె. మి. 
* కాయ ఘాటు:  శ్రేష్టం
* ఉపరితలం: మధ్యస్థంగా ముడతలు   
                     ''',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'వినియోగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఎండు మిర్చి, పచ్చిమిర్చి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Type3 extends StatelessWidget {
  const Type3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AH-92637'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/AH-92637.JPG'),
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'మొక్క లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* మొక్క రకం: పాక్షికంగా నిటారు
* పంట కాల వ్యవధి: 150-160 రోజులు
* మొదటి పంటకోత: 55-60 DAT 
* రసాన్ని పిల్చే పురుగులను తట్టుకునే మరియు వైరస్ తెగుళ్లను  తట్టుకునే మంచి రకం
                   ''',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                )),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'దిగుబడి సామర్థ్యం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఉత్తమం',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'కాయ లక్షణాలు',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
* పరిపక్వత లేని: ఆకర్షణీయ ముదురు ఆకపచ్చరంగు
* పరిపక్వత: ముదురు ఎరుపురంగు
* కాయ పొడవు : 7-9 సె. మి. 
* కాయ ఘాటు: అధికం
* ఉపరితలం: మధ్యస్థంగా ముడతలు  
                     ''',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'వినియోగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఎండు మిర్చి, పచ్చిమిర్చి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Type4 extends StatelessWidget {
  const Type4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AH-92941'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/AH-92941.JPG'),
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'మొక్క లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* మొక్క రకం: పాక్షికంగా నిటారు
* పంట కాల వ్యవధి: 150-160 రోజులు
* మొదటి పంటకోత: 55-60 DAT 
* రసాన్ని పిల్చే పురుగులను తట్టుకునే మరియు వైరస్ తెగుళ్లను  తట్టుకునే మంచి రకం 
                   ''',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                )),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'దిగుబడి సామర్థ్యం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఉత్తమం',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'కాయ లక్షణాలు',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
* పరిపక్వత లేని: ఆకర్షణీయ ముదురు ఆకపచ్చరంగు
* పరిపక్వత: ముదురు ఎరుపురంగు
* కాయ పొడవు : 5-7 సె. మి. 
* కాయ ఘాటు: అధికం
* ఉపరితలం: మధ్యస్థంగా ముడతలు  
                     ''',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'వినియోగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఎండు మిర్చి, పచ్చిమిర్చి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Type5 extends StatelessWidget {
  const Type5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AH-92105'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/AH-92105.JPG'),
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'మొక్క లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* మొక్క రకం: పాక్షికంగా నిటారు
* పంట కాల వ్యవధి: 150-160 రోజులు
* మొదటి పంటకోత: 55-60 DAT 
* రసాన్ని పిల్చే పురుగులను తట్టుకునే మరియు వైరస్ తెగుళ్లను  తట్టుకునే మంచి రకం  
                   ''',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                )),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'దిగుబడి సామర్థ్యం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఉత్తమం',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'కాయ లక్షణాలు',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
* పరిపక్వత లేని: ఆకర్షణీయ ముదురు ఆకపచ్చరంగు
* పరిపక్వత: ముదురు ఎరుపురంగు
* కాయ పొడవు : 4-5 సె. మి. 
* కాయ ఘాటు: అధికం
* ఉపరితలం: మధ్యస్థంగా ముడతలు   
                     ''',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'వినియోగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఎండు మిర్చి, పచ్చిమిర్చి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
