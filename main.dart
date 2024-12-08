import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageEditorUI(), // Navigates to the main UI screen
      debugShowCheckedModeBanner: false,
    );
  }
}

// Main UI Screen
class ImageEditorUI extends StatelessWidget {
  const ImageEditorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meme Editor", // Title of the app
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan, // AppBar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), // Padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                // Placeholder for the image area
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
            // Buttons Row
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Placeholder for image selection action
                    },
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
                    onPressed: () {
                      // Placeholder for save action
                    },
                    icon: const Icon(Icons.save),
                    label: const Text(
                      "Save to Gallery",
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
            // Text Input Field
            TextField(
              decoration: const InputDecoration(
                hintText: "Enter text",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Font Size Slider
            Row(
              children: [
                const Text("Font Size:"),
                Expanded(
                  child: Slider(
                    value: 24, // Default value
                    min: 12,
                    max: 72,
                    divisions: 6,
                    label: "24", // Default label
                    onChanged: (value) {
                      // Placeholder for slider change action
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
