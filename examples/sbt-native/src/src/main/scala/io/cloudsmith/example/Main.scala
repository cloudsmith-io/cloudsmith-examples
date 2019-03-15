package io.cloudsmith.example

object Main extends Greeting with App {
  println(greeting)
}

trait Greeting {
  lazy val greeting: String = "Cloudsmith: Be Awesome. Automate Everything."
}
