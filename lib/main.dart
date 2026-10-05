import 'package:flutter/material.dart';

void main() {
  runApp(const CollegeEventApp());
}

class CollegeEventApp extends StatelessWidget {
  const CollegeEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College Event Management',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const EventHomePage(),
    );
  }
}

class EventHomePage extends StatelessWidget {
  const EventHomePage({super.key});

  final List<Map<String, String>> events = const [
    {
      'name': 'Tech Fest 2026',
      'date': 'October 15, 2026',
      'venue': 'Main Auditorium',
      'type': 'Technical'
    },
    {
      'name': 'Cultural Fest',
      'date': 'October 20, 2026',
      'venue': 'College Ground',
      'type': 'Cultural'
    },
    {
      'name': 'Sports Meet',
      'date': 'October 25, 2026',
      'venue': 'Sports Complex',
      'type': 'Sports'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Events'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // STACK WIDGET
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.indigo, Colors.blue],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  const Positioned(
                    left: 20,
                    top: 25,
                    child: Text(
                      'Welcome to\nCollege Events!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        // Register action
                      },
                      child: const Text('Explore Events'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                'Upcoming Events',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // COLUMN + ROW WIDGETS
              Column(
                children: events.map((event) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(15),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            event['name']!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          // ROW WIDGET
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.indigo,
                              ),
                              const SizedBox(width: 8),
                              Text(event['date']!),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 8),
                              Text(event['venue']!),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Chip(
                                label: Text(event['type']!),
                                backgroundColor:
                                    Colors.indigo.shade100,
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          event['name']!,
                                        ),
                                        content: const Text(
                                          'You have selected this event.',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: const Text('Register'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new event
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
