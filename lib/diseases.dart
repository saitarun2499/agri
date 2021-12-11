import 'package:flutter/material.dart';

class Diseases extends StatelessWidget {
  const Diseases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('వ్యాధులు')),
      ),
      body: const DiseaseLayout(),
    );
  }
}

class DiseaseLayout extends StatelessWidget {
  const DiseaseLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'పేను బంక',
    'తామర పురుగులు',
    'తెల్ల దోమ',
    'కాయ తొలుచు పురుగు',
    'నల్లి ',
    'నారుకుళ్ళు (మాగుడు) తెగులు',
    'కొమ్మ ఎండు మరియు కాయకుళ్ళు ',
    'బూడిద తెగులు',
    'ఎండు తెగులు',
    'కానొఫొరా కొమ్మ కుళ్ళు',
    'బాక్టీరియా ఆకుమచ్చ',
    'సెర్కోస్పోరా ఆకుమచ్చ',
    ' ఆకు ముడత వైరస్ (జెమిని వైరస్)',
  ];

  final images = [
    'images/disease/aphids.jpg',
    'images/disease/thrips field.jpg',
    'images/disease/whitefly.jpeg',
    'images/disease/fruitborer.jpg',
    'images/disease/mites.jpg',
    'images/disease/damping off.jpg',
    'images/disease/anthracnose.jpg',
    'images/disease/powdery mildew.jpg',
    'images/disease/wilt.jpg',
    'images/disease/choaneophora blight.jpg',
    'images/disease/bacterial leaf spot.jpg',
    'images/disease/cercospora.jpg',
    'images/disease/gemini virus.jpg',
  ];
  final screens = [
    const Dis1(),
    const Dis2(),
    const Dis3(),
    const Dis4(),
    const Dis5(),
    const Dis6(),
    const Dis7(),
    const Dis8(),
    const Dis9(),
    const Dis10(),
    const Dis11(),
    const Dis12(),
    const Dis13(),
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
                Image.asset(
                  images[index],
                  height: 350.0,
                ),
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

class Dis1 extends StatelessWidget {
  const Dis1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('పేను బంక'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/disease/aphids.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'రసం పీల్చు పురుగు',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* రసయుత భాగాలతో ఉండే పంటలు పేనుబంక దాడికి అత్యంత అనుకూలంగా ఉంటాయి. 
* పొలాన్ని తగినట్టుగా క్రిమిరహితం చేయకపోవడం వల్ల విభిన్న రకాల కలుపు మొక్కలు పెరగుతాయి. పేనుబంక ముందుగా ఈ మొక్కలకు చేరుకుని, ఆ తర్వాత ప్రధాన పంట మీద దాడి చేస్తుంది. 
* కలుపు మొక్కల మీద కీటకనాశనులను తగినంతగా పిచికారీ చేయకపోవడం వల్ల వాటి మీద ఉండే పేనుబంక ఆ కీటకనాశనులకు నిరోధకత సాధిస్తుంది. తద్వారా, వాటి సంఖ్య తీవ్రమవుతుంది.
* మొక్కల మధ్య దూరం ఎక్కువగా ఉంటే పేనుబంక దాడి తగ్గుతుంది. అలాగే, మొక్కలు కూడా దృఢంగా పెరగడం వల్ల పేనుబంకను తట్టుకునే సామర్థ్యంతో ఉంటాయి. అదేసమయలో, మొక్క నుండి మొక్కకు పేనుబంక వ్యాప్తి కూడా తక్కువగా ఉంటుంది.
* పంట మొక్కల మధ్య దూరం ఎక్కువగా ఉన్నప్పుడు సస్యరక్షణ నిర్వణ కూడా సులభంగా ఉంటుంది. 
* మొక్కల మధ్య దూరం బాగా తక్కువగా ఉన్నప్పుడు ఆ మొక్కల్లోని పేనుబంకకు రైతు దృష్టి నుంచి, దాని సహజ శత్రువుల నుంచి తప్పించుకునే అవకాశం ఉంటుంది.
                   ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
• పేనుబంక పిల్ల దశలో ఉన్నప్పటికీ, పెద్దదైనప్పటికీ అది మొక్కలోని లేత ఆకులు, కొమ్మలు, మొక్కలు, పుష్పాలు, కాయలు లేదా ఫలాల వంటి మృదువైన మరియు రసయుత భాగాల నుంచి కణ ద్రవ్యాన్ని పీల్చేస్తుంది. 
• పేనుబంక దాడికి గురైన మొక్కల్లోని కొమ్మలు, ఆకులు, కాండం లాంటివి మెలితిరిగి, వంకరగా లేదా ఉబ్బినట్టుగా ఉండే లక్షణాలు ప్రదర్శిస్తాయి. 
• తెగులు నియంత్రించలేని పరిస్థితి ఏర్పడినప్పుడు మొక్కల పెరుగుదల తగ్గుతుంది లేదా పూర్తిగా ఆగిపోతుంది. ఆకుల మీద పసుపురంగు మచ్చలు కనిపిస్తాయి. తెగులు సోకిన మొక్క భాగాలు గోధుమ రంగులోకి మారిపోతాయి. 
• పేనుబంక స్రవించే జిగురుగా ఉండే తేనెలాంటి పదార్థానికి చీమలు ఆకర్షితమవుతాయి. ఈ చీమల ద్వారా పేనుబంక అనేది మొక్కల్లోని ఒక భాగం నుంచి మరొక భాగానికి మరియు ఒక మొక్క నుంచి మరొక మొక్కకు వ్యాపిస్తుంది. 
• ఈ జిగురు పదార్థానికి బూజు కూడా ఆకర్షితమవుతుంది. బూజు దాని మీద పెరిగి, నల్లటి పొర లాగా ఏర్పడుతుంది. దీనివల్ల మొక్కలో కిరణజన్య సంయోగక్రియ చర్య తగ్గిపోయే అవకాశం ఉంది  
                   ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
      సహ పంటలు లేదా పేనుబంకకు అనుకూలమైన లేదా వాటిని ఆకర్షించగల పంటలను ప్రధాన పంటకు సమీపంలో వేయాలి. ఉదాహరణకు - ఆవ పంట అనేది పేనుబంకను బాగా ఆకర్షిస్తుంది. కాబట్టి, ప్రధాన పంట పక్కనే ఈ పంటను సాగు చేయవచ్చు. పేనుబంకను తరిమేసే సామర్థ్యం వెల్లులి మొక్కలకు ఉంది. కాబట్టి, ప్రధాన పంటలో వెల్లుల్లిని మిశ్రమ పంటగా సాగుచేయడం వల్ల రెండు రకాల ప్రయోజనం ఉంటుంది. పేనుబంకను ఆకర్షించి చంపేయగల పరాన్నజీవ ఆడ పురుగులు, లేస్‌వింగ్స్, మరియు పరాన్నజీవ కందిరీగల వంటి వాటికి ఆశ్రయం ఇచ్చే పంటలు లేదా మొక్కలను సమీపంలో పెంచే అవకాశాలు ఆలోచించాలి పేనుబంకకు అనుకూలంగా ఉండే కలుపు మొక్కలు పొలాల్లో లేకుండా చూడాలి మొక్కల మీద మరియు మొక్కల భాగాల మీద చీమలు తిరుగుతున్నాయేమో క్రమం తప్పకుండా పరిశీలిస్తూ ఉండాలి. చీమలు తిరుగుతున్న మొక్కలను తొలగించాలి లేదా నాశనం చేయాలి. చీమలనేవి పేనుబంక మరియు వాటి లార్వాల వ్యాప్తికి వాహకాలుగా పనిచేస్తాయి. కాబట్టి, ఈ చీమల్ని చంపేయడం ద్వారా పేనుబంక వ్యాప్తికి అడ్డుకట్ట వేయవచ్చు. జిగురు ఎరలను పొలంలో ఉంచితే, పేనుబంక వాటికి ఆకర్షితమవుతుంది. ఈ విధానంతో కొంత ప్రయోజనం ఉంటుంది.   
                   ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఎకరానికి ఇమిడాక్లోప్రిడ్ 70% WS తో@ 400-600గ్రాములు/100కేజీ విత్తనాలు  విత్తనశుద్ధి చేయాలి.
* ఎకరానికి  ఫీప్రోనిల్ 5% SC @ 320-400 మి.లీ. 200 లీటర్ నీటికి లేదా ఆక్సీ డెమిటాన్ మిథైల్ 25% EC @ 640 మి.లీ. 200-400  లీటర్ నీటికి లేదా థయోమిథాక్సామ్ 25% WG @ 100 గ్రాములు రెండువందల లీటర్ల నీటికి కలిపి పిచికారి చేయాలి. 
* 10 రోజుల వ్యవధిలో ప్రత్యామ్నాయ రసాయనాల్ని పిచికారి చేసి పేనుబంక ఉధృతిని తగ్గించాలి.  
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis2 extends StatelessWidget {
  const Dis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('తామర పురుగులు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/disease/thrips field.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'రసం పీల్చు పురుగు',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* తామర పురుగులనేవి పంటల ద్వారా, గాలి ద్వారా మరియు ఎగరడం ద్వారా సులభంగా వ్యాపిస్తాయి. 
* ఇతర తెగులు సోకిన రకాల విత్తనాలు లేదా మొక్కల ద్వారా కూడా వ్యాపిస్తాయి. 
* పంట కాలంలోని ఉష్ణోగ్రతలు మరియు సాపేక్ష ఆర్ధ్రత లాంటివి కూడా తామర పురుగుల దాడిలో కీలక పాత్ర పోషిస్తాయి. 
* ఆయా కాలాలకు తగని రకాలు ఉపయోగించడం మరియు తగని కాలంలో పంట వేయడం కూడా ఒక కారణం.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
తామర పురుగుల దాడిని మొక్కల్లోని వివిధ భాగాల్లో గుర్తించవచ్చు.
లేత ఆకులు పైవైపునకు చుట్టుకుపోతాయి. అలాగే, తెగులు తీవ్రంగా ఉన్నప్పుడు ఆకులు పలుచగా, కాగితంలాగా ఉండొచ్చు.
తామర పురుగులు పుష్పాల మీద దాడి చేసినప్పుడు పత్రదళాలకు రంధ్రాలు చేస్తాయి, వాటిని గోధుమ నుండి నల్ల రంగులోకి మార్చేస్తాయి.
ఆకులు మరియు ఫలాలు వైకల్యంమవుతాయి
ఆకుల మీద అనేక మచ్చలు కూడా కనిపిస్తాయి   
 ముదిరిన ఆకుల పైభాగం వెండి రంగులోకి మారిపోతుంది
 ఫలాల మీద చారలు లాంటివి కనిపించడం వల్ల అవి వినియోగానికి పనికిరావు
మొక్కల పెరుగుదల నిలిచిపోతుంది
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
      "పంట మార్పిడి, తెగులు నిరోధకత కలిగిన రకాలు ఎంచుకోవడం, పొలాన్ని శుద్ధి చేయడం లాంటి ప్రాథమిక చర్యలు ఎంచుకోవాలి. 
రంగుల్లో (నీలం, పసుపు లేదా తెలుపు) ఉండే జిగురు కాగితాలు  లేదా నర్సరీ లేదా పొలంలో నీటి ట్యాప్స్ ఉపయోగించి ప్రౌఢ తామర పురుగులను పెద్ద సంఖ్యలో పట్టుకోవడం ద్వారా వాటి తీవ్రతను గమనించవచ్చు.  
నీలం రంగు జిగురు కాగితాలు ఉపయోగించడం వల్ల వాటిలో కీటకాలు చిక్కుకుని చనిపోతాయి. పంటకు ఎక్కువ మోతాదులో ఎరువులు వేయకండి. ఇలా చేయడం వల్ల పంట ఎక్కువ పచ్చదనంగా మారుతుంది. తద్వారా, తామర పురుగులను ఆకర్షిస్తుంది. 
 తామర పురుగుల జీవిత చక్రాన్ని హాని  చేయడానికి గ్రీన్ హౌస్‌ (నర్సరీల వంటివి)లలో క్రిమిసంహారక ధూపం వేయాలి లేదా వారం లేదా అంతకంటే ఎక్కువ రోజులు వేడి పరిస్థితులు కల్పించాలి. 
 ప్రధాన పంటతో పాటు బంతి పువ్వుల వంటి అనుబంధ పంటలు వేయడం ద్వారా అవి తామర పురుగులను ఆకర్షిస్తాయి."
         ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
"*నీలం రంగు జిగురు ఆటలు ఎకరానికి 10 అమర్చుకోవాలి.
*ఎకరానికి ఇమిడాక్లోప్రిడ్ 70% WS తో@ 400-600గ్రాములు/100కేజీ విత్తనాలు  విత్తనశుద్ధి చేయాలి.
*ఫీప్రోనిల్ 5% SC @ 320-400 మి.లీ. లేదా లాంబ్డాసైహలోత్రిన్ 5% EC @ 120 మి.లీ. లేదా స్పైనోసాడ్ 45% SC @ 64 మి.లీ. లేదా థియాక్లోప్రిడ్ 21.7% SC @ 90-120 మి.లీ. లేదా అసిటమాప్రిడ్ 20% SP @ 20-40 గ్రాములు లేదా ఎమామేక్టిన్ బెంజోయేట్ 5% SG @ 80 గ్రాములు రెండువందల లీటర్ల నీటిలో కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis3 extends StatelessWidget {
  const Dis3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('తెల్ల దోమ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/disease/whitefly.jpeg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'రసం పీల్చు పురుగు',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* బలహీనమైన లేదా తక్కువ శక్తి కలిగిన మొక్కలు. 
* నీటి ఎద్దడి మరియు అధికంగా నీరు పెట్టడం వల్ల మొక్కల్లో ఏర్పడే ఒత్తిడి, అవసరమైన సూర్యకాంతి లేకపోవడం లాంటి ప్రతికూల వృద్ధి పరిస్థితుల్లో తెల్ల దోమలే కాకుండా ఇతర కీటకాలూ దాడి చేస్తాయి.
* స్థానిక పరిస్థితులు మరియు వాతావరణానికి తగని పంటలు పండించడం. 
* పంటలకు నత్రజని (నైట్రోజన్) పోషకాలను మోతాదుకు మించి అందించడం వల్ల మొక్కలోని భాగాలు మృదువుగా మరియు పీల్చగలిగేలా మారడంతో పాటు తెల్ల దోమలను ఆకర్షిస్తాయి. 
* కీటకనాశనులను విచక్షణారహితంగా ఉపయోగించడం వల్ల, తెల్ల దోమలకు సహజ శత్రువులైన పురుగులను అవి నాశనం చేస్తాయి. 
* తగిన పోషకాలు అందించకపోవడం, పంట పొలాల్లో కలుపు నిర్వహణ పద్ధతులు నాసిరకంగా ఉండడం.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
"• తెల్ల దోమలు ఆకుల్లోని రసాన్ని పీల్చేస్తాయి. 
• పిల్ల పురుగులు మరియు ప్రౌఢ పురుగులు ఆకుల అడుగు భాగంలో కనిపిస్తాయి.
• తెగులుకి గురైన ఆకులు పసుపు రంగులో కనిపిస్తాయి, మొక్క పెరుగుదల తగ్గిపోతుంది, ఆకులు మరియు ఫలాలు  
• నాసిరకం నాణ్యతతో ఉంటాయి. 
• తెల్ల ఈగ దోమలు తెగులుకి గురైన పంటల్లో, పంట మొక్కలు కదిలినప్పుడు పైకి ఎగిరే తెల్ల దోమల గుంపు తెల్లటి చిమ్మట్ల గుంపులా 
• కనిపిస్తుంది 
• పెద్ద ఈగలే కాకుండా పిల్ల ఈగలు కూడా తేనె వంటి పదార్థం స్రవిస్తాయి. కొద్దిరోజులకు ఆ స్రావాల మీద నల్లగా పొగబారినట్టుగా ఉండే బూజు కనిపిస్తుంది. 
• తెల్ల దోమల తెగులు ఉధృతమై, నియంత్రించలేని పరిస్థితి ఏర్పడితే, కొమ్మలు చనిపోతాయి. చివరకు మొక్క కూడా చనిపోవచ్చు 
• తెల్ల దోమల్లోని చాలా జాతులు వైరస్ వ్యాధులను సంక్రమింపజేస్తుంటాయి."
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
    "• తెల్ల దోమలను ఆకర్షించడానికి పొలం చుట్టూ తెల్ల దోమ ఆకర్షక పంటలు సాగు చేయవచ్చు. ఉదాహరణకు: జొన్న అడవి పత్తి 
• పసుపు రంగులోని జిగురు అట్టలను అక్కడక్కడ కట్టడం వల్ల ప్రౌఢ ఈగలు అందులో చిక్కుకుని చనిపోతాయి. 
• తెల్ల దోమ తెగులు సోకిందేమో గుర్తించడానికి పంటలను క్రమం తప్పకుండా పరిశీలించాలి. అలాగే, పంట ప్రారంభ దశల్లో నిర్వహణ అనేది సులభంగా మరియు చౌకగా ఉంటుంది. 
• కలుపు మొక్కలనేవి తెల్ల దోమలకు ఆశ్రయంగా మారొచ్చు. కాబట్టి, పొలంలో కలుపు మొక్కలు లేకుండా చూడడం వల్ల తెల్ల దోమల తెగులు నివారించవచ్చు. 
• గత పంట వ్యర్థాలను సరైన రీతిలో తొలగించడం, పొలంలోని మట్టికి బాగా ఎండ తగిలేలా చూడడం ద్వారా తర్వాతి పంటలో తెల్ల దోమ తెగులు తీవ్రతను తగ్గించవచ్చు."
            ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*పసుపు రంగు జిగురు ఆటలు ఎకరానికి 10-12  అమర్చుకోవాలి.
*ఎకరానికి డైఫెన్థియురాన్ 50% WP @ 250 గ్రాములు లేదా అసిటమాప్రిడ్ 20% SP @ 60 గ్రాములు లేదా థియామేథోక్సమ్ 25% WG @ 40 గ్రాములు లేదా థియాక్లోప్రిడ్ 240 SC @ 150 మి.లీ. మోతాదులో నీటికి కలిపి పిచికారి చేయాలి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis4 extends StatelessWidget {
  const Dis4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('కాయ తొలుచు పురుగు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset('images/disease/fruitborer.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ఆకు మరియు కాయ తొలుచు పురుగు',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
సరికాని పోషక నిర్వహణ పద్ధతులు
కాయ తొలుచు పురుగు ఏడాది పొడవునా చురుకుగా ఉంటుంది, ముఖ్యంగా మితమైన వాతావరణం ఉన్న ప్రదేశాలలో.
పేలవమైన కలుపు నిర్వహణ

''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* 1 వ మరియు 2 వ ఇన్‌స్టార్ స్టేజ్ లార్వా ఆకులను చిత్తు చేసి ఫీడ్ చేస్తుంది.
  తరువాతి దశలలో, లార్వా పండ్లలోకి వస్తాయి మరియు అంతర్గత గుజ్జును తింటాయి.
* లార్వా పండ్లపై వృత్తాకార రంధ్రాలను చేస్తుంది మరియు రంధ్రం లోపల తల భాగాన్ని మాత్రమే ఉంచే అంతర్గత భాగాన్ని తింటుంది.
  పండ్ల  విషయంలో ముట్టడి సర్వసాధారణం, అయితే పండ్ల యొక్క ఆమ్లత్వం పెరిగేకొద్దీ పండిన తరువాత, క్రమంగా లార్వా ప్రాధాన్యత తగ్గుతుంది, అందువల్ల ముట్టడి కూడా తగ్గుతుంది.
  ఒక లార్వా 8-10 పండ్లను సోకుతుంది.
* రంధ్రం తయారుచేసేటప్పుడు మరియు తినేటప్పుడు, అవి సూక్ష్మజీవులు పండ్లలోకి ప్రవేశించే వ్యాధికి మార్గం చూపుతాయి మరియు తరువాత పండ్లు కుళ్ళిపోవడానికి కూడా దారితీయవచ్చు.
* ఇది పంటకు 50-60% నష్టాన్ని కలిగిస్తుందని నివేదించింది (పండ్ల ఉత్పత్తి), తీవ్రమైన ముట్టడిలో, ఇది 80% పండ్ల నష్టానికి దారితీయవచ్చు.
 పెద్దలు పైభాగంలో మరియు ఎగువ పందిరిలో మరియు పువ్వులపై కూడా ఆకుల దిగువ ఉపరితలంపై గుడ్లు పెడతారు.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
     ప్యూపను సూర్యరశ్మికి బహిర్గతం చేయడానికి పంటను కోసిన తరువాత లోతైన దున్నుట సహజంగానే వాటిని చంపుతుంది మరియు తరువాతి కాలంలో మంచి రక్షణ ఇస్తుంది.
రోగ  నిరోధక రకాలను పెంచుకోండి.
 40 రోజుల వయసున్న ఆఫ్రికన్ పొడవైన బంతి పువ్వు మరియు 25 రోజుల టమోటా మొలకలని 1:10 వరుసలలో పెంచండి, ఇది గుడ్లు పెట్టడానికి పెద్దలను ఆకర్షిస్తుంది.
వయోజన చిమ్మటలను ఆకర్షించే మరియు చంపే తేలికపాటి ఉచ్చులను వ్యవస్థాపించండి.
హెలియూర్‌తో ఫేరోమోన్ ఉచ్చులను వ్యవస్థాపించండి ac 6-8 / ఎకరాలు పెద్దలను ఆకర్షిస్తాయి, 15 రోజులకు ఒకసారి ఎరను మార్చండి.
మరింత వ్యాప్తి చెందకుండా ఉండటానికి దెబ్బతిన్న పండ్లను సేకరించి నాశనం చేయండి.
8 ఎకరానికి 8-10 పక్షి పెర్చ్‌లు ఉంచండి, ఇది పండ్ల బోరర్‌కు ఆహారం ఇచ్చే పురుగుల పక్షులను ఆహ్వానించడానికి సహాయపడుతుంది.
 పండ్ల పరిపక్వత తర్వాత పురుగుమందులను పిచికారీ చేయవద్దు.
             ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*ఎకరానికి నాలుగు లేదా ఐదు లింగాకర్షణ బుట్టలు పెట్టడం ద్వారా పురుగుల ఉనికిని గుర్తించి సకాలంలో నిరోధించడానికి వీలవుతుంది. 
*  ఎర్రలు ప్రతి రెండు లేదా మూడు వారాల గడువులో మార్చుకుంటూ ఉండాలి.  
* ఎకరానికి ఎమామెక్టిన్ బెంజోయేట్ @ 5% SG 100 గ్రాములు లేదా స్పైనోసాడ్ 25%SC @ 75 మి.లీ. లేదా  క్లోరోఫిన్ ఫైర్ 10% SC @ 400 మి.లీ. లేదా ఫ్లూ బెండమడ్ 480SC @ 150 మి.లీ. నీటికి కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis5 extends StatelessWidget {
  const Dis5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('నల్లి'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/mites.jpg',
                      height: 500,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'రసం పీల్చు నల్లి',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
 నల్లి  అధిక తేమ మరియు తక్కువ ఉష్ణోగ్రత ఉన్న ప్రాంతాలను ఇష్టపడతాయి    
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
• లేత ఆకులకు తెగులు సోకినప్పుడు వాటి అంచులు వెనుక వైపునకు చుట్టుకుపోతాయి. 
• తెగులు సోకిన ఆకులు సాగినట్టుగా, ముదురు పచ్చ రంగులోకి మారుతాయి. పెరిగే లేత కాండ భాగంలో పెరుగుదల ఆగిపోతుంది. 
• కొత్తగా పెరుగుదల ఉండదు, పుష్పాలు ఉండవు, ఫలాలు ఉండవు, ఒకవేళ ఉన్నప్పటికీ నాసిరకం నాణ్యతతో ఉంటాయి.
• తెగులు సోకిన ఆకులలు మందంగా మారుతాయి మరియు అవి ఎర్ర రంగులోకి కూడా మారుతాయి
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
• మొక్కలను శుభ్రమైన మరియు ఆరోగ్యవంతమైన పర్యావరణాల్లో సాగు చేయడంతో పాటు సరైన పోషక నిర్వహణ పద్ధతులు పాటించడం వల్ల మొక్కల బలంగా ఎదగడంతో పాటు పురుగుల దాడిని తట్టుకునే సామర్థ్యంతో ఉంటాయి. 
• పంటకు సమీపంలో ప్రత్యామ్నాయ ఆతిధేయి మొక్కలు ఉన్నాయేమో చూడండి. లేని పక్షంలో, అలాంటి పంటలను ఎర పంటలుగా కూడా సాగు చేయవచ్చు. 
• పరిశుభ్రత పాటించడంతో పాటు శిక్షణ పొందిన పనివారితో పనులు చేయించడం ద్వారా  ఎర్ర నల్లి పురుగుల వ్యాప్తిని నివారించవచ్చు.
         ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఎకరానికి సల్ఫర్ 80% WP @ 600 గ్రాములు లేదా స్పైరోమెఫిసిన్ 240 SC @ 200 మి.లీ. లేదా ప్రొపర్ గైట్ 57% EC @ 400 గ్రాములు నీటికి కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis6 extends StatelessWidget {
  const Dis6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('నారుకుళ్ళు (మాగుడు) తెగులు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/damping off.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "కొమ్మ, వేరు ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*అధిక మోతాదులో ఎరువులు వాడటం వల్ల నారుకుళ్ళు  తెగులు సంక్రమించే అవకాశం ఉంది.
*నీటి యాజమాన్యం సరి లేనందువలన నారుకుళ్ళు తెగులు సంక్రమించే అవకాశం ఉంది.
*నాసిరకం విత్తనాలు వేయటం వల్ల ఎత్తడం వల్ల నాసి రకం విత్తనాలు లేదా గడువు దాటిన విత్తనాలు విత్తడం వల్ల మొక్కలు చనిపోతాయి.
*వ్యాధి సోకిన పనిముట్లతో కలుపు తీయడం వల్ల మరియు పొలంలో వాడే ఇతర పనిముట్లు వల్ల ఈ వ్యాధి సంక్రమించే అవకాశం ఉంటుంది.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*ఆవిర్భావానికి ముందు నారు కుళ్ళు: మొలకల నేల ఉపరితలం నుండి బయటికి రాకముందే విచ్ఛిత్తి చెందుతాయి, ఇది విత్తనాల అంకురోత్పత్తిని దెబ్బతీస్తుంది
* ఆవిర్భావానికి తర్వాత  నారు కుళ్ళు: మొలకలు నేల నుండి బయటకు వచ్చిన తర్వాత కానీ కాండం గట్టిగా అవ్వకముందు ఈ తెగులు అభివృద్ధి చెందుతుంది. 
* మొక్క మొదలలో నీటిలో నానినట్టుగా గాయం ఏర్పడుతుంది. 
* వ్యాధి సోకిన ప్రాంతాలు గోధుమ రంగులోకి మారి కుళ్లిపోతాయి.
* కణజాలం మృదువుగా మారడం వల్ల మొక్కలు ముడుచుకుపోతాయి మరియు కూలిపోతాయి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
"*మట్టిని శుద్ధి చేయడం మరియు  అనేకసార్లు లోతుగా దున్నిన తర్వాత మట్టిని సూర్యరశ్మికి బహిర్గతం చేయటం వ్యాధికారక క్రిములను నశింపజేయటంలో సహాయపడతాయి.
* ట్రైకోడెర్మ్ వైరైడ్, ట్రైకోడెర్మ్ హార్జియానం, సూడోమోనాస్ ఫ్లోరోసెన్స్ వంటి పరాన్నజీవులను కుళ్ళిపోయిన పశువుల ఎరువుతో పాటు మట్టికి అందించడం వల్ల, ఇవి వ్యాధిని కలిగించే వ్యాధికారకలను చంపగలవు.
* సరైన నీటి పారుదల వసతి కలిపించడం వల్ల నారు కుళ్ళును నివారించవచ్చు.
*మంచి నాణ్యమైన శుద్ధి చేసిన విత్తనాలను ఉపయోగించండి లేదా విత్తనాలు విత్తే ముందు శిలీంద్రనాశకాలు [జీవ మరియు రసాయన] వంటి అవసరమైన వ్యాధి నియంత్రణ ఏజెంట్లతో విత్తనాలను శుద్ధి చేయండి.
*మొక్కలు మరియు వరుసల మధ్య అంతరం కూడా వ్యాధి అభివృద్ధిని ప్రభావితం చేస్తుంది, ఇది నారు కుళ్ళుకు దారి తీస్తుంది, కాబట్టి తగినంత అంతరం ఏర్పాటు చేయడం అవసరం. "
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*మొక్కల మధ్య దూరాన్ని సిఫారసు చేసిన విధంగా ఉండేలా పాటించాలి.  
* తెగులును తట్టుకునే రకాలను ఎన్నుకొని సాగు చేయాలి. 
* ఎకరానికి కాప్టాన్ 75% WP @ 800 గ్రాములను నాలుగు వందల లిటర్ల నీటిలో కలిపి పిచికారి చేయాలి. 
* మేటలాక్సిల్ @ 2 గ్రాములు లేదా కాపర్ ఆక్సి క్లోరైడ్ @ 3 గ్రాములు ఒక లీటర్ నీటిలో కలిపి మొదళ్లలో పోయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis7 extends StatelessWidget {
  const Dis7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('కొమ్మ ఎండు మరియు కాయకుళ్ళు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/anthracnose.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
 * తెగులు వ్యాప్తికి అనుకూలంగా మారుతుంది.
*తడి మరియు వెచ్చటి వాతావరణం అనేది తెగులు తీవ్రతకి అనుకూలంగా మారుతుంది.
*అధిక తేమ శాతం >95% ఉంటే తెగులు వ్యాప్తికి అనుకూలం.
* తరచూ వర్షాలు పడడం, పంట పైభాగం నుండి నీరు పెట్టడం లాంటి కారణాల వల్ల ఆకులు మరియు కాయల మీద తేమ  దీర్ఘకాలంగా కొనసాగితే  (5-6 గంటలు), అది తెగులు వ్యాప్తికి అనుకూలంగా మారుతుంది.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*చిన్న, వృత్తాకారం నుండి సక్రమంగా లేని, గోధుమరంగు నల్లని చెల్లాచెదురుగా ఉన్న మచ్చలు ఆకులపై కనిపిస్తాయి.
*తీవ్రంగా తెగులు సోకిన ఆకులు రాలిపోతాయి.
* పువ్వుల కాడల వద్ద మరియు కొమ్మల కొనల వద్ద తెగులు సోకడం కారణంగా పువ్వులు రాలిపోతాయి.
* కాయలపై చిన్న, వృత్తాకార, పసుపురంగు నుండి గులాబీ రంగులో గుంట లాంటి  మచ్చలు కనిపిస్తాయి.
* కాయల పొడవుతో పాటు మచ్చలు పెరగటమే కాక దీర్ఘవృత్తాకార ఆకారాన్ని పొందుతాయి. 
* తీవ్రమైన తెగులు ఫలితంగా కాయలు ముడుచుకుపోతాయి మరియు ఎండిపోతాయి. 
* గాయాల చుట్టూ ఉన్న కణజాలాలు తెల్లబడటం మరియు తెల్లగా లేదా బూడిద రంగులోకి మారుతాయి మరియు వాటి ఘాటును కోల్పోతాయి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
"*మల్చింగ్ షీట్‌ను పంట మరియు నేల మధ్య అవరోధంగా ఉపయోగించడం వల్ల వ్యాధి అభివృద్ధిని తగ్గించవచ్చు.
*శిలీంధ్ర బీజాంశం వ్యాప్తికి దారితీసే పంట పై నుండి నీటి పారుదలని నివారించండి, బదులుగా బిందు సేద్యా పద్ధతిని ఉపయోగించండి.
*నేల/మట్టికి కాయలను తాకకుండా చూస్కోండి.
* మొక్కల మధ్య అంతరం పెంచడం వల్ల వ్యాధి సంభవం తగ్గుతుంది.
       ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* తెగులు ఆశించిన మొక్కలను ముందే తొలగించడం వల్ల తెగులు వ్యాప్తిని  నియంత్రించవచ్చు.
* మాంకోజెబ్ 63%WP @ 2.5 గ్రాములు లేదా ప్రొపికోనజోల్ 25% EC @ 1 మి.లీ. లేదా డైఫినోకోనజోల్ 25 % EC @ 0.5 మి.లీ. ఒక లీటర్ నీటిలో కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis8 extends StatelessWidget {
  const Dis8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('బూడిద తెగులు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/powdery mildew.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
 *అధిక తేమ శాతం తెగులు వ్యాప్తికి అనుకూలం.
* చల్లటి పొడి వాతావరణం కోనిడియల్ అంకురోత్పత్తికి అనుకూలంగా ఉంటుంది.
*ఆరోగ్యకరమైన యువ మొక్కల మీద కంటే పాత మరియు ఒత్తిడితో కూడిన మొక్కలపై ఈ వ్యాధి ప్రభావితం ఎక్కువ ఉంటుంది.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* తెగులు సోకిన మొక్కల అడుగు భాగమున బూడిద వంటి మచ్చలు ఏర్పడి క్రమేణా అవి  ఆకులపై భాగంలోకి వ్యాప్తి చెందుతాయి. 
* తదనుగుణంగా ఆకుల పై భాగమున  పసుపు మచ్చలను గమనించవచ్చు.
* తీవ్రమైన ఉధృతి కారణంగా తెగులు సోకిన ఆకులు ఎండిపోతాయి మరియు రాలిపోతాయి.  
* కొమ్మలు మరియు పిందెలపై కూడా బూడిద వంటి పదార్ధాన్ని గమనించవచ్చు.
* తెగులు సోకిన కాయలు ఎదగకుండా రాలిపోతాయి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* నర్సరీలో నారు దట్టంగా లేకుండా చూసుకోవాలి. వాటిని పొలంలో నాటడానికి ముందు తెగులు లక్షణాలు ఉన్నాయేమో అని జాగ్రత్తగా పరిశీలించాలి. 
* క్రమేణా కలుపుని నియంత్రించాలి.
* మొక్కల మధ్య తగినంత దూరం ఉంచాలి దానివల్ల  మొక్కకి చక్కని గాలి మరియు వెలుతురు లభిస్తాయి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఎకరానికి అజాక్సీస్ట్రాబిన్ 11% + టెబ్యూకోనజోల్ 18.% @ 400 గ్రాములు లేదా సల్ఫర్ WDG (థియోవెట్) @ 1కేజీ నీటిలో కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis9 extends StatelessWidget {
  const Dis9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ఎండు తెగులు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/wilt.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఈ తెగులు మట్టిక నుండి వ్యాపిస్తాయి. ప్రభావిత మట్టికలో ఈ తెగుల కారకాలు అనేక సంవత్సరాలు ఉండడంతో పాటు అందులో వేసే పంటలకు వ్యాపిస్తాయి. 
* pH (5.0-5.6)తో ఉండే ఆమ్లయుత నేలలతో వెచ్చటి, పొడి వాతావరణం ఉన్నప్పుడు ఈ తెగులు వ్యాప్తి తీవ్రమవుతుంది.
* కలుషిత విత్తనాలు మరియు కలుషిత నేలల్లో పెంచిన మొలకల ద్వారా కూడా ఈ తెగులు వ్యాపిస్తాయి. 
* అమ్మోనియా సహిత నత్రజని ఎరువుల వల్ల కూడా ఈ తెగుల తీవ్రత పెరుగుతుంది
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఆకులు రాలడం మరియు కింద భాగంలోని ముదురు ఆకులు ప్రకాశవంతమైన పసుపు రంగులోకి మారడం లాంటి ప్రారంభ లక్షణాలు మొక్కకు ఒకవైపు భాగాన కనిపిస్తాయి.  కాండం మీద ఒకవైపు కాడలకు ఉండే ఆకులు పసుపు రంగులోకి మారిన తర్వాతే మరొక వైపు అలా మారతాయి. 
* తెగులు తీవ్రమయ్యే కొద్దీ కింది భాగంలోనే ఆకులే కాకుండా క్రమంగా పై భాగంలో ఉండే  ఆకులు కూడా పసుపురంగులోకి మారతాయి. 
* మొక్కలు పగటి వేళల్లో ఎండిపోయినట్టు మరియు రాత్రి వేళల్లో సాధారణంగా కనిపిస్తాయి.
* విల్ట్ సోకిన ఆకులు ఎండిపోయి మొక్క నుండి రాలిపోతాయి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఆరోగ్యకరమైన విత్తనాలు విత్తండి  మరియు వ్యాధి-రహిత నారుని మాత్రమే నాటండి.
* వ్యాధి లేని నేలలో పంటను పండించండి.
* సున్నం వేయడం ద్వారా నేల pHని 6.5-7.0కి పెంచండి.
* నైట్రేట్ నైట్రోజన్ ఎరువులు (కాల్షియం నైట్రేట్ వంటివి) వాడండి, ఇది వ్యాధి తీవ్రతను తగ్గిస్తుంది మరియు అమ్మోనికల్ నైట్రోజన్‌ను ఉపయోగించవద్దు.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* కాపర్ ఆక్సి క్లోరైడ్ 50%WP @ 3 గ్రాములు లేదా మేటలాక్సిల్ 4% +మాంకోజెబ్ 64% @ 2 గ్రాములు ఒక లీటర్ నీటికి కలిపి మొదళ్లలో పోయాలి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################
class Dis10 extends StatelessWidget {
  const Dis10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('కానొఫొరా కొమ్మ కుళ్ళు'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/choaneophora blight.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* వెచ్చని, వర్షపు మరియు తడి వాతావరణం 28 °C ఉష్ణోగ్రతతో పాటు 97% కంటే ఎక్కువ తేమ శాతం ఉంటే వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటుంది.
* వెచ్చని, వర్షపు మరియు తడి వాతావరణం 28 °C ఉష్ణోగ్రతతో పాటు 97% కంటే ఎక్కువ తేమ శాతం ఉంటే వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటుంది.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* వ్యాధికారక క్రిములు వృద్ధాప్య రేకుల ద్వారా పువ్వులపై దాడి చేస్తాయి మరియు పువ్వులపై పెరుగుతాయి, ఫలితంగా కుళ్ళిన కణజాలం యొక్క గోధుమ లేదా నలుపు ద్రవ్యరాశి ఏర్పడుతుంది.
* పూల కాడాలు, మొగ్గలు మరియు ఆకులు తదనంతరం దాడికి గురవుతాయి.
* తెగులు సోకిన కణజాలాలపై మీసాల వంటి గట్టి వెండి ద్రవ్యరాశి లేదా శిలీంధ్రాల పెరుగుదల  యొక్క వెంట్రుకల తంతువులు అభివృద్ధి చెందుతాయి, దానిపై నల్లటి బీజాంశం ఉత్పత్తి అవుతుంది, ఇది ప్రధాన రోగనిర్ధారణ లక్షణం.
* కాయలలో తెగులుని ప్రధానంగా రక్షకపత్రావళి చుట్టూ గమనించవచ్చు. వ్యాధి సోకిన పిందెలు రాలిపోవచ్చు.
* ఈ తెగులు లేత కొమ్మల్లో కొనభాగం నుండి ఎదిగే కొనల వద్దకు వ్యాపించడాన్ని (డై-బ్యాక్ లక్షణం) గమించవచ్చు.
* వ్యాధి సోకిన మొక్కల కాండం తడిగా మరియు ఆకుపచ్చగా కనిపిస్తుంది మరియు బెరడు ముక్కలు ముక్కలుగా ఊడిపోతుంది.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*ఎత్తైన నారుమడుల పై ప్లాస్టిక్ మల్చ్‌ వేసి మొక్కలని నాటడం వల్ల  తేమతో కూడిన నేల మరియు తెగులు సోకిన మొక్కల అవశేషాల నుండి వచ్చే తెగులును తగించవచ్చు.
*  మొక్కల మధ్య అంతరం పెంచడం వల్ల వ్యాధి సంభవం తగ్గుతుంది.
* ఎక్కువ కాలం ఆకు తడిగా ఉండకుండా ఉండటానికి పంటపై నుండి నీటిపారుదలని నివారించడం ఈ వ్యాధిని నివారించడంలో సహాయపడుతుంది. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* కాపర్ ఆక్సి క్లోరైడ్ 50%WP @ 30 గ్రాములు లేదా కాపర్ హైడ్రాక్సైడ్ @ 20 గ్రాములు + ప్లాంటోమైసిన్ @ 1 గ్రాములు పది లీటర్లు నీటిలో కలిపి పిచికారి చేయాలి.
* అజాక్సీస్ట్రాబిన్ 23% SC @ 2 మి.లీ. లేదా  ట్రైఫ్లోఆక్సీస్ట్రాబిన్ 25% + టెబ్యూకోనజోల్ 50% @ 1.6 గ్రాముల ఒక లీటర్ నీటిలో కలిపి పిచికారి చేయాలి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
//##############################################################################

class Dis11 extends StatelessWidget {
  const Dis11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('బాక్టీరియా ఆకుమచ్చ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/bacterial leaf spot.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'బాక్టీరియా',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* ఈ వ్యాధి సంక్రమణకి తక్కువ ఉష్ణోగ్రత మరియు అధిక తేమ శాతం అనుకూలం.
* వర్షపు వాతావరణం వల్ల కురిసిన నీటి బిందువుల ద్వారా బాక్టీరియా వ్యాప్తి చెంది వ్యాధి సంక్రమణకి దారి తీస్తుంది.
* దీర్ఘకాలం పాటు ఆకు తడి వ్యాధి సంక్రమణకి అనుకూలిస్తుంది.
 ''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*ఆకులు, పండ్లు మరియు కాండం ప్రభావితమవుతాయి.
*ఆకుపై గాయాలు వృత్తాకారంలో, నీటిలో తడిసిన మచ్చలుగా ప్రారంభమవుతాయి.
* గోధుమ రంగు మచ్చల చుట్టూ పసుపు రంగువలయం కలిగి ఉంటుంది.
*విస్తరించిన మచ్చలు గడ్డి రంగు కేంద్రాలను అభివృద్ధి చేయవచ్చు.
* దిగువ ఆకు ఉపరితలంపై గాయాలు కొద్దిగా ఎత్తుగా ఉంటాయి.
* తీవ్రంగా మచ్చలున్న ఆకులు పసుపు రంగులోకి మారి రాలిపోతాయి.
* ఎత్తుగా ఉన్న గోధుమ రంగు గాయాలు పండ్లపై కనిపిస్తాయి.
* ఇరుకైన పొడుగు గాయాలు లేదా చారలు కాండం మీద అభివృద్ధి చెందుతాయి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* విత్తనాల ద్వారా వ్యాధి వ్యాప్తిని నివారించడానికి ఆరోగ్యకరమైన విత్తనాలను ఉపయోగించండి.
* వ్యాధిని నివారించడానికి మరియు ఆరోగ్యకరమైన మొలకలను పెంచడానికి విత్తన శుద్ధి చెయ్యండి.
* పంటలో మరియు మట్టిలో  వ్యాధికారక బాక్టీరియా కలిగి ఉంటుంది అందుకే  అతిధేయ కానటువంటి చిన్న ధాన్యాలు మరియు మొక్కజొన్నలు పంటలతో పంట మార్పిడి చెయ్యండి.
* వ్యాధి కనిపించినప్పుడు నీటిని పంట పై నుండి పోయకుండా లేదా స్ప్రింక్లర్ ద్వారా  కాకుండా బోదెల ద్వారా నీటిని పెట్టండి దీనివల్ల బ్యాక్టీరియా స్ప్లాష్‌ల ద్వారా  వ్యాధి వ్యాప్తిని నివారించవచ్చు.
* వ్యాధి అభివృద్ధికి అనుకూలమైన చల్లని మరియు తడి పరిస్థితులకు మొక్కలు బహిర్గతం కాకుండా పంటని ఆలస్యంగా నాటండి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* కాపర్ ఆక్సి క్లోరైడ్ 50%WP @ 30 గ్రాములు లేదా కాపర్ హైడ్రాక్సైడ్ @ 20 గ్రాములు + ప్లాంటోమైసిన్ @ 1 గ్రాములు పది లీటర్లు నీటిలో కలిపి పిచికారి చేయాలి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################

class Dis12 extends StatelessWidget {
  const Dis12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('సెర్కోస్పోరా ఆకుమచ్చ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/cercospora.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'మొలక దశ, వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'శిలీంధ్రం (ఫంగస్)',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* అధిక తేమ, భారీ మంచు మరియు వర్షపు వాతావరణంతో పాటు 21 ° C కంటే ఎక్కువ ఉష్ణోగ్రత వ్యాధి సంక్రమణకి అనుకూలిస్తుంది. 
* దీర్ఘకాలం పాటు ఆకు తడి వ్యాధి సంక్రమణకి అనుకూలిస్తుంది.
* పేలవమైన పారుదల మరియు తక్కువ భూసారం వ్యాధి సంక్రమణకి అనుకూలిస్తుంది.
* మొక్కలని దగ్గరగా నాటడం వ్యాధి సంక్రమణకి అనుకూలిస్తుంది.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*లోపల బూడిద రంగు చుట్టు గోధుమ రంగు అంచులతో కూడిన వృత్తాకారపు మచ్చలు ఆకులపై గమనించవచ్చు.
*మచ్చలు పెరుగుతాయి మరియు ఇతర మచ్చలతో కలిసిపోతాయి.
*మచ్చ యొక్క మధ్య భాగం తెల్లగా మారుతుంది మరియు ఆకులు పసుపు రంగులోకి మారి మరియు రాలిపోతాయి.
* కొన్నిసార్లు మచ్చ యొక్క మధ్య భాగం రాలిపోతుంది.
*కాండం మరియు కొమ్మలపై కూడా మచ్చలు ముదురు గోధుమ రంగులో, తెల్లటి కేంద్రాలతో క్రమరహిత గాయాలుగా కనిపిస్తాయి.
* తీవ్రమైన సందర్భాల్లో కొమ్మలు చనిపోవడం జరుగుతుంది.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*సరైన నీటి పారుదల ఉన్న నేలల్లో నాటాలి.
* వ్యాధి నిరోధక రకాలను పెంచాలి.
*సిఫార్సు చేసిన అంతరంలో మొక్కలను నాటాలి. 
* తెగులు సోకిన ఆకులను క్రమానుగతంగా తొలగించి కాల్చివేయాలి. 
*తగినంత పొటాషియం ఎరువులు అందించాలి.
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* కార్బెండిజమ్ 50% WP @ 2 గ్రాములు లేదా మాంకోజెబ్ 62% + త్రిసైక్లో అజోల్ 18% @ 2 గ్రాములు లేదా కార్బెండిజమ్ 12% + మాంకోజెబ్ 63%WP @ 2.5 గ్రాములు ఒక లీటర్ నీటిలో కలిపి పిచికారి చేయాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

//##############################################################################

class Dis13 extends StatelessWidget {
  const Dis13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' ఆకు ముడత వైరస్ (జెమిని వైరస్)'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/disease/gemini virus.jpg',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 450,
              child: Card(
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'పంట దశ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'వృధి దశ, పూత దశ, కాపు దశ, కోత దశ',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'ముట్టడి భాగం',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ఆకు, కొమ్మ, పూత,కాయ",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'చీడపీడ రకం ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'వైరస్',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Card(
                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ప్రధాన కారణం',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* కీటకాలు ఆశించిన పంటలకు వైరస్ వచ్చే అవకాశం ఎక్కువ
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.yellowAccent[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'లక్షణాలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* మిరపలో ఆకు ముడత- ముర్దా వ్యాధి, భారతదేశంలోని  మిరప పంటలను విధ్వంసం చేసే వ్యాధి.
* ఆకు ముడత, ఆకు చుట్టు, ఆకుల మొద్దుబారిపోవటం వంటి సాధారణ లక్షణాలను  జెమిని వైరస్ సోకిన మొక్కలలో గమించవచ్చు. 
* ఆకులు గుబూరుగా మారి మొక్కల ఎదుగుదలని నిలిపి వేస్తాయి.
* వైరస్ సోకిన ఆకులు గిడసబారిపోతాయి.
* ఈ వైరస్ తెల్ల దోమల వల్ల వ్యాప్తి చెందుతుంది. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.tealAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'నివారణ చర్యలు',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
*వైరస్ ను తట్టుకునే రకాలను సాగు చేసుకోవాలి.  
* పంట మార్పిడి విధానాన్ని అనుసరించాలి. 
* వైరస్ సోకిన మొక్కలను పొలంలో నాటకూడదు వైరస్ సోకిన వెంటనే మొక్కలను పొలం నుండి తొలగించాలి.  
*వైరస్ ను  వ్యాప్తి చేసే కీటకాలను నిర్మూలించాలి. 
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Card(
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'చికిత్స ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '''
* రసం పీల్చు పురుగులను సమర్థవంతంగా అరికట్టుటకు సూచించిన రసాయనాలను అడుగు ఆకుల అడుగు భాగం బాగా తడిచే విధంగా పిచికారి చేయాలి. 
* సమగ్ర ఎరువుల యాజమాన్యం అనుసరించడం వల్ల  మీ మొక్కలకు వైరస్ తెగులు సోకే అవకాశం తక్కువగా ఉంటుంది.  
''',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
