

(asdf:load-system "common-vulkan" :force t)

(defun main ()
  (cvk:nest ((glfw:with-glfw)
             (cvk:with-instance instance (t))
             (cvk:with-window window ("My window" 640 480))
             (cvk:with-surface surface (instance window))
             (cvk:with-physical-device physical-device (instance :surface surface))
             (let ((queue-family (cvk:physical-device-queue-family physical-device :surface surface))))
             (cvk:with-device device (physical-device (list queue-family)))
             (cvk:with-command-pool command-pool (device queue-family))
             (cvk:with-command-buffer command-buffer (device command-pool))
             (let ((queue (cvk:device-queue device queue-family 0))))
             (cvk:with-swapchain swapchain (physical-device device surface (list queue-family) 640 480))
             (cvk:with-shader-module module (device "shaders/shader/vert.spv")))
    (format t "Hola~%")
    (format t "~S~%" swapchain)
    (sleep 3)
    (format t "Adios~%")))


(main)
