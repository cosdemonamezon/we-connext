import 'package:flutter/material.dart';

class TabTow_Details extends StatefulWidget {
  const TabTow_Details({
    Key key,
  }) : super(key: key);

  @override
  _TabTow_DetailsState createState() => _TabTow_DetailsState();
}

class _TabTow_DetailsState extends State<TabTow_Details> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stepper(
          steps: _mySteps(),
          currentStep: this._currentStep,
          onStepTapped: (step){
            setState(() {
              this._currentStep = step;
            });
          },
          onStepContinue: (){
            setState(() {
              if(this._currentStep < this._mySteps().length - 1){
                this._currentStep = this._currentStep +1;
              }else {
                //Check if everything is completed
                print('Complete check ');
              }
            });
          },
          onStepCancel: (){
            setState(() {
              if(this._currentStep > 0){
                this._currentStep = this._currentStep -1;
              } else {
                this._currentStep = 0;
              }
            });
          },
        ),
      ],
    );

  }
  List<Step> _mySteps(){
    List<Step> steps = [
      Step(
        title: Text("Step 1"),
        state: StepState.complete,
        content: Column(
          children: [
            TextField(),
            TextField(),
          ],
        ),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text("Step 2"),
        state: StepState.complete,
        content: TextField(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text("Step 3"),
        state: StepState.complete, 
        content: Text("Complete"),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text("Step 4"),
        state: StepState.complete, 
        content: Text("Complete"),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text("Step 5"),
        state: StepState.complete, 
        content: Text("Complete"),
        isActive: _currentStep >= 4,
      ),
    ];
    return steps;
  }
}



// Container(
        //   padding: EdgeInsets.all(10.0),
        //   //height: 550,
        //   //color: Colors.blue,
        //   // child: Image.asset(
        //   //   "assets/images/repair1.JPG",
        //   //   fit: BoxFit.cover,
        //   //   alignment: Alignment.center,
        //   // ),
        //   // child: Stepper(

        //   // ),
        // ),