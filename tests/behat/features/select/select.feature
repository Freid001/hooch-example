Feature: Select

  Scenario: from
    When I request "/select/from.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT * FROM `customer` ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(4)"
    }
    """

#  Scenario: group_by
#    When I request "/select/group_by.php" using HTTP GET
#    Then the response code is 200
#    Then the response body contains JSON:
#    """
#    {
#      "query":"SELECT `b`.`id` ,`b`.`name` AS book ,`bb`.`name` AS sequel FROM `book` AS `b` INNER JOIN `book` AS `bb` ON `b`.`sequel_id` = `bb`.`id`  WHERE NOT `bb`.`name` =?  ",
#      "parameters":"@arrayLength(0)",
#      "result":"@arrayLength(8)"
#    }
#    """
#
#  Scenario: having
#    When I request "/select/having.php" using HTTP GET
#    Then the response code is 200
#    Then the response body contains JSON:
#    """
#     {
#      "query":"SELECT `genre` ,`COUNT(*)` AS books FROM `book` GROUP BY `genre` HAVING `COUNT(*)` >? ",
#      "parameters":"@arrayLength(1)",
#      "result":"@arrayLength(2)"
#    }
#    """

  Scenario: limit
    When I request "/select/limit.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT * FROM `book` LIMIT 3 ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(3)"
    }
    """

  Scenario: offset
    When I request "/select/offset.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT * FROM `book` LIMIT 3 OFFSET 3 ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(3)"
    }
    """

  Scenario: order_by
    When I request "/select/order_by.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT * FROM `customer` ORDER BY `id` DESC ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(4)"
    }
    """

  Scenario: union
    When I request "/select/union.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `first_name` ,`last_name` FROM `author` UNION SELECT `first_name` ,`last_name` FROM `customer`  ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(18)"
    }
    """

  Scenario: union_all
    When I request "/select/union_all.php" using HTTP GET
    Then the response code is 200
    Then the response body contains JSON:
    """
    {
      "query":"SELECT `first_name` ,`last_name` FROM `author` UNION ALL SELECT `first_name` ,`last_name` FROM `customer`  ",
      "parameters":"@arrayLength(0)",
      "result":"@arrayLength(19)"
    }
    """