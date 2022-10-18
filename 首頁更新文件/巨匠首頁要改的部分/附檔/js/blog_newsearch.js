$(document).ready(function() {
    var $li = $('.first li');

    $(".first").each(function(index) {
        $($(this).find("li:eq(0)").addClass('active').find('a').attr('href')).siblings('.ul_inner').hide();
    });

    $li.click(function() {
        $($(this).find('a').attr('href')).show().siblings('.ul_inner').hide();
        $(this).addClass('active').siblings('.active').removeClass('active');
    });

    // 禁止dropdown-menu選單點選時，而馬上關閉
    $(".list").on("click", function(e) {
        e.stopPropagation();
    });

    // 禁止往上
    $('.stop_top').on('click', function(event) {
        event.preventDefault();
        $('html,body').stop();
    });

    // checkbox
    $('.list .ul_inner label input').click(function() {
        if ($(this).prop('checked')) {
            $(this).closest('.ul_inner').siblings().not('.third_list').find('label input:checkbox').prop('checked', false);
            //alert($(this).closest('.ul_inner').getElementById());
            // $(this).closest('.ul_inner').siblings().find('label').css('background-color', 'red')
        }
    });

    $(".ul_inner label .all").click(function() {
        if (this.checked == true) {
            $("label .individual:not('.third_list .individual')").prop("checked", true);
            $(this).closest('.ul_inner').siblings().not('.third_list').find('label input:checkbox').prop('checked', false);
        } else {
            $("label .individual:not('.third_list .individual')").prop("checked", false);
        };
    });

    $(".third_list label .all").click(function() {
        if (this.checked == true) {
            $("label .individual:not('.ul_inner .individual')").prop("checked", true);
        } else {
            $("label .individual:not('.ul_inner .individual')").prop("checked", false);
        };
    });

    $('label .individual').click(function() {
        $(this).closest('label').siblings().find('.all:checkbox').prop('checked', false);
        if ($(this).prop("checked")) {
            $(this).prop("checked", true)
        } else {
            $(this).prop("checked", false)
        };
    });
})