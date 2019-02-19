<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;

//SELECT * FROM `book` AS `b` RIGHT JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id`;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book")->setAlias("b"))
    ->rightJoin(
        Table::make($driver)->setName("author")->setAlias("a"),
        'a.id',
        $driver->operator()->comparison()->column()->equalTo('b.author_id')
    )
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
