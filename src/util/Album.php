<?php

namespace QueryMule\Example\Util;

use QueryMule\Example\Util\Table\Albums;
use QueryMule\Query\Connection\Driver\DriverInterface;

class Album{

    /**
     * @var DriverInterface
     */
    private $driver;

    /**
     * Album constructor.
     * @param DriverInterface $driver
     */
    public function __construct(DriverInterface $driver)
    {
        $this->driver = $driver;
    }

    /**
     * @param int|null $page
     * @param int|null $id
     * @param null|string $title
     * @return mixed
     */
    public function fetch(?int $page, ?int $id, ?string $title)
    {
        $albums = new Albums($this->driver);

        $query = $albums->select();

        if(!empty($id)){
            $albums->filterByAlbumId($id);
        }

        if(!empty($title)){
            $albums->filterByAlbumTitle($title);
        }

        $query->limit(10)->offset($page * 10);

        return $this->driver->fetchAll($query->build());
    }

}