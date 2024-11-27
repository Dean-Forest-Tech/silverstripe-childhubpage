<div class="unit size1of3 unit-33 mb-4 col-12 col-sm-6 col-lg-4 $EvenOdd child child-{$Pos}">
    <h2>
        <a href="{$Link}">{$Title}</a>
    </h2>
    <% if $FeaturedImage.exists %>
        <p>
            <a href="{$Link}">
                <img src="$FeaturedImage.Fill(330,330).URL" title="$FeaturedImage.Title" alt="$FeaturedImage.Title" class="rounded img-responsive img-fluid">
            </a>
        </p>
    <% end_if %>

	<p>$Content.FirstParagraph</p>
    
    <p>
        <a class="btn btn-primary w-100" href="{$Link}">
            <%t ChildHubPage.MoreInfo "More {title} Info" title=$Title %>
        </a>
    </p>
</div>

<% if $AddLineEnd == 'true' && $MultipleOf(3) && not $Last %>
</div><div class="line units-row row child-list">
<% end_if %>
