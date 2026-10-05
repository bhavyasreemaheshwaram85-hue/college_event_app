import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDemoApp());
}

class WidgetDemoApp extends StatelessWidget {
  const WidgetDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const WidgetDemoPage(),
    );
  }
}

class WidgetDemoPage extends StatelessWidget {
  const WidgetDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // TEXT WIDGET
              const Text(
                'Basic Flutter Widgets',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),

              const SizedBox(height: 20),

              // IMAGE WIDGET
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://picsum.photos/600/250',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // CONTAINER WIDGET
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'This is a Container Widget',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ROW WIDGET
              const Text(
                'Row Widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 40,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.grey,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // COLUMN WIDGET
              const Text(
                'Column Widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Column(
                children: const [
                  Text('First Item'),
                  Text('Second Item'),
                  Text('Third Item'),
                ],
              ),

              const SizedBox(height: 25),

              // BUTTON WIDGET
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Button Clicked!'),
                      ),
                    );
                  },
                  child: const Text('Click Me'),
                ),
              ),

              const SizedBox(height: 25),

              // STACK WIDGET
              const Text(
                'Stack Widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: 300,
                      color: Colors.indigo,
                    ),

                    const Icon(
                      Icons.school,
                      size: 80,
                      color: Colors.white,
                    ),

                    const Positioned(
                      bottom: 10,
                      child: Text(
                        'College',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // CARD AND LISTTILE
              Card(
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.event,
                    color: Colors.indigo,
                  ),
                  title: const Text('College Event'),
                  subtitle: const Text(
                    'Flutter Widget Demonstration',
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
