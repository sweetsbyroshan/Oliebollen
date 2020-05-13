import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/colors.dart';
import 'package:oliebollen/widgets/button/button_type.dart';
import 'package:oliebollen/widgets/button/primary_buttons.dart';
import 'package:oliebollen/widgets/button/secondary_buttons.dart';
import 'package:oliebollen/widgets/button/ghost_button.dart';

class ButtonPage extends StatefulWidget {
  static const routeName='buttonPage';
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Primary Buttons',
                    style: GoogleFonts.ibmPlexSans().copyWith(
                      color: CDSColors.coreBlue,
                    ),
                  ),
                  PrimaryButton(
                    type: ButtonType.Default,
                    text: 'Primary Button',
                    onPressed: (){},
                  ),
                  PrimaryButton(
                    type: ButtonType.With_Icon,
                    text: 'Primary Button with Icon',
                    onPressed: (){},
                    icon: Icons.add,
                  ),
                  PrimaryButton(
                    type: ButtonType.Icon,
                    onPressed: (){},
                    icon: Icons.add,
                  )
                ],
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Secondary Buttons',
                    style: GoogleFonts.ibmPlexSans().copyWith(
                      color: CDSColors.neutralGrey,
                    ),
                  ),
                  SecondaryButton(
                    type: ButtonType.Default,
                    text: 'Secondary Button',
                  ),
                  SecondaryButton(
                    type: ButtonType.With_Icon,
                    text: 'Secondary Button with Icon',
                    icon: Icons.add,
                  ),
                  SecondaryButton(
                    type: ButtonType.Icon,
                    icon: Icons.add,
                  )
                ],
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Ghost Buttons',
                    style: GoogleFonts.ibmPlexSans().copyWith(
                      color: CDSColors.neutralGrey,
                    ),
                  ),
                  GhostButton(
                    type: ButtonType.Default,
                    text: 'Ghost Button',
                  ),
                  GhostButton(
                    type: ButtonType.With_Icon,
                    text: 'Ghost Button with Icon',
                    icon: Icons.add,
                  ),
                  GhostButton(
                    type: ButtonType.Icon,
                    icon: Icons.add,
                  )
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
