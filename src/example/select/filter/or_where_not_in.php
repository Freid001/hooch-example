<?php

include __DIR__ . '/../../../setup.php';

use Redstraw\Hooch\Query\Repository\Table\Table;
use Redstraw\Hooch\Query\Sql\Statement\FilterInterface;

$query = $driver->select()
    ->cols()
    ->from(Table::make($driver)->setName("book"))
    ->filter(function() {
        /** @var FilterInterface $this */
        $this->where('name', $this->operator()->logical()->param()->like("murder%"));
        $this->orWhereNotIn('genre', ["dystopia","fantasy","children","thriller","romance","horror"]);
    })
    ->build();

header('Content-Type: application/json');

echo json_encode([
    "query"         =>  $query->string(),
    "parameters"    =>  $query->parameters(),
    "result"        =>  $driver->fetchAll($query)
]);

