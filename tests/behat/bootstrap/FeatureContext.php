<?php

namespace Test\behat\bootstrap;


use Behat\Behat\Hook\Scope\AfterFeatureScope;
use Imbo\BehatApiExtension\Context\ApiContext;

class FeatureContext extends ApiContext
{
    /** @AfterFeature */
    public static function teardownFeature(AfterFeatureScope $scope)
    {
        //Reset Database
//        $pdo = new \pdo("mysql:host=localhost:3306; dbname=".getenv("DB_DATABASE").";", getenv('DB_USER'), getenv('DB_PASSWORD'));
//
//        $query = $pdo->query("TRUNCATE TABLE `customer`;
//                                        TRUNCATE TABLE `author`;
//                                        TRUNCATE TABLE `book`;
//                                        TRUNCATE TABLE `library`;
//                                        TRUNCATE TABLE `borrow`;
//
//                                        ALTER TABLE `customer` AUTO_INCREMENT = 1;
//                                        ALTER TABLE `author` AUTO_INCREMENT = 1;
//                                        ALTER TABLE `book` AUTO_INCREMENT = 1;
//                                        ALTER TABLE `library` AUTO_INCREMENT = 1;
//                                        ALTER TABLE `borrow` AUTO_INCREMENT = 1;
//                                        ");
//        $query->execute();
    }
}
