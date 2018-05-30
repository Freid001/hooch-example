<?php

namespace QueryMule\Example\Util\Table;

use QueryMule\Query\Repository\Table\AbstractTable;
use QueryMule\Query\Sql\Statement\FilterInterface;

/**
 * Class Albums
 * @package QueryMule\Demo\Table
 */
class Albums extends AbstractTable
{
    /**
     * @return string
     */
    public function getName()
    {
        return 'albums';
    }

    /**
     * @param $id
     * @return FilterInterface
     */
    public function filterByAlbumId($id) : FilterInterface
    {
        return $this->filter->where('AlbumId', $this->filter->comparison()->equalTo($id));
    }

    /**
     * @param $title
     * @return FilterInterface
     */
    public function filterByAlbumTitle($title) : FilterInterface
    {
        return $this->filter->where('AlbumId', $this->filter->comparison()->greaterThan($title));
        //return $this->filter->where('AlbumTitle', null, $this->filter->logical()->like($title));
    }
}