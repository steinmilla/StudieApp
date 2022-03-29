import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

bool isButtonClickable = true ;

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:
       [
        FaIcon(
          FontAwesomeIcons.clock,
          color: Colors.teal[50],
        ),
        const Text(' Studie'),

      ],
    );
  }
}

class PlantImage extends StatelessWidget {
  const PlantImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/MLU.png'),
      height: 400,
    );
  }
}



class FirstButton extends StatelessWidget {
  const FirstButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
        onPressed:() {},
        child: Text('anderer Knopf')
        ),
      ),
    );
  }
}










class HomePageButtons extends StatelessWidget {
final Future<void> Function()


   onPressedOne;
const HomePageButtons({
  
     Key? key,
    required this.onPressedOne,
 

   
  }) : super(key: key);
  
  



  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded( 

          child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal[600],
                ),
              ),

              onPressed: onPressedOne,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.clock,
                    size: 14,
                    color: Colors.teal[50],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Starten',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],

      ),
    );
  }
}

class PlantStats extends StatelessWidget {
  const PlantStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.pencilAlt,
                size: 20,
                color: Colors.yellow[600],
              ),
              const SizedBox(width: 3),
              const Text(
                'Link ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class InformationTitle extends StatelessWidget {
  const InformationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:
       [
        FaIcon(
          FontAwesomeIcons.question,
          color: Colors.teal[50],
        ),
        const Text(' Informationen'),

      ],
    );
  }
}



class FragebogenTitle extends StatelessWidget {
  const FragebogenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:
       [
        FaIcon(
          FontAwesomeIcons.pen,
          color: Colors.teal[50],
        ),
        const Text(' Fragebogen'),

      ],
    );
  }
}


