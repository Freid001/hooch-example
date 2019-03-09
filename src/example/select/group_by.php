<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols([
        Field::column('genre'),
        'books' => Field::count('name')
    ])
    ->from(Table::make($driver)->setName("book"))
    ->groupBy(Field::column('genre'))
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
