<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Statement\FilterInterface;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(FilterInterface $f) {
        $f->where(Field::column('id'), $f->operator()->param()->eq(1));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);

//or_where_exists
//and_where_exists

//where_like
//or_where_like
//and_where_like
//where_not_like

//where_all
//where_any
//where_some
