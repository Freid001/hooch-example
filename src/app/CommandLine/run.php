<?php

namespace QueryMule\Example;

use Monolog\Logger;
use QueryMule\Builder\Connection\Config;
use QueryMule\Builder\Connection\Handler\DatabaseHandler;
use QueryMule\Example\Util\Album;

require(__DIR__ . '/../../../vendor/autoload.php');

/**
 * @return bool|\QueryMule\Query\Connection\Driver\DriverInterface
 */
function connection(){
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

    try {
        return $config->dbh('sqlite')->driver();
    }catch (\Exception $e){
        return false;
    }
}

/**
 * @param $args
 * @return array
 */
function arguments($args) {
    array_shift($args);

    $ret = [
        'commands' => [],
        'options' => [],
        'flags' => []
    ];

    while ($arg = array_shift($args)) {
        // Is it a command? (prefixed with --)
        if (substr($arg, 0, 2) === '--') {
            $value = "";
            $com = substr($arg, 2);
            // is it the syntax '--option=argument'?
            if (strpos($com, '='))
                list($com, $value) = explode("=",$com,2);
            // is the option not followed by another option but by arguments
            else if(strpos($args[0], '-') !== 0) {
                $value = rtrim($value, ' ');
            }
            $ret['options'][$com] = !is_null($value) ? $value : true;
            continue;
        }

        // Is it a flag or a serial of flags? (prefixed with -)
        if (substr($arg, 0, 1) === '-') {
            for ($i = 1; isset($arg[$i]); $i++)
                $ret['flags'][] = $arg[$i];
            continue;
        }

        // finally, it is not option, nor flag, nor argument
        $ret['commands'][] = $arg;
        continue;
    }

    return $ret;
}

/**
 * @param $driver
 * @param array $arguments
 * @return string
 */
function main($driver,array $arguments)
{
    if(!$driver) {
        echo output(["error" => "Could not connect to database!"]);
        exit;
    }

    $album = new Album($driver);

    $response = null;
    switch (isset($arguments['commands'][0]) ? $arguments['commands'][0] : null)
    {
        case "fetch-albums":
            $response = $album->fetch(
                isset($arguments['options']['page']) ? (int)$arguments['options']['page']: null,
                isset($arguments['options']['id']) ? (int)$arguments['options']['id'] : null,
                isset($arguments['options']['title']) ? (string)$arguments['options']['title'] : null,
                isset($arguments['options']['sort']) ? (string)$arguments['options']['sort'] : null
            );
            break;

        case "put":
            break;

        case "delete":
            break;

        default:
            echo "Usage:\n";
            echo "\tcommand [argument][option]\n\n";
            echo "Commands: \n";
            echo "\tfetch-albums \t Get albums.\n";
            break;
    }

    if($response) {
        echo output($response);
    }

    exit;
}

/**
 * @param $value
 * @return string
 */
function output($value)
{
    return json_encode($value, JSON_PRETTY_PRINT) . "\r\n";
}

/**
 * Run app
 */
main(connection(),arguments($argv));