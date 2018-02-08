addSbtPlugin("no.arktekk.sbt" % "aether-deploy" % "0.20.0")

libraryDependencies += "io.cloudsmith.maven.wagon" % "cloudsmith-maven-wagon" % "latest.integration"

resolvers += Resolver.mavenLocal
