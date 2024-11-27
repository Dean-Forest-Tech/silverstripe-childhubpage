<div class="line row mb-4 child child-{$Pos}">
    <% if $FeaturedImage.exists %>
        <div class="unit size1of3 col-mb-4 <% if $Even %>order-12<% end_if %>">
            <p>
                <a href="{$Link}">
					<img src="$FeaturedImage.Fill(300,200).URL" alt="$FeaturedImage.Title" class="rounded img-responsive img-fluid">
                </a>
            </p>
        </div>
    <% end_if %>
    
    <div class="unit<% if $FeaturedImage.exists %> size2of3 col-md-8<% else %> col-md-12<% end_if %>">
        <h2>
            <a href="{$Link}">{$Title}</a>
        </h2>

        <p>$Content.FirstParagraph</p>
        
        <p>
            <a href="{$Link}">
                <%t ChildHubPage.MoreInfo "More {title} Info" title=$Title %>
            </a>
        </p>
    </div>
</div>
