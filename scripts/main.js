/*
$(window).load(function() {
	var $container = $('#grid'),
    margin = 10,
    colWidth = function () {
        var w = $container.width(), 
				columnNum = 1,
				columnWidth = 0;
			if (w > 1200) {
				columnNum  = 5;
			} else if (w > 1024) {
				columnNum  = 4;
			} else if (w > 768) {
				columnNum  = 3;
			} else if (w > 480) {
				columnNum  = 2;
			}
        columnWidth = Math.floor(w/columnNum);
       	var $item = $('.story'),
				width = columnWidth-10
				$item.css({ width: width });
			var $featured = $('.featured'),			
				dblwidth = columnWidth*2-10
				if (w > 480) {
					$featured.css({
						width: dblwidth
					});
				} else {
					$featured.css({
						width: width
					});
				}
        return columnWidth;
    },
    isotope = function () {
        $container.isotope({
            resizable: false,
            itemSelector: '.story',
            masonry: {
                columnWidth: colWidth(),
                gutterWidth: margin
            }
        });
    };
	isotope();
	$(window).on('throttledresize', isotope);
});



$(window).load(function() {
$( function() {
  // init Isotope
  var $container = $('#grid').isotope({
    itemSelector: '.story'
  });
  // filter functions
 
  // bind filter button click
  $('#filters').on( 'click', 'button', function() {
    var filterValue = $( this ).attr('data-filter');
    // use filterFn if matches value
    filterValue = filterValue;
    $container.isotope({ filter: filterValue });
  });
  // change is-checked class on buttons
  $('.button-group').each( function( i, buttonGroup ) {
    var $buttonGroup = $( buttonGroup );
    $buttonGroup.on( 'click', 'button', function() {
      $buttonGroup.find('.is-checked').removeClass('is-checked');
      $( this ).addClass('is-checked');
    });
  });
  
});
});





(function() {
	// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
	if (!String.prototype.trim) {
		(function() {
			// Make sure we trim BOM and NBSP
			var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
			String.prototype.trim = function() {
				return this.replace(rtrim, '');
			};
		})();
	}

	[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
		// in case the input is already filled..
		if( inputEl.value.trim() !== '' ) {
			classie.add( inputEl.parentNode, 'input-filled' );
		}

		// events:
		inputEl.addEventListener( 'focus', onInputFocus );
		inputEl.addEventListener( 'blur', onInputBlur );
	} );

	function onInputFocus( ev ) {
		classie.add( ev.target.parentNode, 'input-filled' );
	}

	function onInputBlur( ev ) {
		if( ev.target.value.trim() === '' ) {
			classie.remove( ev.target.parentNode, 'input-filled' );
		}
	}
})();



$(window).load(function() {

	$(".story .iso-item-box").hover(
	    function () {
	        $(this).removeClass('out').addClass('over');
	    },
	    function () {
	        $(this).removeClass('over').addClass('out');
	    }
	);
});
*/
