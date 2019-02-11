Feature: Select

  Scenario: from
    When I request "/select/from.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: groupBy
    When I request "/select/groupBy.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(string)"
      }
    ]
    """

  Scenario: where
    When I request "/select/where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "id":"@variableType(string)",
      "first_name":"@variableType(string)",
      "last_name":"@variableType(string)"
    }
    """

