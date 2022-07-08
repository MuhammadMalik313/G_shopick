import 'package:e_cart/constatnts/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemecolor,
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body:
          // shrinkWrap: true,
          // physics: ScrollPhysics(),

          const RadioButtonWidget(),
    );
  }
}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  // The inital group value
  String _selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 234, 241),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Please let us know your payment Method:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  // tileColor:  const Color.fromARGB(255, 218, 234, 241),
                  // dense: true,
                  leading: Radio<String>(
                    activeColor: appThemecolor,
                    value: 'online payment',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Align(
                    alignment: Alignment(-1.3, 0),
                    child: Text(
                      'Online Payment',
                    ),
                  ),
                ),
                ListTile(
                  // tileColor:  const Color.fromARGB(255, 218, 234, 241),
                  leading: Radio<String>(
                    activeColor: appThemecolor,
                    value: 'cash on delivery',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Align(
                      alignment: Alignment(-1.3, 0),
                      child: Text('cash on delivery')),
                ),
                // const SizedBox(height: 25),
                // Text(_selectedGender == 'online payment' ? 'Pay online' : 'cash on delivery')
                Divider(
                  thickness: 1,
                  color: appThemecolor,
                ),
                const Text(
                  "Price Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const ListTile(
                  // dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  title: Text("product price"),
                  trailing: Text(
                    "₹79,850",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  title: Text("Delivery charge"),
                  trailing: Text(
                    "₹50",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: appThemecolor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount Payable",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹79,900",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),

                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  child: Image.asset(
                    "assets/3E3D40A9-1D3C-4C89-9C8A-93FE29E0F6EC_1_201_a.jpeg",
                    
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // primary: appThemecolor,
                      elevation: 4,
                      fixedSize: const Size(400, 0),
                    ),
                    child: Text(
                      "CONFIRM",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
