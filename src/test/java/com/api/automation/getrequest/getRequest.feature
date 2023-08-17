Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application
	
	Background: Setup the Base path
	Given url 'http://localhost:8080'
	And print '=========== This is Background Keyword ==========='
	
  Scenario: To test the get end point with JSON data
    # Given url 'http://localhost:8080/normal/webapi/all'
    # Base Path + Context Path
    Given path '/normal/webapi/all'
    When method get # Send the get request
    Then status 200 # The status code response should be 200

  Scenario: To test the get end point with JSON data using path variable
    # Given url 'http://localhost:8080'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    # Base Path + Context Path
    When method get # Send the get request
    Then status 200 # The status code response should be 200

  Scenario: To test the get end point with XML data using path variable
    # Given url 'http://localhost:8080'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    # Base Path + Context Path
    When method get # Send the get request
    Then status 200 # The status code response should be 200
