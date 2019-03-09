Feature: Join

  Scenario: join_inner
    When I request "/select/join/join_inner.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `b`.`*`,`a`.`first_name`,`a`.`last_name` FROM `book` AS `b` INNER JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(21)"
    }
    """

  Scenario: join_left
    When I request "/select/join/join_left.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `b`.`*`,`a`.`first_name`,`a`.`last_name` FROM `book` AS `b` LEFT JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(21)"
    }
    """

  Scenario: join_on
    When I request "/select/join/join_on.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `b`.`*`,`a`.`first_name`,`a`.`last_name` FROM `book` AS `b` JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(21)"
    }
    """

  Scenario: join_right
    When I request "/select/join/join_right.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `b`.`*`,`a`.`first_name`,`a`.`last_name` FROM `book` AS `b` RIGHT JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(21)"
    }
    """

  Scenario: join_self
    When I request "/select/join/join_self.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `b`.`id`,`b`.`name` AS `book`,`bb`.`name` AS `sequel` FROM `book` AS `b` INNER JOIN `book` AS `bb` ON `b`.`sequel_id` = `bb`.`id` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(5)"
    }
    """