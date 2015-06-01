require.config({
    urlArgs: "/" +  (new Date()).getTime(), // 开发模式
    paths: {
        'jquery': '/static/js/jquery-2.1.4',
        'ckeditor': '/static/js/ckeditor/ckeditor',
        'bootstrap':'/static/js/bootstrap-3.3.4-dist/js/bootstrap',
        'me': 'me'
    }
});

// 需要载入的js
var _JSes = ['bootstrap','me'];
require(['jquery','ckeditor'], function ($) {
    console.log("载入js");
    // 初始化 ckeditor
    CKEDITOR.replace('CONTENT');
    require(_JSes, function () {});
});