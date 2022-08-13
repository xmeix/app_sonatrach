import 'package:app_sonatrach/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:intl/intl.dart";

class NewDemandeScreen extends StatefulWidget {
  const NewDemandeScreen({Key? key}) : super(key: key);

  @override
  State<NewDemandeScreen> createState() => _NewDemandeScreenState();
}

class _NewDemandeScreenState extends State<NewDemandeScreen> {
  final motif = TextEditingController();
  TimeOfDay time = TimeOfDay.now();

  Widget buildTextFormField(String title, TextEditingController controller) {
    return TextField(
        controller: controller,
        minLines: 1,
        maxLines: 8,
        onSubmitted: (_) {},
        style: const TextStyle(
          color: Color(0xff0d0d0d),
        ),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          // icon: Icon(Icons.password),
          contentPadding: const EdgeInsets.all(20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),

          hintText: title,
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey[500],
          ),
          labelText: title,
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Color(0xff0d0d0d),
            fontWeight: FontWeight.w400,
          ),
        ));
  }

  Widget buildTimePicker(String desc, String heure, String min) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(desc),
        TextButton(
          child: Text('$heure:$min',
              style: const TextStyle(color: Colors.grey, fontSize: 20)),
          onPressed: () async {
            TimeOfDay? newTime =
                await showTimePicker(context: context, initialTime: time);
            if (newTime == null) return;
            setState(() => time = newTime);
          },
        )
      ],
    );
  }

  Widget buildAddDemandeButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final heureDeb = time.hour.toString().padLeft(2, "0");
    final heureFin = time.hour.toString().padLeft(2, "0");
    final minDeb = time.minute.toString().padLeft(2, "0");
    final minFin = time.minute.toString().padLeft(2, "0");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildTextFormField("motif", motif),
            buildTimePicker("Selectionner Heure Debut", heureDeb, minDeb),
            buildTimePicker("Selectionner Heure Fin", heureFin, minFin),
            buildAddDemandeButton('Ajouter demande de sortie'),
          ],
        ),
      ),
    );
  }
}
