import 'package:flutter/material.dart';

class Agri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Agri Practices',
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: Container(
    color: Colors.yellow[500],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Good Agri Practice',style:TextStyle(color: Colors.white),
        ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General Guidelines -',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  ' Good Agricultural Practices (GAPs) are a set of principles, regulations and technical recommendations applicable to production, processing and food transport, addressing human health care, environment protection and improvement of worker conditions and their families. GAP, as defined by FAO, are a "collection of principles to apply for on-farm production and postproduction processes, resulting in safe and healthy food and non-food agricultural products, while taking into account economic, social and environmental sustainability."',
                ),
                SizedBox(height: 10),
                Text(
                  'Implementing GAP also helps promote sustainable agriculture and contributes to meeting national and international environmental and social developmental objectives. It has been documented that implementation of GAP encourages promotion of the optimum use of resources such as pesticides, fertilizers, and water, and eco-friendly agriculture.',
                ),
                SizedBox(height: 10),
                Text(
                  ' Its social dimension would be to protect the agricultural workers\' health from improper use of chemicals and pesticides. The guidelines are applicable to the production, harvesting, storage, etc. of soybean. Farmers can adopt appropriate measures to produce safe and premium soybean.',
                ),
                SizedBox(height: 10),
                Text(
                  'Soil Management -',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Select the soil with moderate to high fertility.',
                ),
                SizedBox(height: 10),
                Text(
                  '2. Plough in crop residues and vegetation to improve soil fertility. Break up large lumps of soil land level.',
                ),
                SizedBox(height: 10),
                Text(
                  '3. Frequently apply well decomposed compost or other organic materials (including crop residues) and incorporate in to the soil.',
                ),
                SizedBox(height: 10),
                Text(
                  '4. If necessary, acid soil can be corrected by liming, whereas alkaline soil can be corrected by gypsum.',
                ),
                SizedBox(height: 10),
                Text(
                  '5. Do not plant soybean in low land and too shallow soils.',
                ),
                SizedBox(height: 10),
                Text(
                  '6. Avoid overtillage.',
                ),
                SizedBox(height: 10),
                Text(
                  'Seed -',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Look for varieties which are biotic (weeds, insect-pest and disease) and abiotic (drought, heat) resistant.',
                ),
                SizedBox(height: 10),
                Text(
                  '2. Plant more than 2 varieties (Varietal cafeteria approach).',
                ),
                SizedBox(height: 10),
                Text(
                  '3. Test seed for germination before the start of the rainy season.',
                ),
                SizedBox(height: 10),
                Text(
                  '4. Do not recycle seed for more than 3 seasons.',
                ),
                SizedBox(height: 10),
                Text(
                  '5. With potent cultures of Tricodermaviride 5 g/kg seed than inoculate with Bradyrhizobiumjaponicum and PSB/PSM, both at 5 g/kg seed',
                ),
      Text(
                  'Use of Fertilizers:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Apply the required level of nutrients through right sources at the right time and right place.',
                ),
                Text(
                  '2. Use organic manure and aged/well composted manure.',
                ),
                Text(
                  '3. Do not apply any nitrogenous fertilizer in standing crop.',
                ),
                Text(
                  '4. Keep fertilizers in a dry, clean and sheltered place.',
                ),
                SizedBox(height: 20),
                Text(
                  'Planting:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Plant soybean with broad bed furrow (BBF) or ridge furrow (FIRBS) or open furrow after every 3/6/9 rows of soybean to avoid the adverse effect of drought or excess rain.',
                ),
                Text(
                  '2. Apply required seed rate based on seed index and germinability.',
                ),
                Text(
                  '3. Maintain planting geometry.',
                ),
                Text(
                  '4. Use 1.25 times seed quantity in delayed planting.',
                ),
                // Add other sections similarly...
                SizedBox(height: 20),
                Text(
                  'Pest and Disease Management:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Always use preventive methods. Examples are using disease-free seeds, adopting crop rotation and intercropping, crops with pest deterring value (trap crop-Suva), and instant removal of infected/ diseased materials.',
                ),
                Text(
                  '2. Adopt physical control measures. Examples include simple hand-picking, erecting traps and mulching.',
                ),
                Text(
                  '3. If really necessary, use bio-pesticides/ synthetic pesticides.',
                ),
                Text(
                  '4. Follow chemical rotation.',
                ),
                Text(
                  '5. Weeding in scheduled time frame.',
                ),
                SizedBox(height: 20),
                Text(
                  'Use of Pesticides:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Only purchase and use registered pesticides.',
                ),
                Text(
                  '2. Do not apply pesticides during strong winds and heavy rain.',
                ),
                Text(
                  '3. Strictly adhere to the withholding period (i.e. the lag between pesticide application and harvesting) on the pesticide label.',
                ),
                Text(
                  '4. Hold pesticides in original containers and keep them tightly closed in a cool, well-ventilated location.',
                ),
                Text(
                  '5. Do not recycle or re-use pesticide containers for other usage.',
                ),
                Text(
                  '6. Spray pesticides with Complete sets of protective clothing.',
                ),
                SizedBox(height: 20),
                Text(
                  'Irrigation:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Adopt micro-irrigation methods such as drip or sprinkler.',
                ),
                Text(
                  '2. Irrigate fields early in the morning, late in the evening or at night during long dry spell at critical stages i.e. seedling, flowering and pod filling.',
                ),
                Text(
                  '3. Irrigate the soybean crop before development of soil cracks.',
                ),
                Text(
                  '4. Avoid uneven application of water.',
                ),
                SizedBox(height: 20),
                Text(
                  'Harvesting and Post-harvesting:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Harvest at the right stage of maturity to avoid the losses due to pod shattering.',
                ),
                Text(
                  '2. If the produce use for seed purposes, thresh the material at the speed of 350 to 400 rpm of thresher.',
                ),
                Text(
                  '3. If produce keep as seed for next season, keep the seed in gunny bags not more than 40 kg capacity than store in a cool and dry place.',
                ),
                Text(
                  '4. Always keep containers, tools, equipment, packing and storage areas clean and tidy.',
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © ICAR-Indian Institute of Soybean Research, All Rights Reserved.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}