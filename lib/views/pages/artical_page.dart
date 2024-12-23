import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url; // Accepts a URL to display

  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller; // Late initialization of controller

  @override
  void initState() {
    super.initState();
    // Initialize the WebView when the page loads
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.url)); // Load the passed URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView"), // AppBar for the WebView page
        backgroundColor: Colors.blue,
      ),
      body: WebViewWidget(controller: controller), // WebView displays content
    );
  }
}
