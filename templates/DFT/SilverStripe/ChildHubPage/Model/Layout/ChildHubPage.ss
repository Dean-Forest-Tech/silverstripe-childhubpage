<% if $ShowSideBar && $Menu(2) %>
    <% include SideBar %>
<% end_if %>

<div class="content-container col<% if $ShowSideBar && $Menu(2) %> unit size3of4 lastUnit<% end_if %>">
    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>
    </article>
    
    <% if $PaginatedChildren.exists %>
        <div class="child-list">
            <% if $ShowChildrenAs == "Grid" %>
                <div class="line row units-row child-list">
                    <% loop $PaginatedChildren %>
                        <% include DFT\\SilverStripe\\ChildHubPage\\ChildHubGridItem AddLineEnd=true %>
                    <% end_loop %>
                </div>
            <% else %>
                <% loop $PaginatedChildren %>
                    <% include DFT\\SilverStripe\\ChildHubPage\\ChildHubListItem %>
                <% end_loop %>
            <% end_if %>
        </div>
        <% with $PaginatedChildren %>
            <% include DFT\\SilverStripe\\ChildHubPage\\Pagination %>
        <% end_with %>
    <% end_if %>
    
    $Form
    $CommentsForm
</div>