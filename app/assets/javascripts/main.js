$(document).on('turbolinks:load', function(){
// var states;
//   $('#president_state_id').parent().hide();
//   states = $('#president_state_id').html();
//   //console.log(states);
//   return $('#president_country_id').change(function() {
//     var country, escaped_country, options;
//     country = $('#president_country_id :selected').text();
//     escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
//     options = $(states).filter("optgroup[label=" + escaped_country + "]").html();
//     console.log(options);
//     if (options) {
//       $('#president_state_id').html(options);
//       return $('#president_state_id').parent().show();
//     } else {
//       $('#president_state_id').empty();
//       return $('#president_state_id').parent().hide();
//     }
//   });

	states = $('#president_state_id').html();
	$('#president_country_id').change(function(){
		country = $('#president_country_id :selected').text();
		escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
		options = $(states).filter("optgroup[label=" + escaped_country + "]").html();
		if(options)
		{
			$('#president_state_id').html(options);
			$('#president_state_id').parent().show();
		}
		else
		{
			$('#president_state_id').empty();
			$('#president_state_id').parent().hide();
		}
	});
});