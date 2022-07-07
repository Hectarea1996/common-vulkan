
(in-package :cvk)


(with-open-file (doc-file (asdf:system-relative-pathname "common-vulkan" "docs/api/surface.md")
			  :direction :output :if-exists :supersede :if-does-not-exist :create)


  (mcffi:doc-header "Surface" doc-file)


  (mcffi:doc-subheader "Functions" doc-file)
  

  (mcffi:doc-subsubheader "vkDestroySurfaceKHR" doc-file)
  
  (mcffi:def-foreign-function destroy-surface doc-file (instance surface pAllocator)
    (declare-types ("VkInstance" instance) ("VkSurfaceKHR" surface) ("VkAllocationCallbacks" "pAllocator"))
    (let ((pAllocator-c (or pAllocator (cffi:null-pointer))))
      (vkDestroySurfaceKHR instance surface pAllocator-c))))
