import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final Cv h;

  const EditPage({Key? key, required this.h}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController workController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController slackusernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController githubhandleController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController jobroleController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController(text: widget.h.email);
    bioController = TextEditingController(text: widget.h.bio);
    twitterController = TextEditingController(text: widget.h.twitter);
    instagramController = TextEditingController(text: widget.h.instagram);
    workController = TextEditingController(text: widget.h.work);
    skillsController = TextEditingController(text: widget.h.skill);
    educationController = TextEditingController(text: widget.h.education);
    slackusernameController =
        TextEditingController(text: widget.h.slackUsername);
    fullnameController = TextEditingController(text: widget.h.fullName);
    phonenumberController = TextEditingController(text: widget.h.phonenumber);
    githubhandleController = TextEditingController(text: widget.h.githubHandle);
    facebookController = TextEditingController(text: widget.h.facebook);
    jobroleController = TextEditingController(text: widget.h.jobrole);
  }

  @override
  void dispose() {
    emailController.dispose();
    bioController.dispose();
    workController.dispose();
    twitterController.dispose();
    instagramController.dispose();
    skillsController.dispose();
    educationController.dispose();
    fullnameController.dispose();
    githubhandleController.dispose();
    slackusernameController.dispose();
    facebookController.dispose();
    jobroleController.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(
                "My CVApp",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      Cv(
                          fullName: fullnameController.text,
                          slackUsername: slackusernameController.text,
                          githubHandle: githubhandleController.text,
                          bio: bioController.text,
                          email: emailController.text,
                          twitter: twitterController.text,
                          instagram: instagramController.text,
                          phonenumber: phonenumberController.text,
                          skill: skillsController.text,
                          work: workController.text,
                          education: educationController.text,
                          facebook: facebookController.text,
                          jobrole: jobroleController.text));
                },
                child: const Text("SAVE"))
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Personal Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: fullnameController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Full name",
                        hintText: "Enter your email address"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: slackusernameController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Slack Username",
                        hintText: ""),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Email Address",
                        hintText: " "),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: githubhandleController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Github handler",
                        hintText: " "),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: phonenumberController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Phone Number",
                        hintText: " "),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: bioController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "A brief personal bio",
                        hintText: " "),
                  ),
                ),
                const Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: workController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Work Experience",
                        hintText: " "),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Social handles",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: twitterController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Twitter :",
                        hintText: " "),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: instagramController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Instagram :",
                        hintText: " "),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: facebookController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        labelText: "Facebook :",
                        hintText: " "),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Education",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: educationController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Educational background",
                        hintText: " "),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Skills",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: skillsController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Your Skills",
                        hintText: " "),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    controller: jobroleController,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Job Role",
                        hintText: ""),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cv {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;
  final String email;
  final String twitter;
  final String instagram;
  final String phonenumber;
  final String facebook;
  final String skill;
  final String work;
  final String education;
  final String jobrole;
  Cv({
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
    required this.email,
    required this.twitter,
    required this.instagram,
    required this.phonenumber,
    required this.skill,
    required this.work,
    required this.education,
    required this.facebook,
    required this.jobrole,
  });
}
