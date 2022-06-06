import 'package:anima/animations/parallax/paralaxFlowDelegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ParalaxHome extends StatelessWidget {
  ParalaxHome({super.key});
  final List<Map<String, String>> locations = [
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
    {
      "imageUrl":
          "https://www.pcgamesn.com/wp-content/uploads/2022/05/best-V-Rising-base-locations-900x506.jpg",
      "name": "toto",
      "place": "bozz"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (final location in locations)
              LocationListItem(
                imageUrl: location["imageUrl"]!,
                name: location["name"]!,
                country: location["place"]!,
              ),
          ],
        ),
      ),
    );
  }
}

@immutable
class LocationListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();
  LocationListItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParalaxFlowDelegate(
          backgroundImageKey: _backgroundImageKey,
          listItemContext: context,
          scrollable: Scrollable.of(context)!),
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
