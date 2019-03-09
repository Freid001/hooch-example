<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Statement\FilterInterface;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(FilterInterface $f) {
        $f->where(Field::column('first_name'), $f->operator()->param()->eq("john"));
        $f->where(Field::column('last_name'), $f->operator()->param()->eq("smith"));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
