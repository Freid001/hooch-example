<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Sql;
use Redstraw\Hooch\Query\Sql\Statement\OnFilterInterface;

//SELECT * FROM `book` AS `b` JOIN `author` AS `a` ON `a`.`id` = `b`.`author_id`;
$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book")->setAlias("b"))
    ->join(Sql::JOIN, Table::make($driver)->setName("author")->setAlias("a"))
    ->onFilter(function() use ($driver){
        /** @var OnFilterInterface $this */
        $this->on('a.id', $driver->operator()->comparison()->column()->equalTo('b.author_id'));
    })
    ->build();

header('Content-Type: application/json');

echo json_encode($driver->fetchAll($query));
