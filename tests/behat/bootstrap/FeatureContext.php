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
                                                                         (3, 'maurice', 'sendak'),
                                                                         (4, 'pamela', 'travers'),
                                                                         (5, 'clive', 'lewis'),
                                                                         (6, 'agatha', 'christie'),
                                                                         (7, 'arthur', 'doyle'),
                                                                         (8, 'diana', 'gabaldon'),
                                                                         (9, 'james', 'barrie'),
                                                                         (10, 'judith', 'kerr'),
                                                                         (11, 'eric', 'carle'),
                                                                         (12, 'stephen', 'king'),
                                                                         (13, 'susan', 'hill'),
                                                                         (14, 'tom', 'clancy'),
                                                                         (15, 'paula', 'hawkins');
                                                                         
           INSERT INTO `book` (`id`, `author_id`, `sequel_id`, `name`, `genre`, `published`) VALUES (1, 1, null, 'the hunger games', 'dystopia', '2008-09-13'),
                                                                                       (2, 2, 7, 'the hitchhikers guide to the galaxy', 'fantasy', '1979-10-12'),
                                                                                       (3, 3, null, 'where the wild things are', 'children', '1963-04-09'),
                                                                                       (4, 4, null, 'mary poppins', 'children', '1934-01-01'),
                                                                                       (5, 5, 6, 'the magicians nephew', 'fantasy', '1955-05-02'),
                                                                                       (6, 5, null, 'the lion the witch and the wardrobe', 'fantasy', '1950-10-16'),
                                                                                       (7, 2, 21, 'restaurants at the end of the universe', 'fantasy', '1980-10-01'),
                                                                                       (8, 6, 9, 'murder on the orient express', 'crime', '1934-01-01'),
                                                                                       (9, 6, null, 'death on the nile', 'crime', '1937-11-01'),
                                                                                       (10, 7, 11, 'the hound of the baskervilles', 'detective', '1902-04-01'),
                                                                                       (11, 7, null, 'the valley of fear', 'detective', '1915-02-27'),
                                                                                       (12, 8, null, 'outlander', 'romance', '1991-06-01'),
                                                                                       (13, 9, null, 'peter pan', 'romance', '1904-12-27'),
                                                                                       (14, 10, null, 'the tiger who came to tea', 'children', '1968-01-01'),
                                                                                       (15, 11, null, 'the very hungry caterpillar', 'children', '1969-06-03'),
                                                                                       (16, 12, null, 'it', 'horror', '1986-09-15'),
                                                                                       (17, 13, null, 'the woman in black', 'horror', '1983-10-10'),
                                                                                       (18, 14, null, 'the hunt for red october', 'thriller', '1984-10-01'),
                                                                                       (19, 15, null, 'the girl on the train', 'thriller', '2015-01-13'),
                                                                                       (20, 14, null, 'rainbow six', 'thriller', '1998-08-01'),
                                                                                       (21, 2, null, 'so long, and thanks for all the fish', 'fantasy', '1984-01-01');");
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
