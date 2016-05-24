(function ($, w, d){
    $(d).ready(function(){
        // 커스텀 셀렉트
        $('.custom_select .txt').each(function(){
            $(this).text($(this).next('select').val());
        });
        $('.custom_select select').change(function(){
            $(this).prev('.txt').text($(this).val());
        });
        $('.custom_select select').focusin(function(){
            $(this).parents('.customSelect').addClass('customSelectF');
        });
        $('.custom_select select').focusout(function(){
            $(this).parents('.customSelect').removeClass('customSelectF');
        });
    });
})(jQuery, window, document);




