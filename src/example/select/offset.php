<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

//SELECT * FROM `book` LIMIT 3 OFFSET 3;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book"))
    ->limit(3)
    ->offset(3)
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
