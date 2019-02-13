<?php

use Behat\Mink\Driver\Selenium2Driver;
use Drupal\DrupalExtension\Context\DrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Behat\Hook\Scope\AfterStepScope;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends DrupalContext implements SnippetAcceptingContext {

  protected $screenshot_dir = '/tmp';

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct($parameters) {
    $this->parameters = $parameters;
    if (isset($parameters['screenshot_dir'])) {
      $this->screenshot_dir = $parameters['screenshot_dir'];
    }
  }

  /**
   * Works only with Selenium2Driver.
   *
   * Screenshot saved as <screendir>/<yyyyy>-<mm>-<dd>--HH:MM:SS-<uniqueid>.png.
   */
  protected function takeScreenshot() {
    $driver = $this->getSession()->getDriver();
    if ($driver instanceof Selenium2Driver) {
      $date = new DateTime();
      $filename = $date->format('Y-m-d-H:i:s') . '-' . uniqid() . '.png';
      $this->saveScreenshot($filename, $this->screenshot_dir);
      print 'Screenshot at: ' . $this->screenshot_dir . '/' . $filename;
    }
  }

  /**
   * Take screenshot when step fails.
   *
   * @AfterStep
   */
  public function after(AfterStepScope $scope) {
    if ($scope->getTestResult()->getResultCode() === 99) {
      $this->takeScreenshot();
    }
  }

  /**
   * @Given /^(?:|I )take (?:|a )screenshot$/
   */
  public function iTakeAScreenshot() {
    $this->takeScreenshot();
  }

  /**
   * @Given /^(?:|I )wait (?:|for )"([^"]*)" second(?:|s)$/
   */
  public function iWaitForSeconds($seconds, $condition = "") {
    $milliseconds = (int) ($seconds * 1000);
    $this->getSession()->wait($milliseconds, $condition);
  }

  /**
   * I should see the text
   */
  public function iShouldSeeTheText($text) {
    // Use the Mink Extension step definition.
    return new Given("I should see text matching \"$text\"");
  }

  /**
   * @When I scroll :elementId into view
   */
  public function scrollIntoView($elementId) {
    $function = <<<JS
(function(){
  var elem = document.getElementById("$elementId");
  elem.scrollIntoView(true);
})()
JS;
    try {
      $this->getSession()->executeScript($function);
    }
    catch (Exception $e) {
      throw new \Exception("ScrollIntoView failed");
    }
  }

  /**
   * Click on the element with the provided CSS Selector.
   *
   * @When /^I click on the element with css selector "([^"]*)"$/
   */
  public function iClickOnTheElementWithCSSSelector($cssSelector) {
    $session = $this->getSession();
    $element = $session->getPage()->find(
      'xpath',
      $session->getSelectorsHandler()->selectorToXpath('css', $cssSelector)
    );
    if (NULL === $element) {
      throw new \InvalidArgumentException(sprintf('Could not evaluate CSS Selector: "%s"', $cssSelector));
    }

    $element->click();
  }

  /**
   * @When I press button with title :arg1
   */
  public function iPressButtonWithTitle($arg1) {
    $session = $this->getSession();
    $session->executeScript("jQuery('button[value=" . $arg1 . "]').trigger('click');");
  }

  /**
   * Click on the element with the provided xpath query.
   *
   * @When /^I click on the element with xpath "([^"]*)"$/
   */
  public function iClickOnTheElementWithXPath($xpath) {
    // Get the mink session.
    $session = $this->getSession();
    $element = $session->getPage()->find(
      'xpath',
      $session->getSelectorsHandler()->selectorToXpath('xpath', $xpath)
    // Runs the actual query and returns the element.
    );

    // Errors must not pass silently.
    if (NULL === $element) {
      throw new \InvalidArgumentException(sprintf('Could not evaluate XPath: "%s"', $xpath));
    }

    // ok, let's click on it.
    $element->click();

  }

}
