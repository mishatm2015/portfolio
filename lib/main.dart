import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misha T M - Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.indigo, Colors.indigoAccent],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Replace this code in the PortfolioScreen class

// With this code:
//                     CircleAvatar(
//                       radius: 60,
//                       backgroundImage: AssetImage('assets/images/mi01.jpg',),
//                     ),
                //  CircleAvatar(child: Image.asset("assets/images/mi01.jpg",height: 50,width: 50,)),
                    const SizedBox(height: 16),
                    const Text(
                      'MISHA T M',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
// Add this after the App Bar section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello, I\'m Misha 👋',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'I\'m a passionate Flutter developer from Kerala, India, dedicated to crafting intuitive, high-performance mobile and web applications. With experience in building dynamic UIs, seamless animations, and robust backend integration, I specialize in turning ideas into reality using Flutter and Dart.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '✨ Key Skills:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                        Text(
                          '- Flutter & Dart\n'
                              '- Firebase Integration\n'
                              '- RESTful API Development\n'
                              '- State Management (Provider, Riverpod, Bloc)\n'
                              '- UI/UX Design with Material Design Principles\n'
                              '- Payment Gateway Integration\n'
                              '- Clean Code & Architecture (MVVM, MVC)',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '🚀 Let\'s collaborate to build impactful and engaging applications!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('assets/images/mi01.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Contact Info
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          ContactItem(
                            icon: Icons.phone,
                            title: 'Phone',
                            subtitle: '7034761832',
                            onTap: () => launchUrl(Uri.parse('tel:7034761832')),
                          ),
                          ContactItem(
                            icon: Icons.email,
                            title: 'Email',
                            subtitle: 'mishatm2015@gmail.com',
                            onTap: () => launchUrl(
                                Uri.parse('mailto:mishatm2015@gmail.com')),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ContactItem(
                            icon: Icons.location_on,
                            title: 'Location',
                            subtitle: 'Kochi, Kerala',
                            onTap: () {},
                          ),
                          ContactItem(
                            icon: FontAwesomeIcons.linkedin,
                            title: 'LinkedIn',
                            subtitle: 'misha-t-m-3bb578211',
                            onTap: () => launchUrl(Uri.parse(
                                'https://www.linkedin.com/in/misha-t-m-3bb578211/')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Profile
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Divider(),
                      Text(
                        "I'm a dedicated Flutter Developer with a strong passion for crafting dynamic, high-quality mobile and web applications using the Flutter framework and Dart programming language. With a solid foundation in UI/UX principles, state management, and performance optimization, I strive to build seamless, responsive, and visually appealing apps that enhance user experiences. Having completed advanced Flutter training and worked on multiple hands-on projects.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Skills
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Skills & Technologies',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const Divider(),
                      SkillCategory(
                        title: 'Programming Languages',
                        skills: ['Dart', 'Java', 'C', 'C++'],
                      ),
                      SkillCategory(
                        title: 'Mobile Development',
                        skills: ['Flutter', 'Android SDK'],
                      ),
                      SkillCategory(
                        title: 'State Management',
                        skills: ['Provider', 'Riverpod', 'Bloc', 'GetX'],
                      ),
                      SkillCategory(
                        title: 'Database & Storage',
                        skills: ['Firebase', 'SQLite', 'SharedPreferences'],
                      ),
                      SkillCategory(
                        title: 'APIs & Integration',
                        skills: ['RESTful APIs', 'Payment Gateway'],
                      ),
                      SkillCategory(
                        title: 'Version Control',
                        skills: ['Git', 'GitHub', 'GitLab'],
                      ),
                      SkillCategory(
                        title: 'UI/UX',
                        skills: ['Material Design', 'Responsive UI Development'],
                      ),
                      SkillCategory(
                        title: 'Testing & Debugging',
                        skills: ['Flutter DevTools', 'Unit Testing', 'Postman'],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Projects
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  ProjectCard(
                    title: 'Mom & Baby Care App',
                    technologies:
                    'Flutter, Firebase, RESTful APIs, Provider',
                    description:
                    'Developed a mobile application to assist mothers with pregnancy tracking, baby growth monitoring, and postpartum care.',
                    features: [
                      'Implemented features like health tips, vaccination reminders, and feeding schedules',
                      'Integrated Firebase Authentication for secure login',
                      'Designed an intuitive UI/UX with Material Design',
                      'Enabled real-time notifications using Firebase Cloud Messaging'
                    ],
                //   imagePath: 'assets/mom_baby_app.png',
                  ),
                  const SizedBox(height: 16),
                  ProjectCard(
                    title: 'Swiggy Clone App',
                    technologies: 'Flutter, Dart, Material Design',
                    description:
                    'Designed a modern, responsive UI for a food delivery application inspired by Swiggy.',
                    features: [
                      'Developed interactive restaurant listing, menu browsing, and cart screens',
                      'Implemented a user-friendly checkout flow with multiple payment UI options',
                      'Used Material Design principles for intuitive interface'
                    ],
                   // imagePath: '',
                  ),
                  const SizedBox(height: 16),
                  ProjectCard(
                    title: 'Sports Website for College...(Diploma)',
                    technologies: 'PHP, MySQL, WAMP Server',
                    description:
                    'College website providing sporting news, athlete registration, and certificate printing.',
                    features: [
                      'Implemented user registration and authentication system',
                      'Created backend database for storing athlete information',
                      'Developed certificate generation feature'
                    ],
                  //  imagePath: 'assets/sports_website.png',
                  ),
                ],
              ),
            ),
          ),

          // Experience
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Divider(),
                      ExperienceItem(
                        title: 'Flutter Internship',
                        period: 'October 2024 - Present',
                        responsibilities: [
                          'Learned and implemented Flutter UI components, state management, and API integrations',
                          'Built small-scale projects to enhance coding proficiency',
                          'Gained exposure to real-world mobile app development workflows',
                          'Used Visual Studio Code and Android Studio as primary IDEs',
                          'Used GitHub to manage Git repositories and version control',
                          'Worked with different teams including Product Development, Back-end, and Front-end'
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Education
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Education',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Divider(),
                      EducationItem(
                        degree: 'BTech, Computer Engineering',
                        institution: 'Universal Engineering College, Vallivattom',
                        period: '2018 - 2021',
                      ),
                      SizedBox(height: 16),
                      EducationItem(
                        degree: 'Diploma in Computer Engineering',
                        institution: 'Women\'s Polytechnic, Nedupuzha',
                        period: '2015 - 2018',
                      ),
                      SizedBox(height: 16),
                      EducationItem(
                        degree: 'Plus Two',
                        institution: 'HDPSHSS Edathirinji',
                        period: '2013 - 2015',
                      ),
                      SizedBox(height: 16),
                      EducationItem(
                        degree: 'SSLC',
                        institution: 'HDPSHSS Edathirinji',
                        period: '2013',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Languages
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Languages',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: const [
                          Expanded(
                            child: LanguageItem(
                              language: 'English',
                              proficiency: 'Fluent',
                            ),
                          ),
                          Expanded(
                            child: LanguageItem(
                              language: 'Malayalam',
                              proficiency: 'Fluent',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Footer
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(24),
              color: Colors.indigo,
              child: const Center(
                child: Text(
                  '© 2025 Misha T M - Flutter Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement contact action
        },
        child: const Icon(Icons.email),
        tooltip: 'Contact Me',
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function() onTap;

  const ContactItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.indigo,
                size: 24,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillCategory extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillCategory({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map(
                (skill) => Chip(
              label: Text(skill),
              backgroundColor: Colors.indigo.withOpacity(0.1),
              labelStyle: const TextStyle(color: Colors.indigo),
            ),
          )
              .toList(),
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;
  final List<String> features;
  //final String imagePath;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.technologies,
    required this.description,
    required this.features,
  //  required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.indigo.withOpacity(0.1),
          //     borderRadius: const BorderRadius.only(
          //       topLeft: Radius.circular(16),
          //       topRight: Radius.circular(16),
          //     ),
          //   ),
          //   child: Center(
          //     child: Icon(
          //       _getIconForProject(title),
          //       size: 80,
          //       color: Colors.indigo,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    technologies,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ...features.map(
                      (feature) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(feature),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // IconData _getIconForProject(String projectTitle) {
  //   if (projectTitle.contains('Mom & Baby')) {
  //     return Icons.child_care;
  //   } else if (projectTitle.contains('Swiggy')) {
  //     return Icons.fastfood;
  //   } else if (projectTitle.contains('Sports')) {
  //     return Icons.sports_soccer;
  //   }
  //   return Icons.code;
  // }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String period;
  final List<String> responsibilities;

  const ExperienceItem({
    Key? key,
    required this.title,
    required this.period,
    required this.responsibilities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          period,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 12),
        ...responsibilities.map(
              (responsibility) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_right,
                  color: Colors.indigo,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(responsibility),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String period;

  const EducationItem({
    Key? key,
    required this.degree,
    required this.institution,
    required this.period,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.school,
          color: Colors.indigo,
          size: 24,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                degree,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                institution,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                period,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LanguageItem extends StatelessWidget {
  final String language;
  final String proficiency;

  const LanguageItem({
    Key? key,
    required this.language,
    required this.proficiency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.language,
        color: Colors.indigo,
      ),
      title: Text(
        language,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(proficiency),
    );
  }
}
