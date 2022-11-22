import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/event.dart';
import 'package:proyecto_final/src/provider/event_provider.dart';
import 'package:proyecto_final/src/utils/utils.dart';

class TeacherNewEvent extends StatefulWidget {
  final Event? event;

  const TeacherNewEvent({Key? key, this.event}) : super(key: key);

  @override
  _TeacherNewEventState createState() => _TeacherNewEventState();
}

class _TeacherNewEventState extends State<TeacherNewEvent> {
  final _formKey = GlobalKey<FormState>();
  final _tituloController = TextEditingController();
  final _descripcionController = TextEditingController();
  late DateTime fechaDe;
  late DateTime fechaA;

  @override
  void initState() {
    super.initState();
    if (widget.event == null) {
      fechaDe = DateTime.now();
      fechaA = DateTime.now().add(Duration(hours: 2));
    }
  }

  @override
  void dispose() {
    _tituloController.dispose();
    _descripcionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        actions: buildEditingActions(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildTitle(),
                const SizedBox(height: 12),
                buildDescription(),
                const SizedBox(height: 12),
                buildDe(),
                const SizedBox(height: 12),
                buildA(),
              ],
            )),
      ),
    );
  }

  List<Widget> buildEditingActions() => [
        ElevatedButton.icon(
            onPressed: saveForm, 
            icon: const Icon(Icons.done),
            label: const Text('Guardar')),
      ];
  Widget buildTitle() => TextFormField(
        style: const TextStyle(fontSize: 24),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Título',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor ingrese un título';
          }
          return null;
        },
        onFieldSubmitted: (_) => saveForm(),
        controller: _tituloController,
      );

  Widget buildDescription() => TextFormField(
        style: const TextStyle(fontSize: 18),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Descripción',
        ),
        maxLines: 5,
        controller: _descripcionController,
      );

  Widget buildDateTimePickers() => Column(
        children: [
          buildDe(),
          const SizedBox(height: 12),
          buildA(),
        ],
      );

  Widget buildDe() => buildHeader(
      header: 'De',
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: buildDropdownField(
                text: Utils.toDate(fechaDe),
                onClicked: () => pickDeDateTime(pickDate: true),
              )),
          Expanded(
              child: buildDropdownField(
            text: Utils.toTime(fechaDe),
            onClicked: () => pickDeDateTime(pickDate: false),
          )),
        ],
      ));
  Widget buildA() => buildHeader(
      header: 'A',
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: buildDropdownField(
                text: Utils.toDate(fechaA),
                onClicked: () => pickADateTime(pickDate: true),
              )),
          Expanded(
              child: buildDropdownField(
            text: Utils.toTime(fechaA),
            onClicked: () => pickADateTime(pickDate: false),
          )),
        ],
      ));

  buildDropdownField({
    required String text,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        title: Text(text),
        trailing: const Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  Widget buildHeader({required String header, required Row child}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 4),
          child,
        ],
      );

  Future pickDeDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fechaDe, pickDate: pickDate);
    if (date == null) return;

    if( date.isAfter(fechaA)){
      fechaA = DateTime(date.year, date.month, date.day, fechaA.hour, fechaA.minute);
    }

    setState(() => fechaDe = date);
  }

Future pickADateTime({required bool pickDate}) async {
    final date = await pickDateTime(fechaA, pickDate: pickDate, firstDate: pickDate ? fechaDe : null);
    if (date == null) return;

    setState(() => fechaA = date);
  }

  Future<DateTime?> pickDateTime(DateTime initilDate,
      {required bool pickDate, DateTime? firstDate}) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initilDate,
        firstDate: firstDate ?? DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (date == null) return null;

      final time = Duration(hours: initilDate.hour, minutes: initilDate.minute);

      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initilDate),
      );

      if (timeOfDay == null) return null;

      final date = DateTime(initilDate.year, initilDate.month, initilDate.day);

      final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);

      return date.add(time);
    }
  }

  Future saveForm() async{
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      final event = Event(
        titulo: _tituloController.text,
        descripcion: _descripcionController.text,
        fechaDe: fechaDe,
        fechaA: fechaA,
        isAllDay: false,
      );
    final provider = Provider.of<EventProvider>(context, listen: false);
    provider.addEvent(event);

    Navigator.of(context).pop();
  }
  }


}
