import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdf extends StatelessWidget {
  const ViewPdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(181, 41, 148, 178),
          title: const Text('الشهادات'),
        ),
        body: SfPdfViewer.asset("assets/cert.pdf"),
      ),
    );
  }
}
