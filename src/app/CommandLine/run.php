<?php

namespace QueryMule\Example;

use Monolog\Logger;
use QueryMule\Builder\Connection\Config;
use QueryMule\Builder\Connection\Handler\DatabaseHandler;
use QueryMule\Example\Util\Album;

require(__DIR__ . '/../../../vendor/autoload.php');

// === Configure database handler ===
$config = new Config();
$config->setLogger(new Logger('chinook'));
$config->setConfigs([
    'sqlite' => [
        DatabaseHandler::DATABASE_DRIVER => 'sqlite',
        DatabaseHandler::DATABASE_DATABASE => 'main',
        DatabaseHandler::DATABASE_PATH_TO_FILE => __DIR__ . '/../../../chinook.db',
        DatabaseHandler::DATABASE_ADAPTER => DatabaseHandler::ADAPTER_PDO,
    ]
]);

$driver = $config->dbh('sqlite')->driver();

// === Fetch cli args ===
array_shift($argv);

$method = null;

if(isset($argv[0])) {
    $method = $argv[0];
    unset($argv[0]);
}

// === Implementation ===

$album = new Album($driver);

$response = null;

// === Commands ===
switch ($method)
{

    case "fetch-albums":
        $response = $album->fetch(
            isset($argv[1]) ? (int)$argv[1] : null,
            isset($argv[2]) ? (int)$argv[2] : null,
            isset($argv[3]) ? (int)$argv[3] : null
        );
        break;

    case "post":
        break;

    case "put":
        break;

    case "delete":
        break;

    default:
        echo "Usage:\n";
        echo "\tcommand [argument]\n\n";
        echo "Commands: \n";
        echo "\tget-albums \t Get albums.\n";
        break;
}

// === Output ===
echo json_encode($response, JSON_PRETTY_PRINT);
echo "\r\n";
