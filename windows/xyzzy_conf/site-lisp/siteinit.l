;;; trace on
(toggle-trace-on-error)

;----------------------------------------------------------------------
;;Netinstaller
(require "ni/setup")
;; 自動設定を利用する
(ni-autoload)

;; PROXYを通す場合
;(setq ni::*http-proxy-host* "proxy.host")  ; PROXY のホスト
;(setq ni::*http-proxy-host* "proxy.host")  ; PROXY のホスト

;(setq ni::*http-proxy-port* 8080)          ; PROXY のポート
;(setq ni::*http-proxy-port* 8080)          ; PROXY のポート

;Netinstallerでのサイトを最新のものにする
;~/.netinst/config.lに記述
;---------------------------------------------------------------------

;---------------------------------------------------------------------
;outline-tree2
(require "color")
(require "win-window")
(require "treeview/setup")
(require "buf2html")
(require "outline-tree/outline-tree")

;outlinex
(require "outlinex")
;-------------------------------------------------------------------------

;------------ mode -------------------------------------------------------
;html+-mode タグなどが省略できる
(require "auto-time-stamp")
(define-key ctl-x-map #\C-s 'save-buffer-with-time-stamp)

(export 'ed::html+-mode "ed")
(autoload 'html+-mode "html+-mode" t)
(pushnew '("\\.s?html?$" . html+-mode) *auto-mode-alist* :test 'equal)

;browserex
;htmlビューアーなどのためにbrowserex.lを読み込み(browser.dllはxyzzyhomeに)
(load-library "browserex")

;;ブラウザ表示更新に関する設定
(defun my-html+-mode-hook ()
  ;;; browser が開いていたら現在のファイルを表示
  (bx:navigate-current-buffer-if-open)
  ;;; 保存と同時に navigate
  (define-key ed::*html+-mode-map* '(#\C-x #\C-s)
              #'(lambda ()
                  (interactive)
                  (if (fboundp 'save-buffer-with-time-stamp)
                    (save-buffer-with-time-stamp)
                    (save-buffer))
                  (bx:navigate-current-buffer-if-open))))
(add-hook 'ed::*html+-mode-hook* 'my-html+-mode-hook)

;;ファイル名の頭にフォルダ名をつける
(defun add-parent-directory-name-to-buffer-name ()
  (let ((file-name (split-string (get-buffer-file-name (selected-buffer)) "/")))
    (setq file-name (nthcdr (- (list-length file-name) 2) file-name))
    (rename-buffer (concat (cond ((equal buffer-mode 'css-mode) "# ") (t ""))
                           (car file-name) "/" (cadr file-name)))))

(require "browserex")
(setq bx:*browser-width* 300)
(setq bx:*browser-height* 100)
(setq bx:*browser-start-page* "http://www.google.com/search?hl=ja&lr=lang_ja&num=100&q=")
(setq bx:*browser-temp-file* (merge-pathnames "tmp/browser-temp.html" (si:system-root)))
;(setq bx:*browser-syslistview-style* bx:LVS_LIST)
;(setq bx:*browser-use-refresh* t)

(global-set-key #\M-F9 'bx:navigate-current-buffer)
(set-function-bar-label #\M-F9 "OpenBrowser")
(global-set-key #\M-F10 'bx:navigate-current-buffer-directory)
(set-function-bar-label #\M-F10 "OpenDir")
(global-set-key #\M-F11 'bx:rotate-browser)
(set-function-bar-label #\M-F11 "RotateBrowser")
(global-set-key #\M-F12 'bx:close-browser)
(set-function-bar-label #\M-F12 "CloseBrowser")
;(global-set-key #\RBtnUp 'bx:browserex-mouse-menu-popup)
;(global-set-key #\Apps 'bx:browserex-apps-popup)

;; ndiary-mode から拝借。
(require "wip/winapi")
(defun toggle-navigate-current-buffer ()
  (interactive)
  (cond
    ((bx:browser-open-p)
     (bx:close-browser)
     (winapi:ShowWindow (get-window-handle) 9))
    (t
      (winapi:ShowWindow (get-window-handle) 3)
      (bx:navigate-current-buffer :position bx:XPIS_LEFT
                                  :size 480))))
(global-set-key #\M-F8 'toggle-navigate-current-buffer)
(set-function-bar-label #\M-F8 "ToggleBrowser")

(global-set-key #\M-Up 'bx:browserex-scroll-up)
(global-set-key #\M-Down 'bx:browserex-scroll-down)
(global-set-key #\M-Left 'bx:browserex-scroll-left)
(global-set-key #\M-Right 'bx:browserex-scroll-right)
(global-set-key #\M-PageUp
                #'(lambda ()
                    (interactive) (bx:browserex-scroll-up :unit :page)))
(global-set-key #\M-PageDown
                #'(lambda ()
                    (interactive)(bx:browserex-scroll-down :unit :page)))
(global-set-key #\M-Home
                #'(lambda ()
                    (interactive) (bx:browserex-scroll-up :unit :all)))
(global-set-key #\M-End
                #'(lambda ()
                    (interactive) (bx:browserex-scroll-down :unit :all)))

;; いまいたけを さん拡張版
(global-set-key #\S-M-F7 'bx:show-location-browser)
(set-function-bar-label #\M-F7 "ShowLocation")
(global-set-key #\S-M-Left 'bx:go-back-browser)
(global-set-key #\S-M-Right 'bx:go-forward-browser)
(global-set-key #\S-M-Home 'bx:go-home-browser)

;; browser.l もどき設定。
(defun navigate (url)
  (interactive "sURL: ")
  (bx:navigate url))
(defun refresh-browser ()
  (interactive)
  (bx:refresh-browser))
(defun close-browser ()
  (interactive)
  (bx:close-browser))

(defun my-html+-mode-hook ()
  ; ------------------------------------------------------------
  ;; browser が開いていたら現在のファイルを表示
  (bx:navigate-current-buffer-if-open)

  ;; 保存と同時に navigate
  ;; auto-time-stamp.l の save-buffer-with-time-stamp を使っている場合に対応
  (define-key ed::*html+-mode-map* '(#\C-x #\C-s)
              #'(lambda ()
                  (interactive)
                  (if (fboundp 'save-buffer-with-time-stamp)
                    (save-buffer-with-time-stamp)
                    (save-buffer))
                  (bx:navigate-current-buffer-if-open)))

  ; ------------------------------------------------------------
  ; html+-mode で htmllint を使って構文チェック (CGI)
  (defvar *htmllint-url* "http://localhost/htmllint/htmllint.cgi?V;X=w3m;URL=")
  (defun htmllint-cgi ()
    (interactive)
    (let ((file (get-buffer-file-name)))
      (when file
        (bx:close-browser)
        (bx:navigate (concat *htmllint-url* file)))))
  (define-key ed::*html+-mode-map* '(#\C-c #\C-l) 'htmllint-cgi)
  (define-key ed::*html+-mode-map* #\M-F7 'htmllint-cgi)
  (set-function-bar-label #\M-F7 "htmllint")

  ; ------------------------------------------------------------
  ; html+-mode で htmllint を使って構文チェック
  (defvar *htmllint-file* "C:/httpd/htdocs/htmllint/htmllint")
  (defun htmllint-exec ()
    (interactive)
    (let ((file (get-buffer-file-name)))
      (when file
        (pipe-command
          (format nil "perl \"~A\" \"~A\""
                  (map-slash-to-backslash *htmllint-file*)
                  (map-slash-to-backslash file)
                  )))))
  (define-key ed::*html+-mode-map* '(#\C-c #\l) 'htmllint-exec))
(add-hook 'ed::*check-html+-mode-hook* 'my-html+-mode-hook)

;;;■php-modeで保存すると browserex で今開いているファイルを更新。
;xyzzyのパスとローカルサーバーのパスを記述すること
(load-library "browserex")
(defun save-with-refresh-for-php ()
  (define-key ed::*php-mode-map* '(#\C-x #\C-s)
              #'(lambda ()
                  (interactive)
                  (save-buffer)
                  (let ((url (get-buffer-file-name)))
                    (setf url (substitute-string url "c:/others/editor/xyzzy/" "http://localhost/" :case-fold t))
                    (bx:navigate url)
                    (bx:browserex-set-focus-editor)
                    ))))

(add-hook 'ed::*php-mode-hook2* 'save-with-refresh-for-php)

;-----------------------------------------------------------------------
;xml-mode
(require "xml/xml-mode")
(use-package 'xml)

(require "xml/xhtml")
(require "xml/svg")
(require "xml/xslt")
(require "xml/xsl-fo")
(require "xml/mathml")
(require "xml/xlink")
(require "xml/relaxng")
(require "xml/smartdoc")
(require "xml/xyzref")
(require "xml/xi")
(require "xml/xtemplate")

(pushnew '("\\.xsd$" . xml-mode) *auto-mode-alist* :test 'equal)

;xml-parser-modoki
(require "xml-parser-modoki")

;------------------------------------------------------------------------
;ini-mode
(in-package "editor")
(export 'ini-mode)
(autoload 'ini-mode "ini-mode" t)
(pushnew '("\\.ini$" . ini-mode) *auto-mode-alist* :test 'equal)
(in-package "user")

;chini
(require "chini")

;set chini
;; 印刷設定と *chini-popup-menu* を追加する例
(add-hook '*init-app-menus-hook*
          #'(lambda ()
              ;; フォント
              (chini-font-insert-menu-items :head-sep t)
              ;; 色
              (chini-color-insert-menu-items :head-sep t)
              ;; 印刷
              (chini-print-insert-menu-items :pre-tag 'ed::print-selected-buffer-dialog)
              ;; ファイラ
              (chini-filer-insert-menu-items :head-sep t)
              ;; バッファセレクタ
              (chini-bufselector-insert-menu-items :head-sep t)
              ;; Misc
              (chini-misc-insert-menu-items :head-sep t)
              ;; *chini-popup-menu*
              (chini-insert-menu-items :head-sep t :access-key #\0)) t)

;------------------------------------------------------------------------
;;bat-mode
(in-package "editor")
(export 'bat-mode)
(autoload 'bat-mode "bat-mode" t)
(pushnew '("\\.bat$" . bat-mode) *auto-mode-alist* :test 'equal)
(in-package "user")

;;------------------------------------------------------------------------
;;windbatch-mode
(in-package "editor")
(export 'winbatch-mode)
(autoload 'winbatch-mode "winbatch-mode" t)
(pushnew '("\\.btw$" . winbatch-mode) *auto-mode-alist* :test 'equal)
(in-package "user")

(setq *popup-completion-list-default* :always)
;------------------------------------------------------------------------
;bash-mode
(in-package "editor")
(export 'bash-mode)
(autoload 'bash-mode "bash-mode" t)
(pushnew '("\\.sh$" . bash-mode) *auto-mode-alist* :test 'equal)
(pushnew '("\\rc$" . bash-mode) *auto-mode-alist* :test 'equal)
(pushnew '("\\profile$" . bash-mode) *auto-mode-alist* :test 'equal)
(in-package "user")
;------------------------------------------------------------------------
;php-mode .xyzzy に記述

;(require "php-mode")
;(require "php-misc")

;(pushnew '("\\.php$" . php-mode) *auto-mode-alist* :test 'equal)
;(pushnew '("\\.inc$" . php-mode) *auto-mode-alist* :test 'equal)
;(setq *php-doc-base-path* "http://www.php.net/manual/ja/html/")

;for search loacal
;(setq *php-doc-base-path* "C:/path/to/html/manual/")
;for HTML HELP
;(setq *php-html-help-path*
;(merge-pathnames "etc/php_manual_ja.chm" (si:system-root)))

;C-; で、カーソル行のコメントをトグル、または、セレクションをコメントにする。
;(define-key ed::*php-mode-map* #\C-\;
;	    #'(lambda () (interactive)
;		(encomment-selection-or-comment-toggle-line "//")))

;C-M-; で、セレクションをコメントでなくする。
;(define-key ed::*php-mode-map* #\M-\C-\;
;	    #'(lambda () (interactive)
;		(outcomment-selection "//")))

;--------------------------------------------------------------
;javascript-mode
(load-library "javascript-mode")
(push '("\\.js$" . javascript-mode) *auto-mode-alist*)

;-------------------------------------------------------------
;css-mode
; library
(load-library "css-mode")
; indent (お好みでどうぞ)
(defvar *css-indent-level* 2)
(defvar *css-continued-statement-offset* 2)
(defvar *css-brace-offset* -2)
(defvar *css-brace-imaginary-offset* 0)
(defvar *css-argdecl-indent* 0)
(defvar *css-label-offset* 0)
; keymap (お好みでどうぞ)
(define-key *css-mode-map* #\{ 'c-electric-insert)
(define-key *css-mode-map* #\: 'c-electric-insert)
(define-key *css-mode-map* #\} 'c-electric-close)
(define-key *css-mode-map* #\C-h 'backward-delete-char-untabify-or-selection)
(define-key *css-mode-map* #\TAB 'c-indent-line)
(define-key *css-mode-map* #\C-M-q 'indent-sexp)
(define-key *css-mode-map* #\RET 'c-newline-and-indent)
(define-key *css-mode-map* #\C-. 'ed::css-completion)

; function for hook
(defun css-enhance ()
  ;; indent command
  (make-local-variable 'mode-specific-indent-command)
  (make-local-variable 'c-comment-indent-variable)
  (setq c-comment-indent-variable 'c-comment-indent)
  (setq mode-specific-indent-command 'c-indent-line)
  ; indent
  (make-local-variable 'c-indent-level)
  (make-local-variable 'c-continued-statement-offset)
  (make-local-variable 'c-brace-offset)
  (make-local-variable 'c-brace-imaginary-offset)
  (make-local-variable 'c-argdecl-indent)
  (make-local-variable 'c-label-offset)
  (setq c-indent-level *css-indent-level*)
  (setq c-continued-statement-offset *css-continued-statement-offset*)
  (setq c-brace-offset *css-brace-offset*)
  (setq c-brace-imaginary-offset *css-brace-imaginary-offset*)
  (setq c-argdecl-indent *css-argdecl-indent*)
  (setq c-label-offset *css-label-offset*)
  ; comment
  (setq comment-indent-function 'c-comment-indent)
  (setq comment-start "/* " comment-end " */")
  (setq comment-start-skip "/\\(\\*+\\|/\\)[ \t]*"))
; hook
(add-hook '*css-mode-hook* 'css-enhance)

;cssを更新するとbrowserxで開いているファイルを更新
(load-library "browserex")
(defun save-with-refresh-for-css ()
  (define-key ed::*css-mode-map* '(#\C-x #\C-s)
              #'(lambda ()
                  (interactive)
                  (save-buffer)
                  (bx:refresh-browser))))
(bx:browserex-set-focus-editor)
(add-hook 'ed::*css-mode-hook* 'save-with-refresh-for-css)
;----------------------------------------------------------
;lisp-mode
;;;
(in-package "editor")

(defvar *lisp-keyword-hash-table* nil)

(defun use-lisp-keyword ()
  "キーワード色付け"
  (if (null *lisp-keyword-hash-table*)
    (setq *lisp-keyword-hash-table*
          (load-keyword-file "lisp")))
  (when *lisp-keyword-hash-table*
    (make-local-variable 'keyword-hash-table)
    (setq keyword-hash-table *lisp-keyword-hash-table*)))

(add-hook '*lisp-mode-hook*
          #'(lambda ()
              (use-lisp-keyword)
              (define-key *lisp-mode-map* #\C-. 'lisp-complete-symbol)))

(add-hook '*lisp-interaction-mode-hook*
          #'(lambda ()
              (use-lisp-keyword)
              (define-key *lisp-interaction-mode-map* #\C-. 'lisp-complete-symbol)))

(in-package "user")
;.xyzzy .l (open lisp-mode)
(push '("\\.xyzzy$" . lisp-mode) *auto-mode-alist*)
(push '("\\.l$" . lisp-mode) *auto-mode-alist*)
;---------------------------------------------------------------
;info-modoki-mode
(require "info-modoki-mode")
;---------------------------------------------------------------
;csv-mode
(in-package "editor")
(export '(csv-mode tsv-mode))
(autoload 'csv-mode "csv-mode" t)
(autoload 'tsv-mode "csv-mode" t)
(pushnew '("\\.csv$" . csv-mode) *auto-mode-alist* :test 'equal)
(pushnew '("\\.tsv$" . csv-mode) *auto-mode-alist* :test 'equal)
(in-package "user")
;---------------------------------------------------------------
;multi-major-mode
(load-library "multi-major-mode")
(setq ed::*multi-mode-running* t)
(setf *multi-mode-text-attribute* nil)

(autoload 'html+-mode "html+-mode" t)
(pushnew '("\\.s?html?$" . html+-mode) *auto-mode-alist* :test 'equal)

;(load-library "php-mode")

(pushnew '("\\.html$" . html+-mode) *auto-mode-alist*)
(pushnew '("\\.php$" . html+-mode) *auto-mode-alist*)
(pushnew '("\\.inc$" . html+-mode) *auto-mode-alist*)

(defun multi-html+-mode ()
  (multi-mode t "html+-mode"
              '("<script" "</script>" "javascript-mode")
              '("<SCRIPT" "</SCRIPT>" "javascript-mode")
              '("<style" "</style>" "css-mode")
              '("<STYLE" "</STYLE>" "css-mode")
              '("<%" "%>" "basic-mode")
              '("<?" "?>" "php-mode")
              '("<?php" "?>" "php-mode")
              )
  )
(add-hook 'ed::*multi-html+-mode-hook* 'multi-html+-mode)

;------------------------------------------------------------------------
;www-mode
(autoload 'www "www/www" t)	                ; 通常起動
(autoload 'www-open-url "www/www" t)            ; URLを指定して起動
(autoload 'www-open-local-file "www/www" t)     ; ローカルのファイルを指定して開く
(autoload 'www-open-current-buffer "www/www" t)	; 現在のバッファのファイルを開く

(add-hook '*www-view-mode-hook*
          #'(lambda()
              ;テキストを折り返さない
              (set-buffer-fold-type-none)
              (let ((buf
                      (selected-buffer)))
                ;無効にするもの
                (set-local-window-flags buf
                                        (+ *window-flag-line-number*
                                           *window-flag-newline*
                                           *window-flag-eof*)
                                        nil)
                ;有効にするもの
                (set-local-window-flags buf
                                        (+ *window-flag-cursor-line*)
                                        t)
                )
              )
          )

;www-mode 関係のバッファをバッファリストに出さない
(setq *www-buffer-name-prefix* " *WWW ")
(setq *www-buffer-src-prefix*
      (concat *www-buffer-name-prefix* "SRC: "))
(setq *www-buffer-source-prefix*
      (concat *www-buffer-name-prefix* "SOURCE: "))
(setq *www-buffer-view-prefix*
      (concat *www-buffer-name-prefix* "VIEW: "))
(setq *www-buffer-temp*
      (concat *www-buffer-name-prefix* "TEMP*"))
(setq *www-buffer-work*
      (concat *www-buffer-name-prefix* "WORK*"))
(setq *www-buffer-wget*
      (concat *www-buffer-name-prefix* "WGET:"))
(setq *www-buffer-from-textarea*
      (concat *www-buffer-name-prefix* "TEXTAREA: "))

;wget 実行バッファからM-LEFTで前のページの戻る
(defvar *my-previous-buffer* nil)
(defun my=previous-buffer (&optional save)
  (interactive)
  (when (and *my-previous-buffer *
             (find-buffer *my-previous-buffer *))
    (switch-to-buffer *my-previous-buffer*)
    (unless save
      (setq *my-previous-buffer* nil))))
;define key
(define-key ed::*command-output-mode-map* #\M-Left 'my-previous-buffer)

;カーソル位置のURLを取得してwww-modeで開く
(defun www-open-current-url ()
  (interactive)
  (let (url)
    (save-excursion
      (skip-chars-backward "-a-zA-Z0-9_/~.#@%?&=;+(), '$!*:")
      (when (looking-at ed::*url-scheme-regexp*)
        (setq url
              (buffer-substring (point)
                                (progn
                                  (goto-char (match-end 0))
                                  (skip-chars-forward "-a-zA-Z0-9_/~.#@%?&=;+(), '$!*:")
                                  (point))))))
    (if url (www-open-url url))))

;2ch-mode
(autoload '2ch "2ch/main" t)

;rss-mode
(autoload 'rss "rss/main" t)
(autoload 'rss-toggle "rss/main" t)
(autoload 'rss-add-feed "rss/main" t)

;javatinyconsole .xyzzyに記述(menuを消さないために)
;(require "java")
;(require "jtc/jtc")
;(define-key ed::*java-mode-map* #\F1 'jtc::jtc-info)

;------------------------------------------------------------------------
;popup-memo-mode

(require "popup-mode-memo")
(global-set-key #\C-F12 'popup-mode-memo)
(set-function-bar-label #\C-F12 "memo")

; minor mode の binding を表示
(setq *popup-mode-memo-view-minormode-bindings* t)
; local mode の binding を表示
(setq *popup-mode-memo-view-local-bindings* t)
; global な binding を表示
(setq *popup-mode-memo-view-global-bindings* nil)
; t だとメモがある場合 *popup-mode-memo-view-local-bindings* が t でも
; local mode の binding を表示しない
(setq *popup-mode-memo-one-side-local* nil)

(popup-mode-memo-add-new
  'lisp-interaction-mode         ; buffer-mode で指定 (ESC ESC buffer-mode)
  "F1:           info-modoki"
  "F5:           開いているファイルを byte-compile"
  "F10:          load-library 等の上で押すと対象ファイルを開く"
  "C-c b:        siteinit.l をコンパイルし、ダンプファイルを消す"
  "C-x C-e:      最後のセンテンスを評価 (eval-last-sexp)"
  )

(popup-mode-memo-add-new
  'editor::diff-mode             ; buffer-mode で指定 (ESC ESC buffer-mode)
  "n:            diff-forward"
  "ESC Down:     diff-forward"
  "p:            diff-backward"
  "ESC Up:       diff-backward"
  "m:            diff-merge              (新を旧にマージ)"
  "r:            diff-merge-reverse      (旧を新にマージ)"
  "u:            diff-undo"
  "q:            diff-quit"
  )

(popup-mode-memo-add-new
  "Lisp"                         ; mode-name で指定 (ESC ESC mode-name)
  "F1:           info-modoki"
  "C-x C-e:      最後のセンテンスを評価 (eval-last-sexp)"
  )

;--------------------------------------------------------------------------
;shell
(require "shell3")
;powershell
(require "powershell")

;------------------------------------------------------------------------------
;バイトコンパイル＆ダンプファイルを削除を一発でする
;C-c bでカレントバッファをバイトコンパイルし、ダンプファイルを削除する
(defun compile-and-delete-dump-file ()
  (interactive)
  (and (find-buffer "siteinit.l")
       (eval-buffer "siteinit.l"))
  (byte-compile-file
    (concat (si:system-root) "site-lisp/siteinit.l"))
  (let ((dumpfile
          (concat (si:system-root) "xyzzy."
                  (case (os-platform)
                    (whistler "wxp")
                    (windows-2000 "w2k")
                    (windows-nt "wnt")
                    (windows-me "wme")
                    (windows-98 "w98")
                    (windows-95 "w95")
                    (win32s "32s")
                    (t "nt")))))
    (and (file-exist-p dumpfile)
         (delete-file dumpfile))))
(global-set-key '(#\C-c #\b) 'compile-and-delete-dump-file)

(defun compile-and-delete-dump-file ()
  "siteinit.lのバイトコンパイル&ダンプファイル削除を一発でやる"
  (interactive)
  (let ((file (find-load-path "siteinit")))
    (and file
         ;;(load file)
         (compile-file file))
    (delete-file (si:dump-image-path) :if-does-not-exist :skip)))

;nise-about 拡張lispを導入したものを表示
(require "nise-about")
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
;kamail
(autoload 'kamail "kamail/kamail" t)

; 標準のメーラとして使ったり他から呼ぶ場合
;(autoload 'kamail-mailto "kamail/kamail" nil)
;(setq *command-line-mailto-hook* #'kamail-mailto)

; ログオンユーザー別に使い分ける場合の例
; "xyzzy/usr/ユーザー名/ＯＳ名/KaMail"に設定ファイルを置く

(require "kamail/kamail")

(setq km::*kamail-data-file-path-name* "KaMail")
(setq km::*kamail-data-file-path*
      (merge-pathnames km::*kamail-data-file-path-name* (user-config-path)))
(setq km::*kamail-local-directory*
      (merge-pathnames "Mail" (user-config-path)))
(setq km::*kamail-spool-directory*
      (merge-pathnames "News" (user-config-path)))
(setq km::*kamail-archive-directory*
      (merge-pathnames "Archive" (user-config-path)))
;-------------------------------------------------------------------------
;indent

;バッファ全体をインデントする場合。
;リージョンをインデントする場合は、M-x indent-region でおけ。
(defun indent-whole-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max))))

;セレクションをインデントする場合。セレクションがなければ、バッファ全体をインデントする。
(defun indent-selection ()
  (interactive)
  (if (get-selection-type)
    (indent-region (selection-mark) (selection-point))
    (save-excursion
      (and (yes-or-no-p "バッファ全体を一発インデントしますよ。")
           (indent-region (point-min) (point-max))))))

;html+-mode で indent-region すると、データのない行はインデントされない。 ので、;html+-indent-line を１行ずつ実行するようにした。 M-i に割り当てている。
(in-package "editor")

(defun html+-indent-region (from to)
  (interactive "*r")
  (narrow-to-region from to)
  (goto-char (point-min))
  (html+-indent-line)
  (while (forward-line 1)
         (html+-indent-line))
  (widen))
;-------------------------------------------------------------------------
;api
(require "api")
;------------------------------------------------------------------------
;外見
;layered-window
;(notice : read sitelisp/layerd-window/docs/README.rd)
(require "layered-window")

;(setf *layered-window-default-opacity* 95)

;(layered-window-set-opacity 85)
;--------------------------------------------------------
;ftp
;write .xyzzy
;--------------------------------------------------------------------------
;dabbrev 補完
(require "dabbrev")
(global-set-key #\M-/ 'dabbrev-expand)
;--------------------------------------------------------------------------
;clip
;(require "clipview")
(require "clipselect")

(require "rv-region")
;setting
(setq *rv-region-use-selection* t)

;key
(global-set-key #\C-@ 'rv-set-mark-command)
;(global-set-key #\M-R 'rv-restart)
;(global-set-key #\M-V 'rv-check)
;--------------------------------------------------------------------------
;migomo
;(require "migemo")
;--------------------------------------------------------------------------
;color
;;patterm
(require "pickup-pattern")
;key settind
(global-set-key '(#\C-c #\p #\s) 'pickup-pattern-set-input)
(global-set-key '(#\C-c #\p #\C-s) 'pickup-pattern-set-input-detail)
(global-set-key '(#\C-c #\p #\r) 'pickup-pattern-refresh-select)
(global-set-key '(#\C-c #\p #\C-r) 'pickup-pattern-refresh-all)
(global-set-key '(#\C-c #\p #\u) 'pickup-pattern-unset-select)
;;(global-set-key '(#\C-c #\p #\C-u) 'pickup-pattern-unset-all)
(global-set-key '(#\C-c #\p #\d) 'pickup-pattern-delete-select)
(global-set-key '(#\C-c #\p #\C-d) 'pickup-pattern-delete-all)
(global-set-key '(#\C-c #\p #\l) 'pickup-pattern-list-show)
(global-set-key #\M-s 're-search-forward-pickup)
(global-set-key #\M-C-s 're-search-backward-pickup)
(setq *pickup-pattern-fg* 1)
(setq *pickup-pattern-bg* 3)
(setq *pickup-pattern-bold* t)
(setq *pickup-pattern-underline* nil)
(setq *pickup-pattern-strike-out* nil)
(setq *pickup-pattern-regexp* t)
(setq *pickup-pattern-overlap* nil)
(setq *pickup-pattern-pre-search-unset* t)
(setq *pickup-pattern-search-pattern-add* nil)

;chcolor
(require "chcolor/chcolor")
;--------------------------------------------------------------------------
;click
(require "clickable-uri")

;key-bind
(global-set-key #\c-l 'clickable-uri-recenter)
(global-set-key '(#\C-c #\C-o) 'clickable-uri-open)
;key bind
;emacs
(load-library "emacskey")

;vi-mode
;(load-library "vi")
;(add-hook '*find-file-hooks* 'vi-mode)
;--------------------------------------------------------------------------
;filer
;adding .xyzzy
;mask
;left
;(setq *filer-primary-file-mask*
;			'(
;				"*.txt" "*.html" "*.htm"
;				"*.css" "*.jpg" "*.jpeg"
;				"*.png" "*.gif"))

(setq *filer-primary-file-mask* '("*"))

;right
(setq *filer-secondary-file-mask* '("*"))

;
(setq *filer-last-file-mask* '("*"))

;masklist
(setq *filer-path-masks*
      '(("All Files" "*")
        ("Backup Files" "*~" "*.bak")
        ("Documents" "*.doc" "*.txt"
         "*.man" "*readme*" "*.jis" "*.enc")
        ("Save Files" "#*#")
        ))

;use recycle
(setq *filer-use-recycle-bin* t)

;---------------------------------------------------------
;dired
(require "my-dired")
;その他

;find-file(C-x C-f)の後F7で.xyzzy, F8でsiteinit.lをロード
(define-key minibuffer-local-completion-map #\F7
            #'(lambda()
                (interactive)
                (delete-region (point-min) (point-max))
                (insert (concat
                          (merge-pathnames ".xyzzy" (si:system-root))))))

(define-key minibuffer-local-completion-map #\F8
            #'(lambda()
                (interactive)
                (delete-region (point-min) (point-max))
                (insert (concat
                          (merge-pathnames "site-lisp" (si:system-root)) "/siteinit.l"))))

;title bar
(setq-default title-bar-format " -%*- %b - (%M) [%k-%l]")
;menue bar
(setq-default mode-line-format "-%*- %b (%M) [%k:%l] %P [%i]")

;ミニバッファの保管候補リストをチップヘルプに
(setq *print-completion-list-hook*
      '(lambda (list prefix &optional string)
         (popup-string (format nil "Possible completions are ~D item:\n~{\n~A~}" (length list) list) (point))))

;特殊バッファを削除してウィンドウを1つにする
(defun cleanup-window()
  (interactive)
  (let ((bufl (buffer-list)) buf name)
    (loop
      (setq buf (pop bufl))
      (if (null buf) (return nil))
      (setq name (buffer-name buf))
      (if (member-if
            #'(lambda (str) (string = name str))
            '("[*grep*]"
              "[*Help*]"
              "[*Completion*]"
              "[*Shell output*]"
              "[*Calendar*]"
              "[*PickupPaternShow*]"
              "[*dictionary*]"
              "[*Buffer List*]"
              "[*XML Command error*]"
              "[*buf2html: HTML*]"
              "[buf2html: CSS*]"
              "[*output*]"
              ))
        (delete-buffer buf)))
    (delete-other-windows)))
;key
(global-set-key #\S-F11 'cleanup-window)

;画面表示・バッファ関連バッファ移動をツールバー表示順にする
(setq *next-buffer-in-tab-order* t)

;対応するカッコの表示(all-mode)
(require "paren")
;(turn-on-global-paren)

;共有ファイルのパーミッションを保存
(setq backup-by-copying :remote)

;マウスだけでコピー・ペースト
(defun mouse-right-press ()
  (interactive)
  (mouse-left-press)
  (paste-from-clipboard))
;key
;(global-set-key #\LBtnUp 'copy-selection-to-clipboard)
;(global-set-key #\RBtnUp 'mouse-right-press)
;(global-set-key #\MBtnUp 'mouse-menu-popup)

;write-file 変更
(define-key ctl-x-map #\C-w 'emacs-write-file)
;find-other-fileのデフォルト
(setq *find-other-file-requires-file-name* t)

;next-error (like emacs)
(defun emacs-next-error (&optional arg)
  (interactive "p")
  (if (not editor::*error-list*)
    (progn (goto-char (point-min))
           (first-error arg nil))
    (next-error arg)))
;key
(define-key ctl-x-map #\` 'emacs-next-error)

; C-Sの検索をインクリメンタルサーチに変更
;; インクリメンタルサーチ
(require "isearch")

;isearchで正規表現をトグルする
;;正規表現でisearchの切替
(defun toggle-regex-isearch ()
  (interactive)
  (setq *isearch-use-regexp*
        (not *isearch-use-regexp*))
  (message "isearch ~[nomal~;regexp~]"
           (if *isearch-use-regexp* 1 0)))
;(define-key ed::*isearch-map* '#\C-t 'toggle-regex-isearch)
(define-key ed::*isearch-map* '#\M-r 'toggle-regex-isearch)

;grep結果をダブルクリックで開く
(defun grep-mouse-left-press ()
  "grep結果をダブルクリックでファイルopen"
  (interactive)
  (let ((click (mod *last-mouse-click-count* 6)))
    (if (= click 2)
      (first-error)
      (mouse-left-press))))


;insert-fileC-x iの初期ディレクトリを固定
;insert2.l
;(provide "insert2")
;(in-package "editor")
;(export '(insert-file2 *default-insert-file-directory*))
;(defvar *default-insert-file-directory* nil)
;(defun insert-file2 (filename &optional encoding)
;	(interactive "*flnsert file: \n0zEncoding: " : title0 "Insert file" :default0 *default-insert-file-directory*)
;	(let ((*expected-fileio-encoding*
;				 (or encoding *expected-fileio-encoding*)))
;		(declare (special *expected-fileio-encoding*))
;		(setq filename (namestring filename))
;		(when (special-file-p filename)
;			(error "~aはデバイスファイルです" filename))
;		(when (special-directory-p filename)
;			(error "~aはディレクトリです" filename))
;		(unless (and (valid-path-p filename)
;								 (file-exist-p filename))
;			(error "~a\nファイルまたはディレクトリが見つかりません" filename))
;
;		(insert-file-contents filename)))
;
;
;;key
;(load-library "insert2")
;(global-set-key #\M-i 'insert-file2)

;(defvar *grep-map* nil)
;(unless *grep-map*
;  (setq *grep-map* (make-sparse-keymap))
;(define-key *grep-map* #\LBtnDown 'grep-mouse-left-press))
;(add-hook 'ed::*grep-hook* #'(lambda () (use-keymap *grep-map*)))
;(add-hook 'ed::*grepd-hook* #'(lambda () (use-keymap *grep-map*)))

;CモードとC++モードでVCのようにF1でHTMLヘルプを開く
;;F1でHTML Helpを開く
(define-key ed::*c-mode-map* #\F1 'show-html-help)
(define-key ed::*c++-mode-map* #\F1 'show-html-help)
;-------------------------------------------------------------------------
;comment

(require "comment")

;モード毎に一行単位のコメントアウト&アンコメント
(defvar *one-line-comment-alist*
  '(
    (awk-mode   . ("#"))
    (css-mode   . ("/* " " */"))
    (html+-mode . ("<!-- " " -->"))
    (lisp-mode  . (";"))
    (lisp-interaction-mode . (";"))
    (perl-mode  . ("#"))
    (php-mode   . ("//"))
    (sql-mode   . ("--"))
    ))

(defun toggle-one-line-comment ()
  (interactive)
  (let ((li (cdr (assoc buffer-mode *one-line-comment-alist*)))
        bol eol str keyreg)
    (when li
      (save-excursion
        (goto-eol)
        (setq eol (point))
        (back-to-indentation)
        (setq bol (point))
        (setq str (buffer-substring bol eol))
        (if (= (length li) 1)
          (let ((key (car li)))
            (setq keyreg (format nil "^~A+[ \t]*" (regexp-quote key)))
            (if (string-match keyreg str)
              (delete-region (+ bol (match-beginning 0))
                             (+ bol (match-end 0)))
              (progn
                (back-to-indentation) (insert key))))
          (let ((key1 (car li))
                (key2 (cadr li)))
            (setq keyreg (format nil
                                 "^\\(~A\\)+[ \t]*\\(.*\\)[ \t]*\\(~A\\)+$"
                                 (regexp-quote key1)
                                 (regexp-quote key2)))
            (if (string-match keyreg str)
              (progn
                (setq str (string-replace-match str "\\2"))
                (delete-region (+ bol (match-beginning 0))
                               (+ bol (match-end 0)))
                (insert str))
              (progn
                (back-to-indentation) (insert key1)
                (goto-eol) (insert key2)))))))))

;セレクションがある状態で C-; すると，セレクションをコメントアウトする。
;セレクションがある状態で C-u C-; すると，セレクションをアンコメントする。
;セレクションがない状態で C-; すると，カーソル行のコメントアウトまたはアンコメントを行う。
(defun comment-out-selection-or-one-line (&optional count)
  (interactive "p")
  (if (pre-selection-p)
    (progn
      (require "comment")
      (let ((fn (cond ((eq *prefix-args* 'universal-argument)
                       (setq count (list count))
                       'comment-do-uncomment)
                      ((and (numberp count)
                            (> 0 count))
                       'comment-do-uncomment)
                      (t
                        'comment-do-comment)))
            beg end)
        (setq beg (selection-point) end (selection-mark))
        (funcall fn beg end count)))
    (toggle-one-line-comment)))
(global-set-key #\C-\; 'comment-out-selection-or-one-line)
;-------------------------------------------------------------------------
