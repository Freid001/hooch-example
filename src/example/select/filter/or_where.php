<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Statement\FilterInterface;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book"))
    ->filter(function(FilterInterface $f) {
        $f->where(Field::column('genre'), $f->operator()->param()->eq("fantasy"));
        $f->orWhere(Field::column('genre'), $f->operator()->param()->eq("dystopia"));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
