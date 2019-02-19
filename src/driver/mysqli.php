<?php

use Redstraw\Hooch\Builder\Connection\Driver\MysqliDriver;
use Redstraw\Hooch\Query\Sql\Query;
use Redstraw\Hooch\Query\Sql\Sql;
use Redstraw\Hooch\Query\Sql\Accent;
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

$logger = new Logger("hooch-example");

$driver = new MysqliDriver(
    $mysqli,
    $query,
    $logger
);
