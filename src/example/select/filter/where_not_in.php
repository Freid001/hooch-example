<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//SELECT * FROM `customer` WHERE `id` NOT IN ( ?,? );
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(){
        /** @var FilterInterface $this */
        $this->whereNotIn('id', [1,2,3]);
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
