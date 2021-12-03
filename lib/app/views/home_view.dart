import 'package:cripto/app/components/currency_box.dart';
import 'package:cripto/app/controllers/home_controller.dart';
import 'package:cripto/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController toText = TextEditingController();

  TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 100, right: 30, left: 30, bottom: 30),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height:50),
                CurrencyBox(
                  enabled: true,
                  selectedItem: homeController.toCurrency,
                  controller: homeController.toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                CurrencyBox(
                  enabled: false,
                  selectedItem: homeController.fromCurrency,
                  controller: homeController.fromText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      homeController.convert();
                    });
                  },
                  child: const Text('CONVERTER'),
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
