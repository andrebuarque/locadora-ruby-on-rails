// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

_checked = false;

$(function(){
	$('.checkbox_movies').on('click', function(){
		var id = $(this).val();
		_checked = $(this).is(':checked');

		$.get('/movies/' + id + '.json', function(retorno){
			preco = parseFloat($('#rent_price').val());
			preco = isNaN(preco) ? 0 : preco;
			
			preco = _checked ? (preco + retorno.price) 
				: (preco - retorno.price);
			
			$('#rent_price').val(preco);
		});
	});
});