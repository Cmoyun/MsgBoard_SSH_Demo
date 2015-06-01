
var m = {};
$(function () {
    console.log("is ok", $().jquery);

    $('.sh-bind-msg').on('click', function () {
        $('.sh-iam-msg').fadeToggle();
    });

    m.xHttp = function(xUrl, gUrl) {
        $.get(xUrl, function(){
            window.location.href = gUrl;
        });
    };

    m.updateDate = function(th1s){
        var $th1s = $(th1s);
        var Sjson = $th1s.attr('Sjson');

        Sjson = Sjson.split(',');
        console.log("Sjson", Sjson);
        // 跳到最下面
        $('.sh-iam-msg').fadeIn();
        window.scrollTo(0,1000);

        // 赋值进入原空格
        var $Id = $('.sh-iam-msg input[name="ID"]');
        var $Created_time = $('.sh-iam-msg input[name="CREATED_TIME"]');
        var $Name = $('.sh-iam-msg input[name="NAME"]');
        var $Email = $('.sh-iam-msg input[name="EMAIL"]');
        var $Phone = $('.sh-iam-msg input[name="PHONE"]');
        var $Title = $('.sh-iam-msg input[name="TITLE"]');
        var $Content = $('.sh-iam-msg textarea[name="CONTENT"]');

        var allForm = [$Id, $Created_time, $Name, $Email, $Phone, $Title, $Content];
        console.log("allForm", allForm);
        for(var i= 0, len = allForm.length - 1;i<len; i++){
            allForm[i].val(Sjson[i])
        }
        CKEDITOR.instances.CONTENT.setData(Sjson[allForm.length-1]);
        // 改变文字
        var $Submit = $('.sh-iam-msg input[name="SUBMIT"]');
        $Submit.val("更新");

    };
});