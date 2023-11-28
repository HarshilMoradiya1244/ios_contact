import 'package:flutter/material.dart';

class ProfileScreenAndroid extends StatefulWidget {
  const ProfileScreenAndroid({super.key});

  @override
  State<ProfileScreenAndroid> createState() => _ProfileScreenAndroidState();
}

class _ProfileScreenAndroidState extends State<ProfileScreenAndroid> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook_rounded),
            ),
            centerTitle: true,
            title: const Text(
              "Facebook",
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Colors.blue.shade300,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text("$index"),
            );
          }, childCount: 10),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  margin: EdgeInsets.all(5),
                );
              },
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text("$index"),
            );
          }, childCount: 10),
        ),
      ],
    );
  }
}
