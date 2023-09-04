import 'package:flutter/material.dart';

class PalettesPage extends StatefulWidget {
  const PalettesPage({Key? key}) : super(key: key);

  @override
  State<PalettesPage> createState() => _PalettesPageState();
}

class _PalettesPageState extends State<PalettesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[600],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,

          child: const Center(child: Text('Entry A')),
        ),
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[500],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[100],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[600],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,

          child: const Center(child: Text('Entry A')),
        ),
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[500],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          margin:  const EdgeInsets.only(left: 35, right: 35, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber[100],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 2.0)),
            ],
          ),
          height: 130,
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          color: Colors.transparent,
          height: 100,
        ),
      ],
    );
  }
}
