//import aether.AetherKeys._

//logLevel := Level.Debug

//val cloudsmithApiUrl = "synthetic.eu.ngrok.io/api/maven"
//val cloudsmithApiUrl = "maven-synthetic.cloudsmith.io"
val cloudsmithApiUrl = "maven.cloudsmith.io"

sbtPlugin := true

packageOptions += {
  val title = name.value
  val ver = version.value
  val vendor = organization.value

  Package.ManifestAttributes(
    "Created-By" -> "Cloudsmith Examples",
    "Built-By" -> System.getProperty("user.name"),
    "Build-Jdk" -> System.getProperty("java.version"),
    "Specification-Title" -> title,
    "Specification-Version" -> ver,
    "Specification-Vendor" -> vendor,
    "Implementation-Title" -> title,
    "Implementation-Version" -> ver,
    "Implementation-Vendor-Id" -> vendor,
    "Implementation-Vendor" -> vendor
  )
}

credentials += Credentials(Path.userHome / ".sbt" / ".credentials")

//publishTo := Some("Cloudsmith API" at "http://" + cloudsmithApiUrl + "/armoredthings/test")
publishTo := { Some("Cloudsmith API" at "https://" + cloudsmithApiUrl + "/cloudsmith/examples") }

// publishMavenStyle := true
// crossPaths := false

pomIncludeRepository := { x => false }

//overridePublishBothSettings

homepage := Some(new URL("http://github.com/cloudsmith-io/cloudsmith-examples"))

startYear := Some(2018)

licenses := Seq(("Apache 2", new URL("http://www.apache.org/licenses/LICENSE-2.0.txt")))

scmInfo := Some(ScmInfo(
  new URL("http://github.com/cloudsmith-io/cloudsmith-examples"),
  "scm:git:git://github.com/cloudsmith-io/cloudsmith-examples.git",
  Some("scm:git:git@github.com:cloudsmith-io/cloudsmith-examples.git"
  )
))

developers += Developer(
  "lskillen",
  "Lee Skillen",
  "lskillen+github@cloudsmith.io",
  new URL("http://twitter.com/lskillen")
)
