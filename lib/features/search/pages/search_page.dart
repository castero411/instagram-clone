import 'package:flutter/material.dart';
import 'package:instagram/features/search/widgets/search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const XSearchBar(),

              // Padding for spacing
              const SizedBox(height: 16),

              // GridView inside SingleChildScrollView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blueAccent,
                      child: Center(child: Text("Item $index")),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
