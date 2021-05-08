import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
       // title: Text('Input'),
      //),
      body: ListView(
       padding: EdgeInsets.all(30), 
        children: [ 
                   
                   Container(child: 
                   Center(child: 
                   Image.asset('assets/groucho.jpg' ,),                
                    ),
                     width: 150,
                      height: 150,                     
                     color: Colors.purple,                     
                     ),
                      SizedBox(height: 20,),
                                              
                    
                          Container(
                          child: Center(child:
                                 Text('USER PROFILE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                 ),
                               ),
                            ),
                           
          SizedBox(height: 30,),
          Text('User Name',style: TextStyle(color: Colors.purple[900]),),
          SizedBox(height: 10,),
          CajaName(), 
          SizedBox(height: 5,),  
          Text('Email Id',style: TextStyle(color: Colors.purple[900]),),     
          SizedBox(height: 10,),
          CajaEmail(), 
           SizedBox(height: 5,),
          Text('Mobile Number',style: TextStyle(color: Colors.purple[900]),),        
          SizedBox(height: 10,),
           CajaMovileNumber(),
            SizedBox(height: 5,),
           Text('Date of Bith',style: TextStyle(color: Colors.purple[900]),),
           SizedBox(height: 10,),
           CajaDate(),
           SizedBox(height: 10,),
           Text('Sex',style: TextStyle(color: Colors.purple[900]),),
           SizedBox(height: 50,),
           
               Container(
                decoration: BoxDecoration(
                  color: Colors.purple[700],
                   borderRadius: BorderRadius.circular(30)
                 ),
                    height: 50,             
                     child: 
                     Center(
                        child: Text(
                             'SAVE',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                         ),
                      ),
            )
          
        ],
      )
    );
  }
}

class CajaDate extends StatefulWidget {
  @override
  _CajaDateState createState() => _CajaDateState();
}

class _CajaDateState extends State<CajaDate> {
  String fecha = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: _textController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.date_range,  color: Colors.purple,),
        hintText: 'DD / MM / YYYY', 
        //labelText: 'Fecha de Nacimiento',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        )
        ),
        onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
    
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );

    if(date!=null){
      setState(() {});
      fecha = date.toString();
      //_textController.text = _fecha;
    }
  }
}


class CajaMovileNumber extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.phone_iphone, color: Colors.purple,),
      //labelText: 'Email',
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30)
           ),
           hintText: 'Enter your 10 digit mobile number',
           
       ),
     );
  }
}

class CajaEmail extends StatefulWidget {
  @override
  _CajaEmailState createState() => _CajaEmailState();
}

class _CajaEmailState extends State<CajaEmail> {
  String email = '';
   @override
   Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.email_outlined, color: Colors.purple,),
      //labelText: 'Email',
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30)
           ),
           hintText: 'Enter Email',
           
       ),
     );
  }
}

class CajaName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.account_circle, color: Colors.purple,),
      //labelText: 'UserName',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      hintText: 'Enter user name',
           
    ),
    );
  }
}