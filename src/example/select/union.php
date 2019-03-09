<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Field;

$unionQuery = $driver->select()
    ->cols([
        Field::column('first_name'),
        Field::column('last_name')
    ])
    ->from(Table::make($driver)->setName("customer"))
    ->build();

$query = $driver->select()
    ->cols([
        Field::column('first_name'),
        Field::column('last_name')
    ])
    ->from(Table::make($driver)->setName("author"))
    ->union($unionQuery)
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
