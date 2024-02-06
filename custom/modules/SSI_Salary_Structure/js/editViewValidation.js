/*$('document').ready( function() {
	changeSqsSearch();

	MutationObserver = window.MutationObserver || window.WebKitMutationObserver;
	var trackFieldChange = function(element) {
		var observer = new MutationObserver(function(mutations, observer) {
			if(mutations[0].attributeName == "value") {
				$(element).trigger("change");
			}
		});
		observer.observe(element, {
			attributes: true
		});
	}
	trackFieldChange($("input[name=contacts_ssi_salary_structure_1contacts_ida]")[0]);
	$('#contacts_ssi_salary_structure_1contacts_ida').change(function(event) {
		changeSqsSearch();
	});

});

function changeSqsSearch()
{
	var additionalCond1 = JSON.parse('{"name": "contact_type","op": "equal","end": "","value": "Employee"}');
	sqs_objects['EditView_contacts_ssi_salary_structure_1_name']['group'] = "and"; 
	sqs_objects['EditView_contacts_ssi_salary_structure_1_name']['conditions'] = [{name: 'first_name', op: 'like_custom', end: '%', value: ''},{name: 'last_name', op: 'like_custom', end: '%', value: ''},additionalCond1];		
}*/
