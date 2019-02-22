<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book"))
    ->filter(function() {
        /** @var FilterInterface $this */
        $this->where('author_id', $this->operator()->comparison()->param()->equalTo(2));
        $this->whereBetween('id', 1, 22);
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
