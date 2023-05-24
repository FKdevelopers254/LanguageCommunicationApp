import 'package:facerecognizer/pose/pose_detector.dart';
import 'package:facerecognizer/selfie/selfiesegmentor.dart';
import 'package:facerecognizer/text/text_detector_view.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'facedetector.dart';
import 'languagetranslator/entity_extraction_view.dart';
import 'languagetranslator/language_identifier_view.dart';
import 'languagetranslator/language_translator_view.dart';
import 'languagetranslator/languagechoosetranslate.dart';
import 'languagetranslator/languageteacher.dart';
import 'languagetranslator/languageteacherlistener.dart';
import 'languagetranslator/languageteacherwithspeechrate.dart';
import 'languagetranslator/listener.dart';
import 'languagetranslator/smart_reply_view.dart';
import 'mainpage.dart';

import 'object/object_detector_view.dart';


List<CameraDescription> cameras = [];



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: RHomePage(),
    );
  }
}
 
class CAi extends StatefulWidget {
  const CAi({Key? key}) : super(key: key);

  @override
  State<CAi> createState() => _CAiState();
}

class _CAiState extends State<CAi> {
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            //OLD Face Recognizer
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FaceDetectorView()),
                  );
                },
                child: Text('Face Recognizer'),
              ),
            ),

            //Text Recognizer
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextRecognizerView()),
                );
              },
              child: Text('Text Recognizer'),
            ),

            //Selfie Recognizer
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelfieSegmenterView()),
                );
              },
              child: Text('Selfie Recognizer'),
            ),

            //Pose Recognizer
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PoseDetectorView()),
                );
              },
              child: Text('Pose Recognizer'),
            ),

            //Object Recognizer
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ObjectDetectorView()),
                );
              },
              child: Text('Object Recognizer'),
            ),

            //Language Translator
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageTranslatorView()),
                );
              },
              child: Text('Language Translator'),
            ),

            //Smart Reply
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SmartReplyView()),
                );
              },
              child: Text('Smart Reply'),
            ),

            //Language ID
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageIdentifierView()),
                );
              },
              child: Text('Language ID'),
            ),

            //Entity Extraction
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntityExtractionView()),
                );
              },
              child: Text('Entity Extraction'),
            ),

            //Translate any language
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LanguageTranslatorVieww()),
                  );
                },
                child: Text('Translate Any Language'),
              ),
            ),

            //Language Teacher
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LanguageTeacher()),
                  );
                },
                child: Text('Language Teacher'),
              ),
            ),

            //Language Teacher Listener
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LanguageTeacherListener()),
                  );
                },
                child: Text('Language Teacher Listener'),
              ),
            ),

            //Listener
            Card(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SpeechPage()),
                  );
                },
                child: Text(' Listener'),
              ),
            ),



          ],
        ),
      ),
    );
  }
}






