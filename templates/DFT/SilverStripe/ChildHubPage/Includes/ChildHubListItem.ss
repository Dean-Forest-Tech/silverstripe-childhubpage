<div class="line row child child-{$Pos}">
    <% if $FeaturedImage.exists %>
        <div class="unit size1of3 col-mb-4md-4">
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
            <a class="btn btn-primary" href="{$Link}"> 
                <%t ChildHubPage.More "More" %>
            </a>
        </p>
    </div>
</div>
