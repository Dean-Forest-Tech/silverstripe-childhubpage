<?php

namespace DFT\SilverStripe\ChildHubPage;

use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;
use Page;

/**
 * Generate a page
 */
class ChildHubPage extends Page
{
    private static $table_name = 'ChildHubPage';

    private static $icon_class = 'font-icon-sitemap';

    private static $description = 'Display all children of this page as either a list or grid';

    private static $db = [
        "ShowChildrenAs" => "Enum(array('Grid','List'),'Grid')",
        "ShowSideBar" => "Boolean"
    ];

    public function getSettingsFields()
    {
        $fields = parent::getSettingsFields();

        $fields->addFieldsToTab(
            "Root.Settings",
            [
                DropdownField::create(
                    "ShowChildrenAs",
                    $this->fieldLabel("ShowChildrenAs"),
                    $this->dbobject("ShowChildrenAs")->enumValues()
                ),
                CheckboxField::create(
                    'ShowSideBar',
                    $this->fieldLabel("ShowSideBar")
                )
            ],
            "CanViewType"
        );

        return $fields;
    }

}
