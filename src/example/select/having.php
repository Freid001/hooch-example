<?php

include __DIR__ . '/../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

//SELECT `genre`, COUNT(*) as books FROM `book` GROUP BY `genre` HAVING COUNT(*) > 3;
$query = $driver->select()
    ->cols(['genre','books'=>'COUNT(*)'])
    ->from(Table::make($driver)->setName("book"))
    ->groupBy('genre')
    ->having('COUNT(*)',$driver->operator()->comparison()->param()->greaterThan(3))
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
