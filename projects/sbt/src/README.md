# Uploading using SBT

### Authentication Configuration

Set your .config/cloudsmith/credentials.ini file with:

```
realm = cloudsmith
host = api.cloudsmith.io
user = 
password = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

Set your password to your api_key (this is a limitation of the sbt-aether-deploy plugin)

Check out the CLI documentation or your settings on the website to get your API KEY.

### Setup

Set your build.sbt file with:

```
credentials += Credentials(Path.userHome / ".config" / "cloudsmith" / "credentials.ini")
aetherWagons := Seq(aether.WagonWrapper("cloudsmith+https", "io.cloudsmith.maven.wagon.CloudsmithWagon"))
publishTo := {
    Some("cloudsmith+https" at "cloudsmith+https://api.cloudsmith.io/cloudsmith/examples") 
}
```

Setting `cloudsmith/scratch` to your chosen namespace/repository endpoint that you want to publish to.

Create a `project/plugins.sbt` file:

```
addSbtPlugin("no.arktekk.sbt" % "aether-deploy" % "0.20.0")
libraryDependencies += "io.cloudsmith.maven.wagon" % "cloudsmith-maven-wagon" % "0.2.0" 
resolvers += Resolver.mavenLocal
```

Note: They have removed the WagonWrapper functionality (we think temporarily) from 0.21.0 of aether-deploy so use 0.20.0 - it is supported.

### Running deploy

Run the following command to publish to your repository:

```
sbt aetherDeploy
```
