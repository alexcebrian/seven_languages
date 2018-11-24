
(defn big 
	"Return whether the string in first param is longer than second param"
	[st n] 
	(< n (count st)))


(def col-types {(class []) :vector, (class #{}) :set, (class {}) :map})
(defn collection-type
	"Return the collection type of the first param"
	[col]
	(col-types (class col))
	)
