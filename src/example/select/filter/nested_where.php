<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

//TBD - not working :(
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->filter(function(){
        /** @var FilterInterface $this */
        $this->nestedWhere(function() {
            $this->where('first_name', $this->operator()->comparison()->param()->equalTo("john"));
            $this->where('last_name', $this->operator()->comparison()->param()->equalTo("smith"));
        });
        $this->nestedWhere(function() {
            $this->orWhere('first_name', $this->operator()->comparison()->param()->equalTo("millie"));
            $this->orWhere('last_name', $this->operator()->comparison()->param()->equalTo("brown"));
        });
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);
