(in-package :cvk)

(adp:in-file #P"docs/api/callbacks")

(adp:header "Callbacks" callbacks-header)

;; (mcffi:define-foreign-callback-definer doc-file "PFN_vkAllocationFunction"
;;   def-allocation-function-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkReallocationFunction"
;;   def-reallocation-function-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkFreeFunction"
;;   def-free-function-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkInternalAllocationNotification"
;;   def-internal-allocation-notification-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkInternalFreeNotification"
;;   def-internal-free-notification-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkDebugReportCallbackEXT"
;;   def-debug-report-callback-ext-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkDebugUtilsMessengerCallbackEXT"
;;   def-debug-utils-messenger-callback-ext-callback
;;   ("messageSeverity" :type "VkDebugUtilsMessageSeverityFlagBitsEXT"
;; 		     :foreign-type vkdebugutilsmessageseverityflagbitsext)
;;   ("messageTypes" :type vkdebugutilsmessagetypeflagsext :foreign-type
;; 		  vkdebugutilsmessagetypeflagsext)
;;   ("pCallbackData" :type "VkDebugUtilsMessengerCallbackDataEXT" :foreign-type
;; 		   :pointer)
;;   ("pUserData" :type "lisp object" :foreign-type :pointer :create
;; 	       (gethash (cffi-sys:pointer-address puserdata)
;; 			*debug-utils-messenger-callback-user-data*))
;;   (result :type boolean :foreign-type vkbool32 :return
;; 	  (if (null result)
;;               vk_false
;;               vk_true)))

;; (more-cffi:def-foreign-callback-definer doc-file
;;   "PFN_vkDeviceMemoryReportCallbackEXT"
;;   def-device-memory-report-callback-ext-callback)

;; (more-cffi:doc-note doc-file
;;                     "This callback definer needs to be revised. Please, post an issue to request it.")
