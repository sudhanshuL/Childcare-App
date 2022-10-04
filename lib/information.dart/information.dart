import 'package:final_project/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, bottom: 15, right: 15),
          child: ListView(
            children: [
              Container(
                //padding: EdgeInsets.all(0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      child: IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => Main_screen())));
                          },
                          icon: Icon(Icons.arrow_back_outlined,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What is mental subnormality",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Though a clear-cut definition is mental retardation is lacking, it may be defined as a condition where a person is unable to learn and perform normally due to low intelligence.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What are the causes of mental subnormality",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Mental retardation could occur due to genetic causes such as metabolic disorders, deficiency of metabolic enzymes, hypothyroidism, syndromes such as Down's syndrome, Fragile-X syndrome, Prader-Willi syndrome. It can also occur due to insults to the developing brain of the fetus during pregnancy as with infections such as rubella, toxoplasma, and drug abuse by mother during pregnancy.It can also occur due to immediate problems in the baby post-birth such as low blood sugar, jaundice leading to brain damage, infection such as meningitis and encephalitis. Other causes of mental retardation include lack of environmental stimulation and malformations of the brain itself.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Can we grade mental subnormality severity",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Mental retardation can be diagnosed by assessing the intelligent quotient (IQ) of the child. A child with IQ between 70-90 is said to have borderline mental retardation, IQ between 70-51 is mild mental retardation, and IQ between 50-36 is modulated mental retardation. A child with IQ between 21-35 is severely retarded and those with IQ less than 20 have profound mental retardation.Children with severe and profound mental subnormality have a significant amount of brain damage and may have associated blindness, deafness, seizures, and other defects. They are fully dependent on others for care and survival.Children with moderate mental retardation can become partially independent with special training aimed at self-help skills.Children with mild mental retardation are able to talk, speak, and carry out daily routine activities. They can be educated to a certain extent and can lead an independent life.Children with borderline mental retardation are usually low achievers in school and by proper training can lead an independent normal life",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What is the treatment for a mentally affected child",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Management of mental retardation in a child requires a multi-pronged approach. Each child needs individualized therapy and needs special education facilities, proper screening, and treatment for vision and hearing problems and intervention by a child psychologist, pediatrician, physiotherapist/occupational therapist, and speech therapist to help him/her achieve development to the best of his/her ability.",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
