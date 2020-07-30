import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryView extends StatelessWidget {
  final List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 3,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/holiday_tour1.png')),
              borderRadius: BorderRadius.circular(10.0)),
        ),
        staggeredTileBuilder: (index) => _staggeredTiles[index],
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
