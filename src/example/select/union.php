<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

//SELECT `first_name`, `last_name` FROM `customer`;
$unionQuery = $driver->select()
    ->cols(['first_name','last_name'])
    ->from(Table::make($driver)->setName("customer"))
    ->build();

//SELECT `first_name`, `last_name` FROM `author` UNION SELECT `first_name`, `last_name` FROM `customer`;
$query = $driver->select()
    ->cols(['first_name','last_name'])
    ->from(Table::make($driver)->setName("author"))
    ->union($unionQuery)
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
