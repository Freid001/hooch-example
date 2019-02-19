<?php

namespace Test\behat\bootstrap;


use Behat\Behat\Hook\Scope\AfterFeatureScope;
use Behat\Behat\Hook\Scope\BeforeFeatureScope;
use Imbo\BehatApiExtension\Context\ApiContext;

class FeatureContext extends ApiContext
{
    /**
     * @BeforeFeature
     */
    public static function setup(BeforeFeatureScope $scope)
    {
        $pdo = new \pdo("mysql:host=localhost:3306; dbname=".getenv("DB_DATABASE").";", getenv('DB_USER'), getenv('DB_PASSWORD'));

        $query = $pdo->query("
           INSERT INTO `customer` (`id`, `first_name`, `last_name`) VALUES (1, 'john', 'smith'),
                                                                           (2, 'amelia', 'jones'),
                                                                           (3, 'millie', 'brown'),
                                                                           (4, 'paula', 'hawkins');
                                                                                                 
           INSERT INTO `author` (`id`, `first_name`, `last_name`) VALUES (1, 'suzanne', 'collins'),
                                                                         (2, 'douglas', 'adams'),
                                                                         (3, 'rudyard', 'kipling'),
                                                                         (4, 'pamela', 'travers'),
                                                                         (5, 'herbert', 'wells'),
                                                                         (6, 'agatha', 'christie'),
                                                                         (7, 'arthur', 'doyle'),
                                                                         (8, 'william', 'shakespeare'),
                                                                         (9, 'jane', 'austen'),
                                                                         (10, 'judith', 'kerr'),
                                                                         (11, 'eric', 'carle'),
                                                                         (12, 'stephen', 'king'),
                                                                         (13, 'bram', 'stoker'),
                                                                         (14, 'tom', 'clancy'),
                                                                         (15, 'paula', 'hawkins');
                                                                         
           INSERT INTO `book` (`id`, `author_id`, `name`, `genre`) VALUES (1, 1, 'the hunger games', 'dystopia'),
                                                                         (2, 2, 'the hitchhikers guide to the galaxy', 'fantasy'),
                                                                         (3, 3, 'the jungle book', 'children'),
                                                                         (4, 4, 'mary poppins', 'children'),
                                                                         (5, 5, 'war of the worlds', 'fantasy'),
                                                                         (6, 5, 'the time machine', 'fantasy'),
                                                                         (7, 2, 'restaurants at the end of the universe', 'fantasy'),
                                                                         (8, 6, 'murder on the orient express', 'crime'),
                                                                         (9, 6, 'death on the nile', 'crime'),
                                                                         (10, 7, 'a study in scarlet', 'detective'),
                                                                         (11, 7, 'the hound of the baskervilles', 'detective'),
                                                                         (12, 8, 'romeo and juliet', 'romance'),
                                                                         (13, 9, 'pride and prejudice', 'romance'),
                                                                         (14, 10, 'the tiger who came to tea', 'children'),
                                                                         (15, 11, 'the very hungry caterpillar', 'children'),
                                                                         (16, 12, 'it', 'horror'),
                                                                         (17, 13, 'dracula', 'horror'),
                                                                         (18, 14, 'the hunt for red october', 'thriller'),
                                                                         (19, 15, 'the girl on the train', 'thriller'),
                                                                         (20, 14, 'rainbow six', 'thriller');");
        $query->execute();
    }

    /**
     * @AfterFeature
     */
    public static function teardown(AfterFeatureScope $scope)
    {
        $pdo = new \pdo("mysql:host=localhost:3306; dbname=".getenv("DB_DATABASE").";", getenv('DB_USER'), getenv('DB_PASSWORD'));

        $query = $pdo->query("
            TRUNCATE TABLE `customer`;
            TRUNCATE TABLE `author`;
            TRUNCATE TABLE `book`;
            TRUNCATE TABLE `borrow`;
        
            ALTER TABLE `customer` AUTO_INCREMENT = 1;
            ALTER TABLE `author` AUTO_INCREMENT = 1;
            ALTER TABLE `book` AUTO_INCREMENT = 1;
            ALTER TABLE `borrow` AUTO_INCREMENT = 1;"
        );

        $query->execute();
    }
}
