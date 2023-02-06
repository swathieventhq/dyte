import 'package:dyte_uikit/dyte_uikit.dart';
import 'package:flutter/material.dart';
import 'dyte.dart';
//import 'package:flutter_uikit/secrets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const DyteMeetingPage();
                //DyteMeetingPage();
              }),
            );
            // DyteUIKit.loadUI();
          },
          child: const Text(
            "Load UIKit",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class DyteMeetingPage extends StatelessWidget {
  const DyteMeetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DyteUIKit uiKit = DyteUIKit(
      meetingInfo: DyteMeetingInfo(
        roomName: "my first meeting",
        enableAudio: true,
        enableVideo: true,
        displayName: 'Flutter UI kit',
        authToken: "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdJZCI6IjQ2MjMwZGIyLThmMGQtNDIzNS1hYWE3LTNiOTkzOWFjYWMzNyIsIm1lZXRpbmdJZCI6IjJkZWFmNmM3LTdiYzAtNDVjNi1iOWUzLTQwYTE3NzgyZTRiOSIsInBhcnRpY2lwYW50SWQiOiI5YmQwZWZiYi1iNjRkLTRlNjMtOWRkMC1iY2QzMmY4YzkyMTAiLCJwcmVzZXRJZCI6IjJjZDRlMmRjLWZhYjItNGVjMy1hNTIxLTFiNDFjM2NmNTU4ZiIsImlhdCI6MTY3NTY2OTc1NywiZXhwIjoxNjg0MzA5NzU3fQ.UN-1f0_uYevTdCbkAa0nXXRpytIaiWMRSUxamIpDj8vpgIlkXxUpiM-JgVpjqVegHnOcVXm8OaDT9MoCNJtObplk0m6WTyc0TRNSsMYxmyrXQUbKHLTSjBB0xO2qSSVZTO2EpYjy81EmL3R3JCMblLNKtPXWSPj6824IRZab0U7F9W_kDa91OAxta7E73FzZ70CdUYfUc80YuxK-4cGv2PFYsbLrnbkpUw1mk83TwHFVvmc3263JTE0lXBUyEJEfENvf3bKLnl2NV4e5w5l82-bRoHxPyzWyNOnFLq64A8X9v_drz4ZjK50Q9EvHEjVdK0jM2GeUi0_3K1oMuWPPkA",
      ),
    );
    return uiKit.loadUI();
  }
}