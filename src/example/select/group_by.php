<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

$query = $driver->select()
    ->cols(['genre','books'=>'COUNT(*)'])
    ->from(Table::make($driver)->setName("book"))
    ->groupBy('genre')
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
