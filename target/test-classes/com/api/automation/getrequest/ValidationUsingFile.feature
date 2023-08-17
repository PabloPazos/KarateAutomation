Feature: To validate the GET End point
  To Validate the GET End point response

  Background: Setup the base url
    Given url 'http://localhost:8080'

  Scenario: To get the data in JSON format anda validate from file
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    # Create a variable to store the data from external file
    * def actualResponse = read("../JsonResponse.json")
    # And match response == actualResponse
    And print "File ==> ", actualResponse

  Scenario: To get the data in XML format
    Given path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    # Create a variable to read the data from xml file
    * def actualResponse = read("../XmlResponse.xml")
    And print "XML Response ==> ", actualResponse
    And match response == actualResponse
