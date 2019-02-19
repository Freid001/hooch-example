<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//SELECT * FROM `customer` WHERE `id` IN ( ?,? ) OR `first_name` IN ( ? );
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(){
        /** @var FilterInterface $this */
        $this->whereIn('id', [1,2]);
        $this->orWhereIn('first_name', ["millie"]);
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
