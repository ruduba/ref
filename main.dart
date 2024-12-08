import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageEditor(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageEditor extends StatefulWidget {
  const ImageEditor({super.key});

  @override
  State<ImageEditor> createState() => _ImageEditorState();
}

class _ImageEditorState extends State<ImageEditor> {
  String? text;
  double fontSize = 24;
  Offset textPosition = const Offset(50, 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meme Editor",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: const Text(
                    "No Image Selected",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {}, // Add your function here
                    icon: const Icon(Icons.image),
                    label: const Text(
                      "Select Image",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {}, // Add your function here
                    icon: const Icon(Icons.save),
                    label: const Text(
                      "Save Meme",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) => setState(() => text = value),
              decoration: const InputDecoration(
                hintText: "Enter text",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Font Size:"),
                Expanded(
                  child: Slider(
                    value: fontSize,
                    min: 12,
                    max: 72,
                    divisions: 6,
                    label: fontSize.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        fontSize = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
