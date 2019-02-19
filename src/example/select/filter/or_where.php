<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//SELECT * FROM `customer` WHERE `first_name` =? OR `first_name` =?;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function() use ($driver){
        /** @var FilterInterface $this */
        $this->where('first_name', $driver->operator()->comparison()->param()->equalTo("john"));
        $this->orWhere('first_name', $driver->operator()->comparison()->param()->equalTo("millie"));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
