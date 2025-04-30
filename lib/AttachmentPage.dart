import 'package:flutter/material.dart';

class AttachmentPage extends StatelessWidget {
  final TextEditingController titleController =
  TextEditingController(text: "Installation & Maintenance");

  final TextEditingController notesController = TextEditingController(
    text:
    "Lorem ipsum dolor sit amet, consectetur sadipiscing elit, sed diam nonumy elirmod tempor invidunt ut labore et dolore magna aliquyam erat",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B3D91),
        title: const Text('Add Attachments',style: TextStyle( color: Colors.white,fontSize: 15),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30), // Adjust the radius as needed
          ),
        ),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert,color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              children: [
                const Row(

                  children: [
                    Row(
                      children: [
                        Icon(Icons.attach_file,size: 18,),
                        SizedBox(width: 3),
                        Text(
                          "Attachments",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 65,),
                    Icon(Icons.calendar_today_outlined,size: 15,),
                    SizedBox(width: 5,),
                    Text(
                      "07/21/202104:07AM",
                      style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  height: 300,

                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/teamaker.jpeg",
                        height: 350,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                      Icon(
                        Icons.play_circle_fill,
                        size: 64,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child:  IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {},
                        ),)
                    ],
                  ),

                ),
                const SizedBox(height: 30,),

                Container(
                  height: 190,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 25.0, top: 8.0),
                            child: Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          const SizedBox(width: 35),
                          Expanded(
                            child: TextFormField(
                              controller: titleController,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(Icons.edit, size: 16),
                              ),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0, top: 8.0),
                            child: Text(
                              "Service notes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: notesController,
                              maxLines: 4,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(Icons.edit, size: 16),
                              ),
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0B3D91),

                    ),
                    onPressed: () {
                      // Submission logic here
                    },
                    child: const Text(
                      "Submit Attachment",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0B3D91),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),



    );
  }
}
