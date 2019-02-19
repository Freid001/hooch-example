<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//SELECT * FROM `customer` WHERE `id` =?;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function() use ($driver){
        /** @var FilterInterface $this */
        $this->where('id', $driver->operator()->comparison()->param()->equalTo(1));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetch($query));

//where_not
//and_where_not

//where_between
//or_where_between
//and_where_between

//where_not_between
//or_where_not_between
//and_where_not_between

//where_exists
//or_where_exists
//and_where_exists

//where_not_exists
//or_where_not_exists
//and_where_not_exists

//where_like
//or_where_like
//and_where_like

//where_not_like
//or_where_not_like
//and_where_not_like

//where_all
//where_any
//where_some