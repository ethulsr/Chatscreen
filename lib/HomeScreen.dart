import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'My Private App',
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: [
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Sign Out'),
                        content:
                            const Text('Are you sure you want to sign out?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                              Navigator.of(context)
                                  .pushReplacementNamed('LogIn');
                            },
                            child: const Text('Sign Out'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              const Text(
                'Sign Out',
                style: TextStyle(fontSize: 7),
              ),
            ],
          ),
        ],
      ),
      body: ChatList(), // Added the ChatList widget to the body
    );
  }
}

class ChatList extends StatelessWidget {
  final List<Map<String, String>> chatData = [
    {
      "name": "Batman",
      "message": "I'm Batman.",
      "time": "8:00 AM",
      "image": "assets/images/batman.jpg",
    },
    {
      "name": "Spiderman",
      "message": "With great power...",
      "time": "9:30 AM",
      "image": "assets/images/spiderman.jpg",
    },
    {
      "name": "Aifa",
      "message": "You either die a hero, or you live....",
      "time": "10:45 AM",
      "image": "assets/images/aifa.jpg",
    },
    {
      "name": "Farah",
      "message": "If you are good at something,..",
      "time": "11:30 AM",
      "image": "assets/images/farah.jpg",
    },
    {
      "name": "Nujel Nigs NS",
      "message": "Leo kaanan varunno?",
      "time": "12:00 PM",
      "image": "assets/images/nujel.jpg",
    },
    {
      "name": "Akshaya Suresh",
      "message": "I wish there was a way to know...",
      "time": "1:00 PM",
      "image": "assets/images/akshaya.jpg",
    },
    {
      "name": "Bruce Wayne",
      "message": "The greatest trick, the devil ever...",
      "time": "4:00 PM",
      "image": "assets/images/bruce wayne.jpg",
    },
    {
      "name": "Juventus",
      "message": "Bianconeri",
      "time": "4:00 PM",
      "image": "assets/images/juventus.jpg",
    },
    {
      "name": "Cristiano Ronaldo",
      "message": "Suiiii...",
      "time": "4:00 PM",
      "image": "assets/images/Ronaldo.jpg",
    },
    {
      "name": "Lionel Messi",
      "message": "Vamos Argentina...",
      "time": "4:00 PM",
      "image": "assets/images/messi.jpg",
    },
    {
      "name": "Virat Kohli",
      "message": "Chak de India...",
      "time": "4:00 PM",
      "image": "assets/images/virat.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (BuildContext context, int index) {
        final bool isOddIndex = index % 2 != 0;
        final Widget leadingWidget = isOddIndex
            ? ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  chatData[index]["image"]!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              )
            : CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(chatData[index]["image"]!),
              );

        return ListTile(
          leading: leadingWidget,
          title: Text(chatData[index]["name"]!),
          subtitle: Text(chatData[index]["message"]!),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(chatData[index]["time"]!),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
