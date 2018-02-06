import aether.AetherKeys._
import Dependencies._

sbtVersion := "1.1.0"

lazy val root = (project in file(".")).
  settings(
    inThisBuild(List(
      organization := "com.example",
      scalaVersion := "2.12.3",
      version      := "0.0.1"
    )),
    name := "cloudsmith-sbt-example",
    libraryDependencies += scalaTest % Test
  )

credentials += Credentials(Path.userHome / ".sbt" / ".credentials")

aetherWagons := Seq(aether.WagonWrapper("cloudsmith+https", "io.cloudsmith.maven.wagon.CloudsmithWagon"))

publishTo := {
    Some("cloudsmith+https" at "cloudsmith+https://api.cloudsmith.io/cloudsmith/examples")
}
