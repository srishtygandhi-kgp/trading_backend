(defclass AGENT ()
  ((name 
    :accessor name 
    :initarg :name)
   (timestamps 
    :accessor timestamps 
    :initform nil)
   (orders 
    :accessor orders 
    :initform nil)
   (positions 
    :accessor positions 
    :initform nil)
   (pls 
    :accessor pls 
    :initform nil)
    (fitnesses
    :accessor fitnesses
    :initform nil)
   (incomingmessages 
    :accessor incomingmessages 
    :initform nil)
   (outgoingmessages
    :accessor outgoingmessages
    :initform nil)
   (recipientslist
    :accessor recipientslist
    :initform nil)))