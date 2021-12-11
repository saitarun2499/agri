import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Mark extends StatelessWidget {
  const Mark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('మార్కెటింగ్')),
            backgroundColor: Colors.purple,
          ),
          body: const WebView(
            initialUrl: 'https://enam.gov.in/web/dashboard/trade-data',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
