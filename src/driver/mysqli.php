<?php

use Redstraw\Hooch\Builder\Driver\MysqliDriver;
use Redstraw\Hooch\Query\Query;
use Redstraw\Hooch\Query\Sql;
use Redstraw\Hooch\Query\Accent;
use Monolog\Logger;

$mysqli = new mysqli(
    getenv("DB_HOST"),
    getenv("DB_USER"),
    getenv("DB_PASSWORD"),
    getenv("DB_DATABASE")
);

$query = new Query(
    new Sql(),
    new Accent()
);

$query->accent()->setSymbol('`');

$logger = new Logger("hooch-example");

$driver = new MysqliDriver(
    $mysqli,
    $query,
    $logger
);
