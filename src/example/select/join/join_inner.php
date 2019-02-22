<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

$query = $driver->select()
    ->cols(["*"],"b")
    ->cols(["first_name", "last_name"], "a")
    ->from(Table::make($driver)->setName("book")->setAlias("b"))
    ->innerJoin(
        Table::make($driver)->setName("author")->setAlias("a"),
        'a.id',
        $driver->operator()->comparison()->column()->equalTo('b.author_id')
    )
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);

