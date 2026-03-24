import 'package:flutter/material.dart';

void main() {
  runApp(const Yummy());
}

class Yummy extends StatelessWidget {
  const Yummy({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Yummy';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.orange,

        scaffoldBackgroundColor: Colors.grey[200],

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          elevation: 4.0,
          centerTitle: true,
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(fontSize: 24.0),
          ),

     
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),


        body: ListView(
          children: const [
            RecipeCard(
              title: "Pizza",
              subtitle: "Cheesy and delicious",
              imageUrl: "https://picsum.photos/200?1",
            ),
            RecipeCard(
              title: "Burger",
              subtitle: "Juicy grilled burger",
              imageUrl: "https://picsum.photos/200?2",
            ),
            RecipeCard(
              title: "Pasta",
              subtitle: "Italian classic",
              imageUrl: "https://picsum.photos/200?3",
            ),
            RecipeCard(
              title: "Salad",
              subtitle: "Fresh and healthy",
              imageUrl: "https://picsum.photos/200?4",
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const RecipeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(15),
            ),
            child: Image.network(
              imageUrl,
              width: 120,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}