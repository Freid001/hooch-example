<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

$unionQuery = $driver->select()
    ->cols(['first_name','last_name'])
    ->from(Table::make($driver)->setName("customer"))
    ->build();

$query = $driver->select()
    ->cols(['first_name','last_name'])
    ->from(Table::make($driver)->setName("author"))
    ->union($unionQuery)
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
