// ignore_for_file: prefer_const_constructors
import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = TextEditingController();
  String text = "";
  
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      
      home: Container(
        color: Colors.grey[30],
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: AutoSuggestBox(
                controller: _controller,
                items: const [
                  'Blue',
                  'Green',
                  'Red',
                  'Yellow',
                  'Grey',
                ],
                style: const TextStyle(
                  fontSize: 20
                ),
              ),
            ),

            const SizedBox(height: 350,),

            FilledButton(
              onPressed: () => setState(() => text = _controller.text),
              child: const Text(
                "Get Text",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),

            const SizedBox(height: 25,),

            Text(
              "Text: " + text,
              style: const TextStyle(
                fontSize: 22
              ),
            )
          ]
        )
      )
    );
  }
}