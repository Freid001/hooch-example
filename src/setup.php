<?php

require_once __DIR__ .  "/../vendor/autoload.php";

switch (getenv('driver')){

    case "mysqli":
        include_once __DIR__ . '/driver/mysqli.php';
        break;

    default:
        include_once __DIR__ . '/driver/pdo.php';
}
