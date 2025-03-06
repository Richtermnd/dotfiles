; extends

; Inject HTML into template literals preceded by /*html*/
((comment) @injection.comment
  (#eq? @injection.comment "/*html*/")
  (template_string
    (string_fragment) @injection.content))

; Set the injected language to HTML
((string_fragment) @injection.content
  (#set! injection.language "html"))

; Inject HTML into template literals preceded by /*html*/
((comment) @injection.comment
  (#eq? @injection.comment "/*css*/")
  (template_string
    (string_fragment) @injection.content))

; Set the injected language to HTML
((string_fragment) @injection.content
  (#set! injection.language "css"))

