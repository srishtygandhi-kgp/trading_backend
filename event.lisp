(defclass EVENT ()
    ((timestamp 
        :accessor timestamp 
        :initarg :timestamp)
   (value 
        :accessor value 
        :initarg :value)))