  import 'package:flutter/cupertino.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'card.dart';
import 'main.dart';

Padding nikeair(BuildContext context) {
    return Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Container(
                              // height: 100,
                              // color: Colors.amber,
                                    width: MediaQuery.of(context).size.width,

                              child: Expanded(
                                  child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Container(
                                    // height: 350, // card height
                                    width: MediaQuery.of(context).size.width,
                                    //////////////////////////////////////////
                                    child: ScrollSnapList(
                                        itemBuilder: _builitems,
                                        itemCount: data.length,
                                        itemSize: 200,
                                        onItemFocus: (index){},
                                        dynamicItemSize: true,
                                        scrollDirection: Axis.horizontal,
                                        initialIndex: 1,
                                        ),
                                        
                                  ),
                                ),
                              )),
                            ),
                          );
  }
  Widget _builitems(BuildContext context,int index){
  return Padding(
    padding: const EdgeInsets.only(right: 0),
    child: Container(
                // width: MediaQuery.of(context).size.width,
      // color: Colors.amberAccent,
      child: carditem(data, index, context)),
  );
}