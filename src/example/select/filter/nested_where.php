<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//TBD - not working :(
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function() use ($driver){
        /** @var FilterInterface $this */
        $this->nestedWhere(function() use ($driver){
            $this->where('first_name', $driver->operator()->comparison()->param()->equalTo("john"));
            $this->where('last_name', $driver->operator()->comparison()->param()->equalTo("smith"));
        });
        $this->nestedWhere(function() use ($driver){
            $this->orWhere('first_name', $driver->operator()->comparison()->param()->equalTo("millie"));
            $this->orWhere('last_name', $driver->operator()->comparison()->param()->equalTo("brown"));
        });
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
