(defclass EVENT ()
    ((timestamp 
        :accessor timestamp 
        :initarg :timestamp)
   (value 
        :accessor value 
        :initarg :value)))

(defclass MARKETUPDATE (EVENT)
    ((security 
        :accessor security 
        :initarg :security)))