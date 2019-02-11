<?php

require_once __DIR__ .  "/../../vendor/autoload.php";

use Redstraw\Hooch\Builder\Connection\Driver\PdoDriver;
use Redstraw\Hooch\Query\Sql\Query;
use Redstraw\Hooch\Query\Sql\Sql;
use Redstraw\Hooch\Query\Sql\Operator\Logical;
use Redstraw\Hooch\Query\Sql\Accent;
use Monolog\Logger;

$host=getenv("DB_HOST");

$db=getenv("DB_DATABASE");

$pdo = new pdo(
    "mysql:host=$host;dbname=$db",
    getenv("DB_USER"),
    getenv("DB_PASSWORD")
);

$pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$pdo->setAttribute(PDO::ATTR_STRINGIFY_FETCHES, false);

$logger = new Logger("hooch-example");

$driver = new PdoDriver(
    new pdo(
        "mysql:host=$host;dbname=$db;charset=utf8mb4",
        getenv("DB_USER"),
        getenv("DB_PASSWORD")
    ),
    new Query(
        new Sql(),
        new Logical(),
        new Accent()
    ),
    $logger
);