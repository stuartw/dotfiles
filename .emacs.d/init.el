(setq dotfiles-dir (file-name-directory
		                       (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)
;; this recurses at the moment
;;(mapc #'load (directory-files dotfiles-dir nil ".*el$"))

(load (concat dotfiles-dir "org-mode.el"))

(setq vendor-dir (concat dotfiles-dir "vendor/"))
;; find out why this fails
;; (load (concat vendor-dir "slime.el"))
