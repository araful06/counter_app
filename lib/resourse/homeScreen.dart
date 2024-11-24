import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:useprovider/provider/Counter_provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build context");
    return  SafeArea (
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (ctx, value, child) {
                print("context print");
                return Center(
                  // way 1 is commant
                //     child: Text(
                //   " this is number of ${Provider.of<CounterProvider>(ctx, listen: true).getCount()}",
                //   style: TextStyle(color: Colors.red, fontSize: 25),
                // ));


                  // way two
                    child: Text(
                      " this is number of ${ctx.watch<CounterProvider>().getCount()}",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // way 1 is commant
                      // Provider.of<CounterProvider>(context, listen: false).incrimentCount();

                      // way two
                      context.read<CounterProvider>().incrimentCount();
                    },
                    child: Icon(Icons.add)),
                // way 1 is commant
                // ElevatedButton(onPressed: () {  Provider.of<CounterProvider>(context, listen: false).dicreementCount();}, child: Icon(Icons.delete))

                // way two
                ElevatedButton(onPressed: (){context.read<CounterProvider>().dicreementCount();}, child: Icon(Icons.delete))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
