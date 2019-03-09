<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Field;

$table = Table::make($driver)->setName("book");

$query = $driver->select()
    ->cols([
        Field::column("b.id"),
        "book"      =>  Field::column("b.name"),
        "sequel"    =>  Field::column("bb.name"),
    ])
    ->from($table->setAlias("b"))
    ->innerJoin(clone $table->setAlias("bb"), Field::column('b.sequel_id'), $driver->operator()->field()->eq(Field::column('bb.id')))
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->queryString(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
