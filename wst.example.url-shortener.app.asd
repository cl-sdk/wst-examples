(asdf:defsystem #:wst.example.url-shortener.app
  :description "URL shortener example application."
  :author "Bruno Dias"
  :license "Unlicense"
  :version "0.0.1"
  :depends-on (#:wst.example.url-shortener)
  :serial t
  :build-operation "program-op"
  :build-pathname "url-shortener-service"
  :entry-point "wst.example.url-shortener:main")
