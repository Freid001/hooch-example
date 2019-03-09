<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Statement\FilterInterface;
use Redstraw\Hooch\Query\Field;

$existsQuery = $driver->select()
    ->cols([
        Field::column('b.name')
    ])
    ->from(Table::make($driver)->setName("book")->setAlias("b"))
    ->filter(function(FilterInterface $f){
        $f->where(Field::column('b.author_id'), $f->operator()->field()->eq(Field::column('a.id')));
        $f->where(Field::column('b.genre'), $f->operator()->param()->eq('thriller'));
    })
    ->build();

$query = $driver->select()
    ->cols([
        Field::column('a.first_name'),
        Field::column('a.last_name'),
    ])
    ->from(Table::make($driver)->setName("author")->setAlias("a"))
    ->filter(function(FilterInterface $f) use ($existsQuery){
        $f->whereNotExists($existsQuery);
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);

