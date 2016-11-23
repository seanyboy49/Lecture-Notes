### serialize
Creates a text string. Can act on a jQuery object that has selected individual form controls. 

	$( "form" ).on( "submit", function( event ) {
	  event.preventDefault();
	  console.log( $( this ).serialize() );
	});

### value 
Grabs value 

	$("form").on( "submit", function( event ) {
		event.preventDefault();

		var selector = $(this[0]).val();
		var property = $(this[1]).val();
		var value = $(this[2]).val();
		$(selector).css(property, value);
	})