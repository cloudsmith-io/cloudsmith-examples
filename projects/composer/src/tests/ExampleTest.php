<?php

/**
*  Test the Cloudsmith Composer example.
*
*  @author Cloudsmith
*/
class ExampleTest extends PHPUnit_Framework_TestCase {

  /**
  * Just check if the Example class has no syntax errors.
  *
  */
  public function testIsThereAnySyntaxError(){
	$var = new Cloudsmith\Composer\Example;
	$this->assertTrue(is_object($var));
	unset($var);
  }

  /**
  * Check that the Example class outputs the right nonsense string.
  */
  public function testHello(){
	$var = new Cloudsmith\Composer\Example;
	$this->assertTrue($var->hello() == 'Cloudsmith: Be Awesome. Automate Everything.');
	unset($var);
  }
}

?>
