import aether.AetherKeys._
import Dependencies._

val cloudsmithApiUrl = "api.cloudsmith.io"

lazy val root = (project in file(".")).
  settings(
    name         := "cloudsmith-sbt-example",
    organization := "io.cloudsmith",
    scalaVersion := "2.12.3",
    version      := "0.0.1-SNAPSHOT",
    libraryDependencies += scalaTest % Test
  )

credentials += Credentials(Path.userHome / ".sbt" / ".credentials")

aetherWagons := Seq(aether.WagonWrapper("cloudsmith+https", "io.cloudsmith.maven.wagon.CloudsmithWagon"))

publishTo := {
    Some("cloudsmith+https" at s"cloudsmith+https://${cloudsmithApiUrl}/cloudsmith/examples")
}
