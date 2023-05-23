import 'package:flutter/material.dart';

class UICONTROLSSCREEN extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UICONTROLSSCREEN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI CONTROLS')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDevelop = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(physics: const ClampingScrollPhysics(), children: [
      SwitchListTile(
        title: const Text('develop'),
        subtitle: const Text('Controls adicionales'),
        value: isDevelop,
        onChanged: (value) => setState(() {
          isDevelop = !isDevelop;
        }),
      ),
      ExpansionTile(
        title: const Text('Vehiculo de transporte'),
        subtitle: Text('$selectedTransportation'),
        children: [
          RadioListTile(
            title: const Text('mi carro'),
            subtitle: const Text('viaje programado para hoy'),
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.car;
            }),
          ),
          RadioListTile(
            title: const Text('avion'),
            subtitle: const Text('viaje programado para hoy en avion'),
            value: Transportation.plane,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.plane;
            }),
          ),
          RadioListTile(
            title: const Text('mi bote'),
            subtitle: const Text('viaje programado para hoy en bote'),
            value: Transportation.boat,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.boat;
            }),
          ),
          RadioListTile(
            title: const Text('mi submarino'),
            subtitle: const Text('viajemos por submarino'),
            value: Transportation.submarine,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.submarine;
            }),
          )
        ],
      ),
    //AQUI ACABA TODO
    CheckboxListTile(
      title: const Text('¿Desayunara?'),
      value: wantsBreakfast, 
    onChanged: (value) => setState(() {
      wantsBreakfast = !wantsBreakfast;
    })
    ,),
 CheckboxListTile(
      title: const Text('¿Almorzara?'),
      value: wantsDinner, 
    onChanged: (value) => setState(() {
      wantsDinner = !wantsDinner;
    })
    ,)
,


     CheckboxListTile(
      title: const Text('Cenara?'),
      value: wantsLunch, 
    onChanged: (value) => setState(() {
      wantsLunch = !wantsLunch;
    })
    ,)
    ]);
  }
}
