// Bootstrap modal image gallery
$(document).ready(function(){  

    $('li img').on('click',function(){
        var src = $(this).attr('src');
        var img = '<img src="' + src + '" class="img-responsive"/>';
            
        var index = $(this).parent('li').index();   
            
        var html = '';
        html += img;                
        html += '<div style="height:25px;clear:both;display:block;">';
        html += '<a class="controls next" href="'+ (index+2) + '">next &raquo;</a>';
        html += '<a class="controls previous" href="' + (index) + '">&laquo; previous</a>';
        html += '</div>';

        // var caption = '';
        // html += '<p class="caption">' + $(this).attr('alt') + '</p>'
         
        // Loads modal when image thumbnail is clicked    
        $('#myModal').modal();
        $('#myModal').on('shown.bs.modal', function(){
            $('#myModal .modal-body').html(html);
            // $('#myModal .modal-footer').html(caption);
            $('a.controls').trigger('click');
        });

        // Adjusts backdrop height for portrait oriented images. Still a little buggy, but better than before!
        $('body').on('shown.bs.modal', '.modal', function(){
            var windowHeight = parseInt($(window).height());
            var height = parseInt($('.modal-content').height());
            if(windowHeight > height) height = windowHeight;
            $('.modal-backdrop').height(height+80);
        });

        // Hides modal when backdrop is clicked
        $('#myModal').on('hidden.bs.modal', function(){
            $('#myModal .modal-body').html('');
            // $('#myModal .modal-footer').html('');
        });
    });  
});

// Next & Previous buttons in modal window
$(document).on('click', 'a.controls', function(){
    var index = $(this).attr('href');
    var src = $('ul.row li:nth-child('+ index +') img').attr('src');    
    // var caption =  $(this).attr('alt');       
        
    $('.modal-body img').attr('src', src);
    // $('.modal-footer').attr('alt', caption);
        
    var newPrevIndex = parseInt(index) - 1; 
    var newNextIndex = parseInt(newPrevIndex) + 2; 
        
    if ($(this).hasClass('previous')) {               
        $(this).attr('href', newPrevIndex); 
        $('a.next').attr('href', newNextIndex);
    } else {
        $(this).attr('href', newNextIndex); 
        $('a.previous').attr('href', newPrevIndex);
    }
        
    var total = $('ul.row li').length + 1; 
    //hide next button
    if (total === newNextIndex) {
        $('a.next').hide();
    } else {
        $('a.next').show()
    }            
    //hide previous button
    if (newPrevIndex === 0) {
        $('a.previous').hide();
    } else { 
        $('a.previous').show()
    }
        
    return false;
});

//Use arrow keys to navigate through the gallery
$(document).keydown(function(e){
    if (e.keyCode == 37) { //this is left keyboard button
        $('a.previous').trigger('click') //trigger the left button click
    }

    if (e.keyCode == 39) { //this is right keboard button
        $('a.next').trigger('click') //trigger the right button click
    }
});