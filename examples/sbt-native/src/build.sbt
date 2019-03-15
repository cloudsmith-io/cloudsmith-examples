ThisBuild / scalaVersion     := "2.12.8"
ThisBuild / version          := "__EXAMPLE_VERSION__"
ThisBuild / organization     := "io.cloudsmith"
ThisBuild / organizationName := "cloudsmith"

name := "Cloudsmith SBT Example"
publishTo := { Some("Cloudsmith API" at "https://maven.cloudsmith.io/__CLOUDSMITH_REPOSITORY__/") }

credentials += Credentials(
    "Cloudsmith API",
    "maven.cloudsmith.io",
    "token",
    sys.env.get("CLOUDSMITH_API_KEY").getOrElse("")
)
