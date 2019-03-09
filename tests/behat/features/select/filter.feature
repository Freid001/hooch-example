Feature: Filter

  Scenario: and_where
    When I request "/select/filter/and_where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE `first_name` =? AND `last_name` =? ",
      "parameters":"@arrayLength(2)",
      "result":"@arrayLength(1)"
    }
    """

  Scenario: and_where_between
    When I request "/select/filter/and_where_between.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `author_id` =? AND `published` BETWEEN ? AND ? ",
      "parameters":"@arrayLength(3)",
      "result":"@arrayLength(2)"
    }
    """

  Scenario: and_where_not
    When I request "/select/filter/and_where_not.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE `id` IN ( ?,?,?,? ) AND NOT `first_name` =? ",
      "parameters":"@arrayLength(5)",
      "result":"@arrayLength(3)"
    }
    """

  Scenario: or_where
    When I request "/select/filter/or_where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `genre` =? OR `genre` =? ",
      "parameters":"@arrayLength(2)",
      "result":"@arrayLength(6)"
    }
    """

  Scenario: or_where_between
    When I request "/select/filter/or_where_between.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `published` BETWEEN ? AND ? OR `published` BETWEEN ? AND ? ",
      "parameters":"@arrayLength(4)",
      "result":"@arrayLength(10)"
    }
    """

  Scenario: or_where_in
    When I request "/select/filter/or_where_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `name` LIKE ? OR `genre` IN ( ?,? ) ",
      "parameters":"@arrayLength(3)",
      "result":"@arrayLength(4)"
    }
    """

  Scenario: or_where_not_in
    When I request "/select/filter/or_where_not_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `name` LIKE ? OR NOT `genre` IN ( ?,?,?,?,?,? ) ",
      "parameters":"@arrayLength(7)",
      "result":"@arrayLength(4)"
    }
    """

  Scenario: where
    When I request "/select/filter/where.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE `id` =? ",
      "parameters":"@arrayLength(1)",
      "result":"@arrayLength(1)"
    }
    """

  Scenario: where_between
    When I request "/select/filter/where_between.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE `published` BETWEEN ? AND ? ",
      "parameters":"@arrayLength(2)",
      "result":"@arrayLength(9)"
    }
    """

  Scenario: where_in
    When I request "/select/filter/where_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE `id` IN ( ?,?,? ) ",
      "parameters":"@arrayLength(3)",
      "result":"@arrayLength(3)"
    }
    """

  Scenario: where_not
    When I request "/select/filter/where_not.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE NOT `id` =? ",
      "parameters":"@arrayLength(1)",
      "result":"@arrayLength(3)"
    }
    """

  Scenario: where_not_between
    When I request "/select/filter/where_not_between.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `book` WHERE NOT `published` BETWEEN ? AND ? ",
      "parameters":"@arrayLength(2)",
      "result":"@arrayLength(12)"
    }
    """

  Scenario: where_not_in
    When I request "/select/filter/where_not_in.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `*` FROM `customer` WHERE NOT `id` IN ( ?,?,? ) ",
      "parameters":"@arrayLength(3)",
      "result":"@arrayLength(1)"
    }
    """