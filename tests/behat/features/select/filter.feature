Feature: Filter

  Scenario: and_where
    When I request "/select/filter/and_where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: or_where
    When I request "/select/filter/or_where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: or_where_in
    When I request "/select/filter/or_where_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: or_where_not_in
    When I request "/select/filter/or_where_not_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: where
    When I request "/select/filter/where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "id":"@variableType(int)",
      "first_name":"@variableType(string)",
      "last_name":"@variableType(string)"
    }
    """

  Scenario: where_in
    When I request "/select/filter/where_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: where_not_in
    When I request "/select/filter/where_not_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """