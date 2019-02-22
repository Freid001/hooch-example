<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function() {
        /** @var FilterInterface $this */
        $this->where('id', $this->operator()->comparison()->param()->equalTo(1));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);

//where_exists
//or_where_exists
//and_where_exists
//where_not_exists

//where_like
//or_where_like
//and_where_like
//where_not_like

//where_all
//where_any
//where_some
