import 'package:flutter/material.dart';

class HomeScreenAndroid extends StatefulWidget {
  const HomeScreenAndroid({super.key});

  @override
  State<HomeScreenAndroid> createState() => _HomeScreenAndroidState();
}

class _HomeScreenAndroidState extends State<HomeScreenAndroid> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    const Text("Search Contact And Places"),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic_none_outlined)),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person_add_alt)),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Create New Contact",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'info');
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange,
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Builder(builder: (context) {
                          return const Text(
                            "Shubhman Gill",
                            style: TextStyle(fontSize: 20),
                          );
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Rohit Sharma",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple,
                              ),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "V",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Virat Kohli",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.pink,
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Shreyas Iyer",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "KL Rahul",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Ms Dhoni",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellowAccent,
                              ),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Mohammad Shami",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orangeAccent,
                              ),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Mohammad Siraj",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.09,
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.orange.shade300),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.dialpad_outlined,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.11,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star_border_outlined),
                        ),
                        const Text("Favourites"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => BottomSheet(
                                onClosing: () {},
                                builder: (context) => Container(
                                  height: 100,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Video Call"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Voice Call"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.watch_later_outlined),
                        ),
                        const Text("Recent"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.contacts_outlined),
                        ),
                        const Text("Contacts"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
