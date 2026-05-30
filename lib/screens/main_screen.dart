import 'package:flutter/material.dart';
import '../data/movie_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Recommendation App"),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: movies.length,

        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {
          final movie = movies[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(movie: movie),
                ),
              );
            },

            child: Card(
              elevation: 5,

              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      movie.image,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      children: [
                        Text(
                          movie.title,
                          textAlign: TextAlign.center,

                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text("⭐ ${movie.rating}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}