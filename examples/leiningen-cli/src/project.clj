(defproject cloudsmith-leiningen-example "__EXAMPLE_VERSION__"
  :description "Cloudsmith Leiningen Example"
  :url "https://cloudsmith.io"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main cloudsmith-leiningen-example.core
  :aot [cloudsmith-leiningen-example.core])
