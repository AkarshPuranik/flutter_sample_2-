import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:developer' as devtools;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? filePath;
  String label = '';
  double confidence = 0.0;

  List<String> validLabels = ['Anthracnose', 'Bacterial postule', 'FLS' 'Iron deficiency''']; // Add your valid labels here
  List<String> invalidLabels = ['Reject', 'Reject', '']; // Add your invalid labels here

  Future<void> _tfLiteInit() async {
    String? res = await Tflite.loadModel(
      model: "assets/model/model_unquant.tflite",
      labels: "assets/model/labels.txt",
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
  }

  Future<void> pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    var imageMap = File(image.path);

    setState(() {
      filePath = imageMap;
    });

    try {
      var recognitions = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true,
      );

      if (recognitions == null || recognitions.isEmpty) {
        devtools.log("No valid recognitions found");
        return;
      }

      recognitions.sort((a, b) => b['confidence'].compareTo(a['confidence']));

      final detectedLabel = recognitions[0]['label'].toString();
      if (isValidLabel(detectedLabel)) {
        setState(() {
          confidence = (recognitions[0]['confidence'] * 100);
          label = detectedLabel;
        });
      } else if (isInvalidLabel(detectedLabel)) {
        setState(() {
          confidence = 0.0;
          label = 'Object found in invalid dataset';
        });
      } else {
        setState(() {
          confidence = 0.0;
          label = 'Object not found in dataset';
        });
      }
    } catch (e) {
      print("Error running model: $e");
    }
  }

  bool isValidLabel(String detectedLabel) {
    return validLabels.contains(detectedLabel);
  }

  bool isInvalidLabel(String detectedLabel) {
    return invalidLabels.contains(detectedLabel);
  }

  Future<void> pickImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image == null) return;

    var imageMap = File(image.path);

    setState(() {
      filePath = imageMap;
    });

    try {
      var recognitions = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true,
      );

      if (recognitions == null || recognitions.isEmpty) {
        devtools.log("No valid recognitions found");
        return;
      }

      recognitions.sort((a, b) => b['confidence'].compareTo(a['confidence']));

      final detectedLabel = recognitions[0]['label'].toString();
      if (isValidLabel(detectedLabel)) {
        setState(() {
          confidence = (recognitions[0]['confidence'] * 100);
          label = detectedLabel;
        });
      } else if (isInvalidLabel(detectedLabel)) {
        setState(() {
          confidence = 0.0;
          label = 'Object found in invalid dataset';
        });
      } else {
        setState(() {
          confidence = 0.0;
          label = 'Object not found in dataset';
        });
      }
    } catch (e) {
      print("Error running model: $e");
    }
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  @override
  void initState() {
    super.initState();
    _tfLiteInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Plant Disease Detection",
          style: TextStyle(color: Colors.white), // Set app bar text color to white
        ),
        iconTheme: IconThemeData(color: Colors.white), // Set back arrow color to white
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Card(
                elevation: 20,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  width: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/scan.jpg'),
                            ),
                          ),
                          child: filePath == null
                              ? const Text('')
                              : Image.file(
                            filePath!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                label,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "The Accuracy is ${confidence.toStringAsFixed(0)}%",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  pickImageCamera();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  "Take a Photo",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  pickImageGallery();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  "Pick from gallery",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

