
(in-package :cvk)

;;; -------------------------
;;; -------- Structs --------
;;; -------------------------

(defstruct vk-device
  device-ptr)

;;; -------------------------
;;; --- Private functions ---
;;; -------------------------

;; Creates a list of pointers to queues create infos
(defun create-queue-create-infos (queue-families)
  (let ((queue-family-count (length queue-families))
        (queue-create-infos-ptr (cffi:foreign-alloc '(:struct VkDeviceQueueCreateInfo) :count queue-family-count)))
    (loop for queue-family in queue-families
          and i from 0 below queue-family-count
          for queue-count           = (vk-queue-family-queue-count queue-family)
          and family-index          = (vk-queue-family-index       queue-family)
          and queue-create-info-ptr = (cffi:mem-aptr queue-create-infos-ptr '(:struct VkDeviceQueueCreateInfo) i)
          for priority-ptr          = (cffi:foreign-alloc :float :count queue-count)
          do (loop for i from 0 below queue-count (setf (cffi:mem-aref priority-ptr :float i) 1.0))
             (cffi:with-foreign-slots ((sType queueFamilyIndex queueCount pQueuePriorities)
                                       queue-create-info-ptr '(:struct VkDeviceQueueCreateInfo))
               (setf sType            VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
                     queueFamilyIndex family-index
                     queueCount       queue-count
                     pQueuePriorities priority-ptr)))
    (values queue-create-infos-ptr queue-families)))

;; Destroys a list of pointers to queue create infos
(defun destroy-queue-create-infos (queue-create-infos-ptr queue-create-info-count)
  (loop for i from 0 below queue-create-info-count
        for queue-create-info-ptr = (cffi:mem-aptr queue-create-infos-ptr '(:struct VkDeviceQueueCreateInfo) i)
        do (cffi:with-foreign-slots ((pQueuePriorities) queue-create-info-ptr '(:struct VkDeviceQueueCreateInfo))
             (cffi:foreign-free pQueuePriorities)))
  (cffi:foreign-free (first queue-create-infos-ptr)))

;; With queue create infos macro
(defwith with-queue-create-infos
         create-queue-create-infos
         destroy-queue-create-infos
         :destructor-arity 2)


;; Creates a physical device extensions struct
(defun create-device-extensions (extensions)
  (let ((extensions-ptr (cffi:foreign-alloc :string :initial-contents extensions)))
    (values extensions-ptr (length extensions))))

;; Destroys a physical device extensions struct
(defun destroy-device-extensions (extensions-ptr extension-count)
  (loop for i from 0 below extension-count
    do (cffi:foreign-free (cffi:mem-aref extensions-ptr :string i)))
  (cffi:foreign-free extensions-ptr))

;; With device extensions macro
(defwith with-device-extensions
         create-device-extensions
         destroy-device-extensions
         :destructor-arity 2)


;; Creates a physical device features pointer
(defun create-device-features (features)
  (let ((device-fetures-ptr (cffi:foreign-alloc '(:struct VkPhysicalDeviceFeatures))))
    (memset device-features-ptr 0 (cffi:foreign-type-size '(:struct VkPhysicalDeviceFeatures)))
    (loop feature in features
      do (setf (cffi:foreign-slot-value device-features-ptr '(:struct VkPhysicalDeviceFeatures) feature) VK_TRUE))
    (values device-features-ptr)))

;; Destroys a physical device features pointer
(defun destroy-device-features (device-features-ptr)
  (cffi:foreign-free device-features-ptr))

;; With device features macro
(defwith with-device-features
         create-device-features
         destroy-device-features)


;; Creates a device create info
(defun create-device-create-info (queue-create-infos-ptr queue-create-info-count extensions-ptr extension-count features-ptr)
  (let ((device-create-info-ptr (cffi:foreign-alloc '(:struct VkDeviceCreateInfo))))
    (memset device-create-info-ptr 0 (cffi:foreign-type-size '(:struct VkDeviceCreateInfo)))
    (cffi:with-foreign-slots ((sType queueCreateInfoCount pQueueCreateInfos enabledExtensionCount
                               ppEnabledExtensionNames pEnabledFeatures))
      (setf sType VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
            queueCreateInfoCount queue-create-info-count
            pQueueCreateInfos queue-create-infos-ptr
            enabledExtensionCount extension-count
            ppEnabledExtensionNames extensions-ptr
            pEnabledFeatures features-ptr)
      device-create-info-ptr)))

;; Destroys a device create info
(defun destroy-device-create-info (device-create-info-ptr)
  (cffi:foreign-free device-create-info-ptr))

;; With device create info macro
(defwith with-device-create-info
         create-device-create-info
         destroy-device-create-info)

;;; -------------------------
;;; ---- Public functions ---
;;; -------------------------

;; Creates a device
(defun create-vk-device (physical-device queue-families &key (extensions (list "VK_KHR_swapchain")) (features nil))
  (nest ((physical-device-ptr      (vk-physical-device-physical-device-ptr physical-device))
         (queue-family-count       (length queue-families))
         (with-queue-create-infos  ((queue-create-infos-ptr queue-create-info-count) queue-families))
         (with-device-extensions   ((extensions-ptr extension-count) extensions))
         (with-device-features     (features-ptr features))
         (with-device-create-info  (device-create-info-ptr queue-create-infos-ptr queue-create-info-count
                                                           extensions-ptr extension-count features-ptr))
         (cffi:with-foreign-object (device-ptr 'VkDevice)))
    (let ((result (vkCreateDevice physical-device-ptr device-create-info-ptr (cffi:null-pointer) device-ptr)))
      (check-result result)
      (make-vk-device :device-ptr (cffi:mem-ref device-ptr 'VkDevice)))))

;; Destroys a device
(defun destroy-vk-device (device)
  (let ((device-ptr (vk-device-device-ptr device)))
    (vkDestroyDevice device-ptr (cffi:null-pointer))))

;; With device macro
(defwith with-vk-device
         create-vk-device
         destroy-vk-device)
