// $(document).ready(function(){

// 	$changeHeight = function(elm){
// 		var documentHeight = $(document).height;
// 		$(elm).css({'min-height': documentHeight});
// 	}

// 	$getTitle = function(item){
// 		var portraitInfo = {};
// 		portraitInfo['title'] = item.parent('a').siblings('h4').html();
// 		portraitInfo['artist'] = item.parent('a').siblings('p').html();

// 		return portraitInfo;
// 	};

// 	$('.portrait').click(fucntion(event){
// 		var imgPath = event.target.src;
// 		$('.overlay').show(1000);
// 		$('.close').show(1000);
// 		$('#modal_img').attr('src', imgPath);

// 		var imgHeight = $('#modal_img').height();

// 		var portraitInfo = $getTitle($(event.target));
// 		$('#caption').show(1000).html('<h2>' + portraitInfo['title'] + '</h2><p>' + portraitInfo['artist'] + '</p>').css({'top': imgHeight});

// 		$changeHeight('.overlay');
// 	});

// 	$('.overlay').click(function(event){
// 		$('.overlay').hide(1000);
// 	});
// });