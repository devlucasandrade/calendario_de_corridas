import 'package:calendario_de_corridas/src/app/home/widgets/custom_drawer.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(index: 0),
      appBar: AppBarWidget(
        textTitle: 'CORRIDAS DE RUA 2023 - BAHIA',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Text(
              'DICAS',
              style: TextStyles.titleXGrande(),
            ),
            const SizedBox(height: 10),
            Material(
              elevation: 10,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                        'Assuntos sobre corrida, podcasts, instagram, twitter, etc.'),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            // const Spacer(),
            const SizedBox(height: 30),
            Text(
              'PRÓXIMAS 5 CORRIDAS',
              style: TextStyles.titleXGrande(),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text('Corrida de Rua'),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.calendar_month),
                                    SizedBox(width: 5),
                                    Text('10/10/2010'),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: const [
                                    Icon(Icons.sports_score_outlined),
                                    SizedBox(width: 5),
                                    Text('5 e 10km'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
