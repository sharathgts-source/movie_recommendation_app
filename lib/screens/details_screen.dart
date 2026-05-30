import 'package:flutter/material.dart';
import '../model/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.network(movie.image),

            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [
                  Text(
                    movie.title,

                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Rating: ${movie.rating}",
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Description",

                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(movie.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}