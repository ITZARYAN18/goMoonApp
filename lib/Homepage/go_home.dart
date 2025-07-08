import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/dropdown_class.dart';

class homePage extends StatelessWidget{

 late double _deviceWidth, _deviceHeight;
   homePage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _pageTitle(),
                  _bookRide(),

                ],),
              Align(
                alignment: Alignment.center
                ,child: _astroImage(),),
            ],)

          )
      )

    );
  }

  Widget _pageTitle(){
    return const Text("#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 70,
      ),);
  }


  Widget _astroImage(){
    return Container(
      height: _deviceHeight*0.50,
      width: _deviceWidth*0.65,
      decoration:BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

    Widget _destinationDropWidget(){
     return Dropdownclass(width:_deviceWidth,
         values: const [
         'Azadpur Station','Samaypur Badli','Rohini sec-15'
         ],);

    }
        Widget _bookRide(){
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _destinationDropWidget(),
                _travellerInfo(),
                _rideButton(),
              ],
            ),
            height: _deviceHeight*0.25,
          );
        }

    Widget _travellerInfo(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Dropdownclass(
        width:_deviceWidth*0.45,
        values: const [
          '1',
          '2',
          '3',
          '4'
        ],),
        Dropdownclass(
          width:_deviceWidth*0.40,
          values: const [
            'Economy',
            'Business',
            'Premium',
            'First'
          ],),
      ],) ;

    }

        Widget _rideButton(){
            return Container(
              margin: EdgeInsets.only(bottom: _deviceHeight*0.01),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              width: _deviceWidth,
              child: MaterialButton(onPressed: (){},
                child: const Text("Book Ride!",
                  style: TextStyle(
                    color: Colors.black,
                  ),),),
              
            );
        }

}