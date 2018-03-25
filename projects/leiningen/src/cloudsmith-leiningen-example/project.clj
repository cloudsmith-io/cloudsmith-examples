(defproject cloudsmith-leiningen-example "1.0.0-SNAPSHOT"
  :description "Cloudsmith Leiningen Example"
  :url "https://cloudsmith.io"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [lein-cloudsmith-maven-wagon/lein-cloudsmith-maven-wagon "0.1.0"]]
  :plugins [[lein-cloudsmith-maven-wagon "0.1.0"]]
  :repositories [["cloudsmith" {:url "https://dl.cloudsmith.io/public/cloudsmith/api/maven"} ]]
  :main cloudsmith-leiningen-example.core
  :aot [cloudsmith-leiningen-example.core])
  :deploy-repositories [["releases" { :url "cloudsmith-https://api.cloudsmith.io/cloudsmith/examples" :creds :gpg }
                         "snapshots" { :url "cloudsmith-https://api.cloudsmith.io/cloudsmith/examples" :creds :gpg }]]
