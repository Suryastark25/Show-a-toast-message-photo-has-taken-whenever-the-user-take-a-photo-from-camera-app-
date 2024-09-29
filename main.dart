import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoCaptureScreen extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  Future<void> _takePhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // Handle the taken photo if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Take Photo')),
      body: Center(
        child: ElevatedButton(
          onPressed: _takePhoto,
          child: Text('Open Camera'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: PhotoCaptureScreen()));
}
