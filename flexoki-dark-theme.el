;;; flexoki.el --- Flexoki for Emacs

;; Author: David Bjergaard <dmb@ccbar.us>
;;         Steph Ango
;; Maintainer: David Bjergaard <dmb@ccbar.us>
;; Version: 0.1
;; Homepage: https://github.com/dmb2/flexoki

;;; Commentary:
;; 
;; An emacs theme based on Steph Ango's Flexoki Theme.


;;; Code:
(require 'autothemer)

(autothemer-deftheme flexoki-dark "Emacs theme of Steph Ango's Flexoki Theme."

		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF))
		       ((class color) (min-colors #xFF)))

		      ;; Specify the color palette, color columns correspond to each of the classes above.
		      (flexoki-red	 "#AF3029")
		      (flexoki-orange	 "#BC5215")
		      (flexoki-yellow	 "#AD8301")
		      (flexoki-green	 "#66800B")
		      (flexoki-cyan	 "#24837B")
		      (flexoki-blue	 "#205EA6")
		      (flexoki-purple	 "#5E409D")
		      (flexoki-magenta	 "#A02F6F")

		      (flexoki-red-2	 "#D14D41")
		      (flexoki-orange-2	 "#DA702C")
		      (flexoki-yellow-2	 "#D0A215")
		      (flexoki-green-2	 "#879A39")
		      (flexoki-cyan-2	 "#3AA99F")
		      (flexoki-blue-2	 "#4385BE")
		      (flexoki-purple-2	 "#8B7EC8")
		      (flexoki-magenta-2 "#CE5D97")

		      (flexoki-tx	 "#100F0F")
		      (flexoki-tx-2	 "#6F6E69")
		      (flexoki-tx-3	 "#B7B5AC")
		      (flexoki-ui	 "#E6E4D9")
		      (flexoki-ui-2	 "#DAD8CE")
		      (flexoki-ui-3	 "#CECDC3")
		      (flexoki-bg	 "#FFFCF0")
		      (flexoki-bg-2	 "#F2F0E5")

		      (flexoki-drk-tx	 "#CECDC3")
		      (flexoki-drk-tx-2	 "#878580")
		      (flexoki-drk-tx-3	 "#575653")
		      (flexoki-drk-ui	 "#282726")
		      (flexoki-drk-ui-2	 "#343331")
		      (flexoki-drk-ui-3	 "#403E3C")
		      (flexoki-drk-bg	 "#100F0F")
		      (flexoki-drk-bg-2	 "#1C1B1A"))

		     ;; Specifications for Emacs faces.
		     ;; Simpler than deftheme, just specify a face name and 
		     ;; a plist of face definitions (nested for :underline, :box etc.)
		     ((button (:underline t :weight 'bold :foreground flexoki-yellow))
		      (default (:foreground flexoki-drk-tx :background flexoki-drk-bg))
		      (cursor (:background flexoki-tx-2))
		      (error (:foreground flexoki-red))
		      (escape-glyph (:foreground flexoki-purple))

		      (link (:weight 'bold :underline t :foreground flexoki-blue-2))
		      (link-visited (:weight 'normal :underline t :foreground flexoki-blue-2))

		      (highlight (:background flexoki-drk-ui-2))
		      (region (:extend t :foreground flexoki-drk-ui :background flexoki-tx-3))
		      (secondary-selection (:extend t :background flexoki-drk-ui-2))
		      (trailing-whitespace (:background flexoki-red-2))
		      (hl-line (:underline nil :extend t :background flexoki-drk-ui-2))
		      (mode-line (:underline flexoki-drk-ui-3 :overline flexoki-drk-ui-2 :box
					     (:line-width 1 :color flexoki-drk-ui-2 :style 'unspecified)
					     :foreground flexoki-drk-tx-2 :background flexoki-drk-ui-2))
		      (mode-line-inactive (:underline flexoki-drk-ui-3 :overline flexoki-drk-ui-2 :box
						      (:line-width 1 :color flexoki-drk-ui :style 'unspecified)
						      :foreground flexoki-tx-2 :background flexoki-drk-ui))
		      (mode-line-highlight (:box (:line-width 2 :color flexoki-tx-2 :style 'released-button)))
		      (mode-line-buffer-id (:weight 'bold :foreground flexoki-tx-3))
		      (vertical-border (:foreground flexoki-drk-ui-3))
		      (window-divider (:foreground flexoki-drk-ui-2))
		      (window-divider-first-pixel (:foreground flexoki-drk-ui-2))
		      (window-divider-last-pixel (:foreground flexoki-drk-ui-2))
		      (minibuffer-prompt (:foreground flexoki-drk-tx-2))
		      (fringe (:foreground flexoki-tx-2 :background flexoki-drk-ui))
		      (scroll-bar (:foreground flexoki-bg))
		      )

		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     
		     (custom-theme-set-variables 'flexoki-dark
						 `(ansi-color-names-vector [,flexoki-red-2
									    ,flexoki-green-2
									    ,flexoki-blue-2
									    ,flexoki-purple-2
									    ,flexoki-yellow-2
									    ,flexoki-orange-2
									    ,flexoki-cyan-2])))


(provide-theme 'flexoki-dark)

;;(add-to-list 'custom-theme-load-path "/home/dmb/.emacs-lisp/flexoki-theme/" )
;;(add-to-list 'load-path "/home/dmb/.emacs-lisp/flexoki-theme/")
