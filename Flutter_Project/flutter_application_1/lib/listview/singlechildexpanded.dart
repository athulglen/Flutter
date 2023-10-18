import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Story(),));
}
class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Story BOOK"),
      ),
      body: Column(
        children: [
          Text(
            "Scary Stories",
            style: GoogleFonts.creepster(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.pink),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Text("""Maya is a small, cheerful and headstrong bee who is very curious. 
                      She experiences many adventures, and that starts right from her birth.
                     Maya the bee is born as the last bee in a large beehive near an abandoned 
                      ruin in the forest. 
                      She has many brothers and sisters. Miss Cassandra is a smart beekeeper 
                      who helps with the birth of the many new bees. It immediately becomes clear 
                      that Maya is a terribly curious little bee. The first thing she asks Miss 
                      Cassandra at her birth is, “Why did you name me Maya?” to which Cassandra 
                      replies, “For no reason, everyone just needs a name.
                      Maya is a small, cheerful and headstrong bee who is very curious. 
                      She experiences many adventures, and that starts right from her birth.
                      Maya the bee is born as the last bee in a large beehive near an abandoned ruin 
                      in the forest. She has many brothers and sisters. Miss Cassandra is a smart 
                      beekeeper who helps with the birth of the many new bees. It immediately 
                      becomes clear that Maya is a terribly curious little bee. The first thing 
                      she asks Miss Cassandra at her birth is, “Why did you name me Maya?” to which
                       Cassandra replies, “For no reason, everyone just needs a name.
                       She experiences many adventures, and that starts right from her birth.
                      Maya the bee is born as the last bee in a large beehive near an abandoned ruin 
                      in the forest. She has many brothers and sisters. Miss Cassandra is a smart 
                      beekeeper who helps with the birth of the many new bees. It immediately 
                      becomes clear that Maya is a terribly curious little bee. The first thing 
                      she asks Miss Cassandra at her birth is, “Why did you name me Maya?” to which
                       Cassandra replies, “For no reason, everyone just needs a name.”"""),
            ),
          )
        ],
      ),
    );
  }
}