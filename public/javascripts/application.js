// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
	$.cleditor.defaultOptions.width = 780;
	$.cleditor.defaultOptions.height = 300;
    $("textarea").cleditor();
	$('#coin-slider').coinslider({
		width:460,height:400,delay:5000,hoverPause:true,links:false
	});
	$('.tip').poshytip({
		className: 'tip-twitter',
			showTimeout: 1,
				alignTo: 'target',
				alignX: 'center',
				offsetY: 5,
				allowTipHover: false	
	});
	$('.listen').nyroModal({
		bgColor:'#ecd8fb'
	});
	$("a[rel='colorbox']").colorbox({transition:"fade"});
	

	
})