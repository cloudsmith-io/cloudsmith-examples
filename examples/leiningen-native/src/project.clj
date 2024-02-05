(defproject cloudsmith-leiningen-native-example "__EXAMPLE_VERSION__"
  :description "Cloudsmith Leiningen Example"
  :url "https://cloudsmith.io"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :repositories [["releases" {:url "https://maven.cloudsmith.io/__CLOUDSMITH_REPOSITORY__/"
                              :username "token"
                              :password [:gpg :env/CLOUDSMITH_API_KEY]
                              :sign-releases false}]]
  :main cloudsmith-leiningen-example.core
  :aot [cloudsmith-leiningen-example.core])
