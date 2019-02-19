Feature: Select

  Scenario: from
    When I request "/select/from.php" using HTTP GET
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

  Scenario: group_by
    When I request "/select/group_by.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      }
    ]
    """

  Scenario: having
    When I request "/select/having.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      },
      {
        "genre":"@variableType(string)",
        "books":"@variableType(int)"
      }
    ]
    """

  Scenario: limit
    When I request "/select/limit.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      }
    ]
    """

  Scenario: offset
    When I request "/select/offset.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)"
      }
    ]
    """

  Scenario: order_by
    When I request "/select/order_by.php" using HTTP GET
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
      },
      {
        "id":"@variableType(int)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: union
    When I request "/select/union.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: union_all
    When I request "/select/union_all.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """