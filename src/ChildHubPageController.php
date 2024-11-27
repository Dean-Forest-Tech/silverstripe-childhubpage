<?php

namespace DFT\SilverStripe\ChildHubPage;

use SilverStripe\ORM\PaginatedList;
use PageController;

class ChildHubPageController extends PageController
{
    public function getPaginatedChildren($limit = 9)
    {
        $list = $this->AllChildren();

        $pages =  new PaginatedList($list, $this->getRequest());
        $pages->setpageLength($limit);

        return $pages;
    }
}
