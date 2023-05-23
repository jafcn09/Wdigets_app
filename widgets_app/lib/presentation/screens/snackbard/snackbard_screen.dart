import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackBardScreen extends StatelessWidget {
  static const name = 'snackbard_screend';
  
  const SnackBardScreen({super.key});
  void ShowCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(content: const Text('Hola unu'),
    action:  SnackBarAction(label: 'OK', onPressed: () {}),
    duration: const Duration(seconds:2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }
void openDialog(BuildContext context){
  showDialog(context: context,
  barrierDismissible: false,
   builder: (context) => 
  AlertDialog(title: const Text('Esta seguro?'),
  content: const Text('Lorem'),
  actions: [
    TextButton(onPressed: () => context.pop(), child: const Text('cancelar')),
    FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
  ],
  ));
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text('Snack && Dial'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton.tonal
            (onPressed: (){
              showAboutDialog(context: context,
              children: [
                const Text('Lorem ')
              ]);
            }, 
            child: const Text('se usa de esta manera')),
            FilledButton.tonal
            (onPressed: () => openDialog(context), 
            child: const Text('Muestra por favor'))
          ],
          )),     
     floatingActionButton: 
     FloatingActionButton.extended(
      label:  const Text('Mostrar Snack'),
      icon: const Icon(Icons.remove_red_eye_outlined),
      onPressed: () => ShowCustomSnackbar(context)

     ),

    );
  }
}