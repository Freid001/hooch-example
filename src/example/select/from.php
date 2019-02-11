<?php

include __DIR__ . '/../../driver/pdo.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

//SELECT * FROM `customer`;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("customer"))
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
