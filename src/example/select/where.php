<?php

include __DIR__ . '/../../driver/pdo.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;
use Redstraw\Hooch\Query\Sql\Operator\Operator;

//SELECT * FROM `customer` WHERE `id` =?;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(){
        /** @var FilterInterface $this */
        $this->where('id', Operator::comparison()->equalTo(1));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetch($query));
