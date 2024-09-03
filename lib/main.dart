import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  bool showExperience = false;
  bool showEducation = false;
  bool showSkills = false;
  bool showContact = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ProfileSection(),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showExperience = !showExperience;
                        showEducation = false;
                        showSkills = false;
                        showContact = false;
                      });
                    },
                    child: Text('View Work Experience'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showExperience = false;
                        showEducation = !showEducation;
                        showSkills = false;
                        showContact = false;
                      });
                    },
                    child: Text('View Education'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showExperience = false;
                        showEducation = false;
                        showSkills = !showSkills;
                        showContact = false;
                      });
                    },
                    child: Text('View Skills'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showExperience = false;
                        showEducation = false;
                        showSkills = false;
                        showContact = !showContact;
                      });
                    },
                    child: Text('View Contact Information'),
                  ),
                ),
              ],
            ),
            Divider(),
            if (showExperience) ExperienceSection(),
            if (showEducation) EducationSection(),
            if (showSkills) SkillsSection(),
            if (showContact) ContactSection(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
