import 'package:flutter/material.dart';

class HealthArticle {
  final String doctorName;
  final String imagePath;
  final int likes;
  final int comments;
  final int shares;
  final String shortDescription;
  final String longDescription;

  HealthArticle({
    required this.doctorName,
    required this.imagePath,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.shortDescription,
    required this.longDescription,
  });
}

class BlogsPage extends StatelessWidget {
  BlogsPage({super.key});

  // Sample list of articles
  final List<HealthArticle> articles = [
    HealthArticle(
      doctorName: 'Dr. Neha Kale',
      imagePath: 'assets/images/microscope.jpg', // or a network URL
      likes: 19,
      comments: 15,
      shares: 10,
      shortDescription:
      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Curabitur a nisl vel...',
      longDescription:
      'Dr. Neha is a leading professor of Physician Care at XYZ University. She has over 10 years of research experience in advanced microscopy, focusing on improving early detection of diseases...',
    ),
    // Add more articles as needed
    HealthArticle(
      doctorName: 'Dr. Neha Kale',
      imagePath: 'assets/images/microscope.jpg',
      likes: 22,
      comments: 10,
      shares: 5,
      shortDescription:
      'Aliquam congue consequat neque, non ultricies velit lobortis nec...',
      longDescription:
      'Dr. Neha is also part of the National Health Council, publishing articles on best practices in patient care and public health...',
    ),
    HealthArticle(
      doctorName: 'Dr. Neha Kale',
      imagePath: 'assets/images/microscope.jpg',
      likes: 30,
      comments: 25,
      shares: 12,
      shortDescription:
      'Sed molestie ante in nibh congue, vel aliquam orci eleifend...',
      longDescription:
      'Her recent studies have contributed significantly to the understanding of cell structures in oncology. She aims to improve treatments through advanced laboratory analysis...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Articles'),
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Doctor name
                  Text(
                    article.doctorName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Article image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      article.imagePath,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Row of likes, comments, shares
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Likes
                      Row(
                        children: [
                          const Icon(Icons.favorite_border, size: 16),
                          const SizedBox(width: 4),
                          Text('${article.likes}'),
                        ],
                      ),
                      // Comments
                      Row(
                        children: [
                          const Icon(Icons.comment_outlined, size: 16),
                          const SizedBox(width: 4),
                          Text('${article.comments}'),
                        ],
                      ),
                      // Shares
                      Row(
                        children: [
                          const Icon(Icons.share_outlined, size: 16),
                          const SizedBox(width: 4),
                          Text('${article.shares}'),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Short description
                  Text(
                    article.shortDescription,
                    style: const TextStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 8),

                  // Longer article description
                  Text(
                    article.longDescription,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
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