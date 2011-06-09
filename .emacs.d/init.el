(setq dotfiles-dir (file-name-directory
		                       (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)
;; this recurses at the moment
;;(mapc #'load (directory-files dotfiles-dir nil ".*el$"))

(load (concat dotfiles-dir "org-mode.el"))

;; add to path and load modules
(setq vendor-dir (concat dotfiles-dir "vendor/"))

(let ((default-directory vendor-dir))
        (normal-top-level-add-subdirs-to-load-path))

(load (concat vendor-dir "slime.el"))
