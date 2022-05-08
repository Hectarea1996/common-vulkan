
(asdf:defsystem "common-vulkan"
   :depends-on ("cffi" "cl-glfw")
   :components (
                ; Vulkan
                (:file "vulkan/load-vulkan")
                (:file "package")
                (:file "vulkan/vk-types")
                (:file "vulkan/s-type-table")
                (:file "vulkan/vk-macros")
                (:file "vulkan/vk-funcs")
                (:file "vulkan/support")

                ; Common Vulkan
                (:file "src/instance")
                (:file "src/window")
                (:file "src/surface")
                (:file "src/physical-device")
                (:file "src/queue-family")
                (:file "src/device")
                (:file "src/semaphore")
                (:file "src/fence")
                (:file "src/command-pool")
                (:file "src/command-buffer")
                (:file "src/queue")
                (:file "src/swapchain")))
