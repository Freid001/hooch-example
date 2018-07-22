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
    public function filterByTitle($title) : FilterInterface
    {
        return $this->filter->where('Title', null, $this->filter->logical()->like('%'.$title.'%'));
    }

    /**
     * @param $sort
     * @return \QueryMule\Query\Sql\Statement\SelectInterface
     */
    public function sortByAlbumId($sort)
    {
        if(in_array($sort,["asc","desc"])) {
            return $this->select->orderBy("AlbumId",$sort);
        }

        return $this->select;
    }
}