addSbtPlugin("no.arktekk.sbt" % "aether-deploy" % "0.20.0")
addMavenResolverPlugin

libraryDependencies += "io.cloudsmith.maven.wagon" % "cloudsmith-maven-wagon" % "0.4.0"

resolvers += Resolver.mavenLocal
resolvers += "cloudsmith-api" at "https://dl.cloudsmith.io/public/cloudsmith/api/maven"
