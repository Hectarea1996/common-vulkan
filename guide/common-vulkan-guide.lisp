
(in-package :cvg)

(adp:in-file #P"docs/guide/common-vulkan-guide")

(adp:header "Common Vulkan Guide" common-vulkan-guide-header)

(adp:text "Welcome to the Common Vulkan Guide! This guide is based on the official " @w("Vulkan Tutorial" "https://vulkan-tutorial.com/Introduction") ". However, this guide will not teach you Vulkan like the tutorial does. This guide will show you how the code you see in the Vulkan Tutorial should look like using Common Lisp. I’m sure that most of the users that come here have already done at least once the tutorial, that’s why this will be just a guide.")

(adp:text "I tried when wrapping functions and structs to balance speed and comfortability. Most of the functions are close to the original ones, but Common Lisp is a different language and it means that some functions need to be slightly modified. If you don’t know how a function works at the Common Lisp side you can find it in the " @h(cvk::api-reference-header) ".")

(adp:text "I think I’m not missing anything so…, let’s code!")

(adp:itemize (adp:item "Introduction")
	     (adp:itemize (adp:item @h(introduction-header)))
	     (adp:item "Setup")
	     (adp:itemize (adp:item @h(base-code-header))))


(defmacro next-previous (next-header previous-header &key ((:main main-link) nil) ((:vertex vertex-link) nil) ((:fragment fragment-link) nil))
  "Write a list of next and previous sections. Optionally, write a list with the source code."
  (check-type next-header symbol)
  (check-type previous-header symbol)
  (check-type main-link (or null string))
  (check-type vertex-link (or null string))
  (check-type fragment-link (or null string))
  `(progn
     ,@(when (or main-link vertex-link fragment-link)
	 `((adp:itemize ,@(when main-link
			    `(adp:item @b("Common Lisp code") ": " @w("main.lisp" ,main-link)))
			,@(when vertex-link
			    `(adp:item @b("Vertex shader") ": " @w("shader.vert" ,vertex-link)))
			,@(when fragment-link
			    `(adp:item @b("Fragment shader") ": " @w("shader.frag" ,fragment-link))))))
     (adp:itemize (adp:item @b("Next") ": " @h(,next-header))
		  (adp:item @b("Previous") ": " @h(,previous-header)))))
