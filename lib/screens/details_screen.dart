import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: cambiar luego por una instancia movie
    final String movie = ModalRoute.of(context)
      ?.settings.arguments.toString() ?? 'No movie';

    return Scaffold
    (
      body: CustomScrollView(
        slivers: [_CustomAppBar()],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text('Movie Title'),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: AssetImage('assets/no-image.jpg'),
          fit: BoxFit.cover,
          )
        )
      );
  }
}
