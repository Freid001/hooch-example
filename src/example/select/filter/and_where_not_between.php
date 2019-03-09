<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Statement\FilterInterface;
use Redstraw\Hooch\Query\Field;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book"))
    ->filter(function(FilterInterface $f) {
        $f->where(Field::column('author_id'), $f->operator()->param()->eq(2));
        $f->whereNotBetween(Field::column('published'), '1980-01-30', '1984-01-01');
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
