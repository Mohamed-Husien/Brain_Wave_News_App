import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(color: Color(0xff17E3Fe)),
            ),
            Text(
              'Articles',
              style: TextStyle(color: Color(0xff2A4CD4)),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
