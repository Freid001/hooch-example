<?php

use Redstraw\Hooch\Builder\Driver\PdoDriver;
use Redstraw\Hooch\Query\Query;
use Redstraw\Hooch\Query\Sql;
use Redstraw\Hooch\Query\Accent;
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

$query = new Query(
    new Sql(),
    new Accent() //QuoteIdentifier/wrap($quote/$unquote)
);

$query->accent()->setSymbol('`');

$logger = new Logger("hooch-example");

$driver = new PdoDriver(
    $pdo,
    $query,
    $logger
);
