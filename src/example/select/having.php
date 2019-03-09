<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols(['genre','books'=>'COUNT(*)'])
    ->from(Table::make($driver)->setName("book"))
    ->groupBy(Field::column('genre'))
    ->having('COUNT(*)',$driver->operator()->comparison()->param()->greaterThan(3))
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
