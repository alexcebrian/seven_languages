
/**
  Boolean comparisons
 */

(1==1) ifTrue("1==1 is true" println)

(1=="one") ifFalse("is strongish typed" println)

(0 and true) ifTrue("0 is true" println)

(nil and true) ifTrue("nil is true" println) ifFalse("nil is false" println)

("" and true) ifTrue("empty str is true" println) ifFalse("empty str is false" println)

(list() and true) ifTrue("emtpty list is true" println) ifFalse("emtpty list is false" println)

/**
  List of available slots
 */

MyProto := Object clone

MyProto slotNames println

MyProto withSetter ::= "a value"

MyProto printMe := method(withSetter println)

MyProto printMe