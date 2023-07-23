import 'package:flutter/material.dart';
import 'package:pascualillo_contact/widgets/contact-action.dart';

class ContactPage extends StatelessWidget {
  String contact_number = "+504 9902-9311";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Widget para la imagen del contacto y el nombre
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Text(
                    'P',
                    style: TextStyle(
                        fontSize: 55.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  radius: 50.0,
                ),
                SizedBox(height: 40.0),
                Text(
                  'Pascualillo',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Widget para los botones de acción
          Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                    color: Color.fromARGB(113, 158, 158, 158), width: 1.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Lógica para llamar al contacto
                  },
                  child: Column(
                    children: [
                      Icon(Icons.call_outlined),
                      Text(
                        'Llamar',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Lógica para enviar un mensaje al contacto
                  },
                  child: Column(
                    children: [
                      Icon(Icons.message_outlined),
                      Text(
                        'Mensaje de texto',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Lógica para hacer una videollamada con el contacto
                  },
                  child: Column(
                    children: [
                      Icon(Icons.videocam_outlined),
                      Text(
                        'Video',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          // Widget para mostrar más información del contacto
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color.fromARGB(47, 82, 154, 190),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Información de contacto',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width:
                              50.0), // Set the width here (adjust to your needs)
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.call_outlined),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contact_number,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Text('Center')
                      ],
                    ),
                    SizedBox(width: 40.0),
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width:
                              50.0), // Set the width here (adjust to your needs)
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.videocam_outlined),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width:
                              50.0), // Set the width here (adjust to your needs)
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(Icons.message_outlined),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Enviar Mensaje a $contact_number',
                    src: 'assets/img/whatsapp-icon.png'),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Llamar a $contact_number',
                    src: 'assets/img/whatsapp-icon.png'),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Videollamar a $contact_number',
                    src: 'assets/img/whatsapp-icon.png'),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Videollamar a $contact_number',
                    src: 'assets/img/telegram-icon.png'),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Mensaje al $contact_number',
                    src: 'assets/img/telegram-icon.png'),
                // SizedBox(height: 20.0),
                ContactAction(
                    label: 'Llamada de voz $contact_number',
                    src: 'assets/img/telegram-icon.png')
                // Aquí puedes agregar una lista con más información del contacto
              ],
            ),
          ),
        ],
      ),
    );
  }
}
