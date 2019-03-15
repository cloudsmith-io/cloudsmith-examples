ThisBuild / scalaVersion     := "2.12.8"
ThisBuild / version          := "__EXAMPLE_VERSION__"
ThisBuild / organization     := "io.cloudsmith"
ThisBuild / organizationName := "cloudsmith"

lazy val root = (project in file("."))
  .settings(
    name := "Cloudsmith SBT Example"
  )
