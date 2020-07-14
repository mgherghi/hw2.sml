Control.Print.printDepth := 20;
Control.Print.printLength := 100; 
CM.make "$smlnj-tdp/back-trace.cm";
SMLofNJ.Internals.TDP.mode := true; 

fun both(a,b) (v:'a):bool =
    if a v andalso b v
    then true
    else false
;

fun satisfiesAll(L,v:'a ): bool =
    List.all (fn x => x v) L 
;

fun memberExists(L:''a list, v:''a):bool =
    List.exists(fn x => x=v) L
;

fun getOrElse(L:''a*'b list, akey:''a,defaultVal:'b):bool =
  List.find(fn x => x=akey) L
;
