import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  PdfViewer({Key? key, required this.pdfUrl, required this.pdfName})
      : super(key: key);
  final String pdfUrl;
  final String pdfName;
  final PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(pdfName),
        actions: [
          previousPageButton(),
          nextPageButton(),
        ],
      ),
      body: SfPdfViewer.network(
        pdfUrl,
        controller: _pdfViewerController,
      ),
    );
  }

  IconButton nextPageButton() {
    return IconButton(
      onPressed: () {
        _pdfViewerController.nextPage();
      },
      icon: const Icon(Icons.arrow_right),
    );
  }

  IconButton previousPageButton() {
    return IconButton(
      onPressed: () {
        _pdfViewerController.previousPage();
      },
      icon: const Icon(
        Icons.arrow_left,
      ),
    );
  }
}
