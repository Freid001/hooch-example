Feature: Join

  Scenario: join_inner
    When I request "/select/join/join_inner.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: join_left
    When I request "/select/join/join_left.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: join_on
    When I request "/select/join/join_on.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """

  Scenario: join_right
    When I request "/select/join/join_right.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    [
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      },
      {
        "id":"@variableType(int)",
        "author_id":"@variableType(int)",
        "name":"@variableType(string)",
        "genre":"@variableType(string)",
        "first_name":"@variableType(string)",
        "last_name":"@variableType(string)"
      }
    ]
    """