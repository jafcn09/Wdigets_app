import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

const MenuItem({
  required this.title,
  required this.subTitle,
  required this.link,
  required this.icon
});
}

const appMenuItems = <MenuItem>

 [

  MenuItem
(
title: 'Botones',
subTitle: 'variedad de botones',
link: '/buttons',
icon: Icons.smart_button_outlined


  ),

  MenuItem
(
title: 'Tarjetas',
subTitle: 'Contenedores esterilizados',
link: '/cards',
icon: Icons.credit_card


  ),
    MenuItem
(
title: 'ProgressIndicators',
subTitle: 'Controlados',
link: '/progress',
icon: Icons.refresh_rounded


  )
  ,
    MenuItem
(
title: 'Dialogs && Snackbars',
subTitle: 'Controlados',
link: '/snackbars',
icon: Icons.info_outline


  ),
    MenuItem
(
title: 'Animated Container',
subTitle: 'Controlados',
link: '/animated',
icon: Icons.check_box_outline_blank


  ),

    MenuItem
(
title: 'CONTROLS UI',
subTitle: 'controles en flutter',
link: '/ui-controls',
icon: Icons.car_rental_outlined


  ),
    MenuItem
(
title: 'TUTORIALES',
subTitle: 'Tutorial introductorio',
link: '/tutorial',
icon: Icons.accessibility_rounded


  ), 
  
    MenuItem
(
title: 'INFINITE SCROLL',
subTitle: 'scroll infinito',
link: '/infinite',
icon: Icons.list_alt_rounded


  )







];
