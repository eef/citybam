$(function() {

  var country_map = {"FR":"France", "GB":"United Kingdom", "JP":"Japan","IT":"Italy", "AU":"Australia", "NL":"Netherlands", "US":"United States", "ES":"Spain", "DE":"Germany", "HK":"Hong Kong", "SG":"Singapore", "BR":"Brazil", "CZ":"Czech Republic"}

	$.widget( "custom.catcomplete", $.ui.autocomplete, {
		_renderMenu: function( ul, items ) {
			var self = this,
				currentCategory = "";
			$.each( items, function( index, item ) {
				if ( item.category != currentCategory ) {
					ul.append( "<li class='ui-autocomplete-category'><a href='/cities/"+item.id+"'>" + country_map[item.country] + "</a></li>" );
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
