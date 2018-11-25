
(defmacro unless 
	([test body] (list 'if (list 'not test) body))
	([test body else] (list 'if (list 'not test) body else)))

(defprotocol Transport
	(drive [d])
	(recharge [d]))

(defrecord Car [fuel mpg]
	Transport
	(drive [_] (Car. (- fuel (/ 1 mpg)) mpg))
	(recharge [_] (Car. (+ fuel 1) mpg)))
