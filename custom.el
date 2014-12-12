;;; This file contains some temporary code snippets, it will be loaded after
;;; various oh-my-emacs modules. When you just want to test some code snippets
;;; and don't want to bother with the huge ome.*org files, you can put things
;;; here.

;; For example, oh-my-emacs disables menu-bar-mode by default. If you want it
;; back, just put following code here.
(menu-bar-mode t)

;;; You email address
(setq user-mail-address "marc.bluemner@gmail.com")

;;; Calendar settings
;; you can use M-x sunrise-sunset to get the sun time
(setq calendar-location-name "Hamburg, Germany")

;;; Time related settings
;; show time in 24hours format
(setq display-time-24hr-format t)
;; show time and date
(setq display-time-and-date t)
;; time change interval
(setq display-time-interval 10)
;; show time
(display-time-mode t)

;;; Some tiny tool functions
(defun replace-all-chinese-quote ()
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (replace-regexp  "”\\|“" "\"")
    (mark-whole-buffer)
    (replace-regexp "’\\|‘" "'")))

;; Comment function for GAS assembly language
(defun gas-comment-region (start end)
  "Comment region for AT&T syntax assembly language The default
comment-char for gas is ';', we need '#' instead"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (insert "# ")
      (next-line))
    (goto-char end)))

(defun gas-uncomment-region (start end)
  "Uncomment region for AT&T syntax assembly language the
inversion of gas-comment-region"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (if (equal (char-after) ?#)
          (delete-char 1))
      (next-line))
    (goto-char end)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-feeds
   (quote
    ("http://feeds.feedburner.com/EverydayRails?format=xml")))
 '(jabber-account-list
   (quote
    (("marc.bluemner@gmail.com"
      (:password . "Meinefrau011280")
      (:network-server . "talk.google.com")
      (:port . 442)))))
 '(magit-use-overlays nil)
 '(ns-right-alternate-modifier (quote none))
 '(ns-right-command-modifier (quote none))
 '(ns-right-control-modifier (quote none))
 '(org-directory "~/Dropbox/dev/org/")
 '(org-mobile-agendas (quote default))
 '(org-mobile-directory "/Users/mbluemner/Dropbox/dev/org/")
 '(org-mobile-files
   (quote
    (org-agenda-files org-agenda-text-search-extra-files "")))
 '(org-mobile-inbox-for-pull "~/.org/from-mobile.org")
 '(rcirc-authinfo
   (quote
    (("irc.freenode.net" nickserv "rocknrollmarc" "meinefrau011280"))))
 '(rcirc-auto-authenticate-flag t)
 '(rcirc-default-nick "rocknrollmarc")
 '(rcirc-default-user-name "rocknrollmarc"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
