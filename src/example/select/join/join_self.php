<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

$table = Table::make($driver)->setName("book");

$query = $driver->select()
    ->cols([
        "id",
        "book" => "name",
    ], 'b')
    ->cols([
        "sequel" => "name",
    ], 'bb')
    ->from($table->setAlias("b"))
    ->innerJoin($table->setAlias("bb"), 'b.sequel_id', $driver->operator()->comparison()->column()->equalTo('bb.id'))
    ->filter(function() {
        /** @var FilterInterface $this */
        $this->whereNot("bb.name", $this->operator()->comparison()->param()->equalTo(""));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
