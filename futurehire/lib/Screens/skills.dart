import 'package:flutter/material.dart';
import '../data.dart';
import 'BottomBar.dart';
import '../data.dart';
import '../functions.dart';

class SkillsPage2 extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage2> {
  List<String> selectedSkills = [];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Skills"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () async {
              skills = selectedSkills;
              await addSkills(skills);
              // Navigate to homepage or do any other action on confirmation
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BottomBar(
                        si: 0)), // Replace NextPage with your desired page
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search for skills",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allSkills.length,
              itemBuilder: (context, index) {
                final skill = allSkills[index];
                if (searchController.text.isNotEmpty &&
                    !skill
                        .toLowerCase()
                        .contains(searchController.text.toLowerCase())) {
                  return SizedBox.shrink();
                }
                return ListTile(
                  title: Text(skill),
                  trailing: selectedSkills.contains(skill)
                      ? Icon(Icons.check_circle, color: Colors.green)
                      : Icon(Icons.circle_outlined),
                  onTap: () {
                    setState(() {
                      if (selectedSkills.contains(skill)) {
                        selectedSkills.remove(skill);
                      } else {
                        selectedSkills.add(skill);
                      }
                    });
                  },
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Selected Skills: ${selectedSkills.join(", ")}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
