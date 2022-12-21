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

(defun consume (a e)
    (when (observe a e)
    (update a e)))

(defmethod observe ((a AGENT) (e EVENT))
    T)

(defmethod update :before ((a AGENT) (e MARKETUPDATE))
    (when (null (timestamps a))
        (push 0 (pls a))
        (push 0 (fitnesses a)))
    (push (timestamp e) (timestamp a))
    (push (price e)(revalprices a))
    (preprocess a e)
    (format T ":BEFORE completed for agent ~A and event ~A~ %" a e))