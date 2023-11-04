import 'dart:convert';
import 'package:aamanigroup/Screens/ThankYouPage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Webpage extends StatefulWidget {
  const Webpage({super.key});
  @override
  State<Webpage> createState() => _WebpageState();
}
class _WebpageState extends State<Webpage> {
  TextEditingController FullName = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController City = TextEditingController();
  TextEditingController Pin = TextEditingController();
  TextEditingController items = TextEditingController();
  TextEditingController dateCtl = TextEditingController();
  TextEditingController MobileNumber = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController NomineeName = TextEditingController();
  TextEditingController dateCtl1 = TextEditingController();
  TextEditingController relations = TextEditingController();
  TextEditingController ProjectName = TextEditingController();
  TextEditingController PlotArea = TextEditingController();
  TextEditingController PlotRate = TextEditingController();
  TextEditingController TotalPlotValue = TextEditingController();
  TextEditingController BookingAmount = TextEditingController();
  TextEditingController PaymentMode = TextEditingController();
  TextEditingController PaidAmount = TextEditingController();
  TextEditingController TransactionDetails = TextEditingController();
  TextEditingController dateCtl2 = TextEditingController();
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  TextEditingController resultController = TextEditingController();
  void calculate() {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;
    double calculatedResult = num1 * num2;
    resultController.text = '$calculatedResult';
  }
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Gujarat';
  String currentSelectedValue = "Gujarat";
  var _items = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttarakhand',
    'Uttar Pradesh',
    'West bengal',
    'Andaman and Nicobar Islands',
    'Chandigarh',
    'Dadra and Nagar Haveli and Daman & Diu',
    'Delhi',
    'Jammu & Kashmir',
    'Ladakh',
    'Lakshadweep',
    'Puducherry',
  ];
  String dropdownValue1 = 'Son';
  String currentSelectedValue1 = "Son";
  var _relations = [
    'Father',
    'Mother',
    'Husband',
    'Wife',
    'Sister',
    'Brother',
    'Son',
    'Daughter',
    'Others',
  ];
  String dropdownValue2 = 'Aamani SIR-Phase-1 -Premium Plots';
  String currentSelectedValue2 = "Aamani SIR-Phase-1 -Premium Plots";
  var _ProjectName = [
    'Aamani SIR-Phase-1 -Premium Plots',
    'Aamani SIR-Phase-2/3/4',
    'Aamani SIR Tathasu Township',
    'Aamani SIR Tathasu (SR.no 74 & 214)',
    'Aamani Homes-1',
    'Dholera Greenfield Smart City-Bhangadh',
    'Dholera Activation Zone-Mundi (Residential)',
    'Dholera Airport Estate',
    'Dholera River View-Dhanala',
  ];
  String dropdownValue3 = 'IMPS';
  String currentSelectedValue3 = "IMPS";
  var _PaymentMode = [
    'IMPS',
    'Cash',
    'UPI',
    'Cheque/DD',
    'NEFT',
    'RTGS',
    'Others',
    'IFTO',
  ];
  final apiUrl = "https://dholerasir.co/api/createbooking.php";
  Future<void> sendPostRequest() async {
    var data = await http.post(apiUrl as Uri,
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        body: jsonEncode({
          "FullName": FullName.text,
          "Address": Address.text,
          "City": City.text,
          "Pin": Pin.text,
          "Dob": items.selection,
          "datectl": dateCtl.text,
          "MobileNumber": MobileNumber.text,
          "Email": Email.text,
          "NomineeName": NomineeName.text,
          "Dob1": dateCtl1.text,
          "Relations": relations.selection,
          "ProjectName": ProjectName.selection,
          "PlotArea": number1Controller.text,
          "PlotRate": number2Controller.text,
          "TotalPlotValue": resultController.text,
          "BookingAmount": BookingAmount.text,
          "PaymentMode": PaymentMode.selection,
          "PaidAmount": PaidAmount.text,
          "TransactionDetails": TransactionDetails.text,
          "Dob3": dateCtl2.text,
        }));
  }
  @override
  void initState() {
    sendPostRequest();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aamani Client Data Form",style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Image.network(
                    "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=434,fit=crop,q=95/Y4LODR9ED1S2NLX4/aamani_group_logo-removebg-preview-Aq2e3QQxG6HRznjg.png",
                    height: 80,
                    width: 70,
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fill this form Compulsary",style: TextStyle(fontSize: 30, color: Colors.brown.shade700),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: FullName,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: "Full Name",
                          prefixIcon: Icon(Icons.person,color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: Address,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Address",
                          prefixIcon: Icon(Icons.location_on,color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: City,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "City",
                          prefixIcon: Icon(Icons.location_on_sharp,color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: Pin,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6),
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Pincode",prefixIcon: Icon(Icons.pin,color: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.00),
                      decoration: BoxDecoration(color: Colors.white,),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blue,width: 0.0,),
                              ),
                              hintText: "Gujarat",
                              prefixIcon: Icon(Icons.location_on_sharp,color: Colors.black,),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: currentSelectedValue,
                                isDense: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    currentSelectedValue = newValue.toString();
                                    state.didChange(newValue);
                                  });
                                },
                                items: _items.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: dateCtl,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Date of Birth",
                          prefixIcon: Icon(Icons.calendar_month,color: Colors.black,
                          ),
                        ),
                        onTap: () async {
                          DateTime? date = DateTime(1900);
                          FocusScope.of(context).requestFocus(FocusNode());
                          date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateCtl.text = DateFormat('dd/MM/yyyy').format(date!);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: IntlPhoneField(
                        controller: MobileNumber,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          counter: Offstage(),
                          hintText: 'Mobile Number',
                        ),
                        initialCountryCode: 'IN',
                        showDropdownIcon: true,
                        dropdownIconPosition: IconPosition.trailing,
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: Email,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return 'Enter Correct Email-Id.';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Email Id",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Nominee Details",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: NomineeName,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Nominee Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: dateCtl1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Nominee Date of Birth",
                          prefixIcon: Icon(
                            Icons.calendar_month,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () async {
                          DateTime? date = DateTime(1900);
                          FocusScope.of(context).requestFocus(FocusNode());
                          date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateCtl1.text =
                              DateFormat("dd/MM/yyyy").format(date!);
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blue, width: 0.0),
                              ),
                              hintText: "Relations",
                              prefixIcon: Icon(
                                Icons.person_2,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: currentSelectedValue1,
                                isDense: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    currentSelectedValue1 = newValue.toString();
                                    state.didChange(newValue);
                                  });
                                },
                                items: _relations.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Project Details",style: TextStyle(fontSize: 30, color: Colors.black),),
                    SizedBox(height: 25,),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(color: Colors.white,),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 0.0),
                              ),
                              hintText: "Project Name",
                              prefixIcon: Icon(Icons.account_balance,),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: currentSelectedValue2,
                                isDense: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    currentSelectedValue2 = newValue.toString();
                                    state.didChange(newValue);
                                  });
                                },
                                items: _ProjectName.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: number1Controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Plot Area (Sq Yard)",
                          prefixIcon: Icon(Icons.location_city_rounded),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: number2Controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Plot Rate",
                          prefixIcon: Icon(Icons.currency_rupee),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child : TextFormField(
                        onTap: calculate,
                        controller: resultController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Total Plot Value",
                          prefixIcon: Icon(Icons.currency_rupee),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Payments/Booking Details",style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: BookingAmount,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Booking Amount",
                          prefixIcon: Icon(Icons.currency_rupee),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.blue, width: 0.0),
                              ),
                              hintText: "Payment Mode",
                              prefixIcon: Icon(Icons.payment),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: currentSelectedValue3,
                                isDense: true,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    currentSelectedValue3 = newValue.toString();
                                    state.didChange(newValue);
                                  });
                                },
                                items: _PaymentMode.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: PaidAmount,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Paid Amount",
                          prefixIcon: Icon(Icons.currency_rupee),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: TransactionDetails,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Transactions Details",
                          prefixIcon: Icon(Icons.details),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: dateCtl2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 0.0),
                          ),
                          hintText: "Date of Payments",
                          prefixIcon: Icon(Icons.calendar_month,color: Colors.black,
                          ),
                        ),
                        onTap: () async {
                          DateTime? date = DateTime(1900);
                          FocusScope.of(context).requestFocus(FocusNode());
                          date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateCtl2.text = DateFormat("dd/MM/yyyy").format(date!);
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("This Information is correct, and I am responsible for this information.",style: TextStyle(color: Colors.brown.shade700,
                    ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      color: Colors.blue,
                      height: 40,
                      width: 150,
                      child: OutlinedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            sendPostRequest();
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ThankYouPage(),
                            ),
                            );
                          }
                        },
                        child: const Text('Submit',style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
