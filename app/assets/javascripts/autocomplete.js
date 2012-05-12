$(function() {

  var country_map = {"FR":"France", "GB":"United Kingdom"}

	$.widget( "custom.catcomplete", $.ui.autocomplete, {
		_renderMenu: function( ul, items ) {
			var self = this,
				currentCategory = "";
			$.each( items, function( index, item ) {
				if ( item.category != currentCategory ) {
					ul.append( "<li class='ui-autocomplete-category'>" + country_map[item.country] + "</li>" );
					currentCategory = item.category;
				}
				self._renderItem( ul, item );
			});
		}
	});

  $( "#city-search" ).catcomplete({
    source: "/cities/search"
  });
});
