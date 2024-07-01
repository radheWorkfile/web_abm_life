"use strict";!function(e,a,t){var n=e();e.fn.dropdownHover=function(t){return"ontouchstart"in document?this:(n=n.add(this.parent()),this.each(function(){function i(e){r.parents(".navbar").find(".navbar-toggle").is(":visible")||(a.clearTimeout(o),a.clearTimeout(s),s=a.setTimeout(function(){n.find(":focus").blur(),!0===h.instantlyCloseOthers&&n.removeClass("open"),a.clearTimeout(s),r.attr("aria-expanded","true"),c.addClass("open"),r.trigger(u)},h.hoverDelay))}var o,s,r=e(this),c=r.parent(),l={delay:500,hoverDelay:0,instantlyCloseOthers:!0},d={delay:e(this).data("delay"),hoverDelay:e(this).data("hover-delay"),instantlyCloseOthers:e(this).data("close-others")},u="show.bs.dropdown",h=e.extend(!0,{},l,t,d);c.hover(function(e){if(!c.hasClass("open")&&!r.is(e.target))return!0;i(e)},function(){a.clearTimeout(s),o=a.setTimeout(function(){r.attr("aria-expanded","false"),c.removeClass("open"),r.trigger("hide.bs.dropdown")},h.delay)}),r.hover(function(e){if(!c.hasClass("open")&&!c.is(e.target))return!0;i(e)}),c.find(".dropdown-submenu").each(function(){var t,n=e(this);n.hover(function(){a.clearTimeout(t),n.children(".dropdown-menu").show(),n.siblings().children(".dropdown-menu").hide()},function(){var e=n.children(".dropdown-menu");t=a.setTimeout(function(){e.hide()},h.delay)})})}))},e(document).ready(function(){e('[data-hover="dropdown"]').dropdownHover()})}(jQuery,window);class StickyHeader{constructor(){if(0!==$("#tbay-header").length||0!==$("#tbay-customize-header").length){$("#tbay-header").length>0&&(this.$tbayHeader=$("#tbay-header"),this.$tbayHeaderMain=$("#tbay-header .header-main")),$("#tbay-customize-header").length>0&&(this.$tbayHeader=$("#tbay-customize-header"),this.$tbayHeaderMain=$("#tbay-customize-header .header-main")),this.$tbayHeader.hasClass("main-sticky-header")&&this.$tbayHeaderMain.length>0&&this._initStickyHeader(),$(".search-min-wrapper .btn-search-min").click(this._onClickSeachMin),$(".tbay-search-form .overlay-box").click(this._onClickOverLayBox),this._intSearchOffcanvas;let e=$(".element-sticky-header");e.length>0&&this._initELementStickyheader(e)}}_initStickyHeader(){var e=this,a=$(window).width(),t=e.$tbayHeader.outerHeight(),n=e.$tbayHeaderMain.outerHeight(),i=$("#wpadminbar").length>0?$("#wpadminbar").outerHeight():0,o=e.$tbayHeaderMain.offset().top;if(a>=1024)if(0==o||o==i){if(e.$tbayHeader.hasClass("sticky-header"))return;e._stickyHeaderOnDesktop(n,o,i),e.$tbayHeaderMain.addClass("sticky-1"),$(window).scroll(function(){$(this).scrollTop()>t?e.$tbayHeaderMain.addClass("sticky-box"):e.$tbayHeaderMain.removeClass("sticky-box")})}else $(window).scroll(function(){if(e.$tbayHeader.hasClass("main-sticky-header"))if($(this).scrollTop()>o-i){if(e.$tbayHeader.hasClass("sticky-header"))return;e._stickyHeaderOnDesktop(n,o,i)}else e.$tbayHeaderMain.css("top",0).css("position","relative").removeClass("sticky-header").parent().css("padding-top",0),e.$tbayHeaderMain.prev().css("margin-bottom",0)})}_stickyHeaderOnDesktop(e,a,t){this.$tbayHeaderMain.addClass("sticky-header").css("top",t).css("position","fixed"),0==a||a==t?this.$tbayHeaderMain.parent().css("padding-top",e):this.$tbayHeaderMain.prev().css("margin-bottom",e)}_onClickSeachMin(){$(".tbay-search-form.tbay-search-min form").toggleClass("show"),$(this).toggleClass("active")}_onClickOverLayBox(){$(".search-min-wrapper .btn-search-min").removeClass("active"),$(".tbay-search-form.tbay-search-min form").removeClass("show")}_intSearchOffcanvas(){$('[data-toggle="offcanvas-main-search"]').on("click",function(){$("#wrapper-container").toggleClass("show"),$("#tbay-offcanvas-main").toggleClass("show")});var e=$("#tbay-offcanvas-main, .search");$(window).on("click.Bst",function(a){0!=e.has(a.target).length||e.is(a.target)||($("#wrapper-container").removeClass("show"),$("#tbay-offcanvas-main").removeClass("show"))})}_initELementStickyheader(e){var a=e.first();let t=this;var n=!1,i=0,o=0;if(0!==a.parents(".tbay_header-template").length){var s=$("#wpadminbar").length>0?$("#wpadminbar").outerHeight():0,r=a.offset().top-$(window).scrollTop()-s,c=r;a.prevAll().each(function(){o+=$(this).outerHeight()}),e.each(function(){$(this).parents(".element-sticky-header").length>0||(i+=$(this).outerHeight())}),t._initELementStickyheaderContent(r,c,i,o,e,a,s,n),$(window).scroll(function(){n=!0,0===$(window).scrollTop()&&(c=0),t._initELementStickyheaderContent(r,c,i,o,e,a,s,n)})}}_initELementStickyheaderContent(e,a,t,n,i,o,s,r){if($(window).scrollTop()<n&&r||0===$(window).scrollTop()&&r){if(o.parent().children().first().hasClass("element-sticky-header"))return;o.css("top",""),a===e||0===a?i.last().next().css("padding-top",""):o.prev().css("margin-bottom",""),o.parent().css("padding-top",""),i.each(function(){$(this).removeClass("sticky"),$(this).prev(".element-sticky-header").length>0&&$(this).css("top","")})}else{if($(window).scrollTop()<n&&!r)return;i.each(function(){if(!($(this).parents(".element-sticky-header").length>0)&&($(this).addClass("sticky"),$(this).prevAll(".element-sticky-header").length>0)){let e=0;$(this).prevAll(".element-sticky-header").each(function(){e+=$(this).outerHeight()}),$(this).css("top",e+s)}}),o.css("top",s),a===e||0===a?(o.addClass("sticky"),o.parent().css("padding-top",t)):o.prev().css("margin-bottom",t)}}}const TREE_VIEW_OPTION_MEGA_MENU={animated:300,collapsed:!0,unique:!0,persist:"location"},TREE_VIEW_OPTION_MOBILE_MENU={animated:300,collapsed:!0,unique:!0,hover:!1},DEVICE={ANDROID:/Android/i,BLACK_BERRY:/BlackBerry/i,IOS:/iPhone|iPad|iPod/i,OPERA:/Opera Mini/i,WINDOW:/IEMobile/i,ANY:/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i};!function(e){e.extend(e.fn,{swapClass:function(e,a){var t=this.filter("."+e);return this.filter("."+a).removeClass(a).addClass(e),t.removeClass(e).addClass(a),this},replaceClass:function(e,a){return this.filter("."+e).removeClass(e).addClass(a).end()},hoverClass:function(a){return a=a||"hover",this.hover(function(){e(this).addClass(a)},function(){e(this).removeClass(a)})},heightToggle:function(e,a){e?this.animate({height:"toggle"},e,a):this.each(function(){jQuery(this)[jQuery(this).is(":hidden")?"show":"hide"](),a&&a.apply(this,arguments)})},heightHide:function(e,a){e?this.animate({height:"hide"},e,a):(this.hide(),a&&this.each(a))},prepareBranches:function(e){return e.prerendered||(this.filter(":last-child:not(ul)").addClass(a.last),this.filter((e.collapsed?"":"."+a.closed)+":not(."+a.open+")").find(">ul").hide()),this.filter(":has(>ul),:has(>.dropdown-menu)")},applyClasses:function(t,n){this.filter(":has(>ul):not(:has(>a))").find(">span").click(function(a){n.apply(e(this).next())}).add(e("a",this)).hoverClass(),t.prerendered||(this.filter(":has(>ul:hidden),:has(>.dropdown-menu:hidden)").addClass(a.expandable).replaceClass(a.last,a.lastExpandable),this.not(":has(>ul:hidden),:has(>.dropdown-menu:hidden)").addClass(a.collapsable).replaceClass(a.last,a.lastCollapsable),this.prepend('<div class="'+a.hitarea+'"/>').find("div."+a.hitarea).each(function(){var a="";e.each(e(this).parent().attr("class").split(" "),function(){a+=this+"-hitarea "}),e(this).addClass(a)})),this.find("div."+a.hitarea).click(n)},treeview:function(t){function n(){e(this).parent().find(">.hitarea").swapClass(a.collapsableHitarea,a.expandableHitarea).swapClass(a.lastCollapsableHitarea,a.lastExpandableHitarea).end().swapClass(a.collapsable,a.expandable).swapClass(a.lastCollapsable,a.lastExpandable).find(">ul,>.dropdown-menu").heightToggle(t.animated,t.toggle),t.unique&&e(this).parent().siblings().find(">.hitarea").replaceClass(a.collapsableHitarea,a.expandableHitarea).replaceClass(a.lastCollapsableHitarea,a.lastExpandableHitarea).end().replaceClass(a.collapsable,a.expandable).replaceClass(a.lastCollapsable,a.lastExpandable).find(">ul,>.dropdown-menu").heightHide(t.animated,t.toggle)}function i(){var a=[];s.each(function(t,n){a[t]=e(n).is(":has(>ul:visible)")?1:0}),e.cookie(t.cookieId,a.join(""))}if((t=e.extend({cookieId:"treeview"},t)).add)return this.trigger("add",[t.add]);if(t.toggle){var o=t.toggle;t.toggle=function(){return o.apply(e(this).parent()[0],arguments)}}this.addClass("treeview");var s=this.find("li").prepareBranches(t);switch(t.persist){case"cookie":var r=t.toggle;t.toggle=function(){i(),r&&r.apply(this,arguments)},function(){var a=e.cookie(t.cookieId);if(a){var n=a.split("");s.each(function(a,t){e(t).find(">ul")[parseInt(n[a])?"show":"hide"]()})}}();break;case"location":var c=this.find("a").filter(function(){return this.href.toLowerCase()==location.href.toLowerCase()});c.length&&c.addClass("selected").parents("ul, li").add(c.next()).show()}return s.applyClasses(t,n),t.control&&(!function(t,i){function o(i){return function(){return n.apply(e("div."+a.hitarea,t).filter(function(){return!i||e(this).parent("."+i).length})),!1}}e("a:eq(0)",i).click(o(a.collapsable)),e("a:eq(1)",i).click(o(a.expandable)),e("a:eq(2)",i).click(o())}(this,t.control),e(t.control).show()),this.bind("add",function(i,o){e(o).prev().removeClass(a.last).removeClass(a.lastCollapsable).removeClass(a.lastExpandable).find(">.hitarea").removeClass(a.lastCollapsableHitarea).removeClass(a.lastExpandableHitarea),e(o).find("li").andSelf().prepareBranches(t).applyClasses(t,n)})}});var a=e.fn.treeview.classes={open:"open",closed:"closed",expandable:"expandable",expandableHitarea:"expandable-hitarea",lastExpandableHitarea:"lastExpandable-hitarea",collapsable:"collapsable",collapsableHitarea:"collapsable-hitarea",lastCollapsableHitarea:"lastCollapsable-hitarea",lastCollapsable:"lastCollapsable",lastExpandable:"lastExpandable",last:"last",hitarea:"hitarea"};e.fn.Treeview=e.fn.treeview}(jQuery);let tbaysetCookie=(e,a,t)=>{var n=new Date;n.setTime(n.getTime()+24*t*60*60*1e3);var i="expires="+n.toUTCString();document.cookie=e+"="+a+"; "+i+";path=/"},tbaygetCookie=e=>{var a=e+"=";var t=decodeURIComponent(document.cookie);var n=t.split(";");for(var i=0;i<n.length;i++){for(var o=n[i];" "==o.charAt(0);)o=o.substring(1);if(0==o.indexOf(a))return o.substring(a.length,o.length)}return""},isDevice=e=>{navigator.userAgent.match(e)};class Mobile{constructor(){this._topBarDevice(),this._fixVCAnimation(),this._mobileMenu(),this._SidebarShopMobile(),this._SearchFocusActive(),this._SearchOnClickSearchHeader(),this._PopupLoginMobile(),this._Select_change_form(),$(window).scroll(()=>{this._topBarDevice();this._fixVCAnimation()})}_topBarDevice(){var e=$(window).scrollTop(),a=$(".topbar-device-mobile").height(),t=$(window).scrollTop();$(".topbar-device-mobile").toggleClass("active",e<=a),$("#tbay-mobile-menu").toggleClass("offsetop",0==t)}_fixVCAnimation(){if($(".wpb_animate_when_almost_visible").length>0&&!$(".wpb_animate_when_almost_visible").hasClass("wpb_start_animation")){let a=$(window).height(),t=$(".wpb_animate_when_almost_visible:not(.wpb_start_animation)");var e=t.offset().top-$(window).scrollTop();isDevice(DEVICE.ANY)?t.removeClass("wpb_animate_when_almost_visible"):e<a-50&&t.addClass("wpb_start_animation animated")}}_mobileMenu(){$('[data-toggle="offcanvas"], .btn-offcanvas').click(function(){$("#wrapper-container").toggleClass("active"),$("#tbay-mobile-menu").toggleClass("active")}),$("#main-mobile-menu .caret").click(function(){$("#main-mobile-menu .dropdown").removeClass("open"),$(event.target).parent().addClass("open")})}_SidebarShopMobile(){let e=$(".button-filter-mobile"),a=$(".filter-mobile .close");e.on("click",function(e){$(".filter-mobile").addClass("active"),$("body").addClass("filter-mobile-active")}),a.on("click",function(e){$(".filter-mobile").removeClass("active"),$("body").removeClass("filter-mobile-active")});let t=$(window),n=$(".filter-mobile .content, .button-filter-mobile, .filter-mobile .close");t.on("click.Bst,click touchstart tap",e=>{if(!$(".filter-mobile").hasClass("active"))return;0!=n.has(e.target).length||n.is(e.target)||($(".filter-mobile").removeClass("active"),$("body").removeClass("filter-mobile-active"))})}_SearchFocusActive(){let e=$(".tbay-search-mobile .tbay-search"),a=$(".tbay-search-mobile .button-search-cancel");e.focusin(function(){$(e.parents("#tbay-mobile-menu-navbar")).addClass("search-mobile-focus"),e.parent().find(".button-search-cancel").addClass("cancel-active")}),a.on("click",function(){$(a.parents("#tbay-mobile-menu-navbar")).removeClass("search-mobile-focus"),a.removeClass("cancel-active")})}_SearchOnClickSearchHeader(){let e=$(".search-device .search-icon"),a=$(".search-device .button-search-cancel");e.on("click",function(){$(e.parent()).addClass("active-search-mobile")}),a.on("click",function(){$(a.parents(".search-device")).removeClass("active-search-mobile"),a.removeClass("cancel-active")})}_PopupLoginMobile(){let e=$(".mmenu-account .popup-login a, .footer-device-mobile > .device-account > a.popup-login");e.on("click",function(){let a=$("#tbay-mobile-menu-navbar").data("mmenu");$("#custom-login-wrapper").modal("show"),$(e.parents("#tbay-mobile-menu-navbar")).removeClass("mm-menu_opened"),a.close()})}_Select_change_form(){$(".topbar-device-mobile > form select").on("change",function(){this.form.submit()})}}class AccountMenu{constructor(){this._slideToggleAccountMenu(".tbay-login"),this._slideToggleAccountMenu(".topbar-mobile"),this._urnaClickNotMyAccountMenu()}_urnaClickNotMyAccountMenu(){var e=$(window),a=$(".tbay-login .dropdown .account-menu,.topbar-mobile .dropdown .account-menu,.tbay-login .dropdown .account-button,.topbar-mobile .dropdown .account-button");e.on("click.Bst",function(e){0!=a.has(e.target).length||a.is(e.target)||($(".tbay-login .dropdown .account-menu").slideUp(500),$(".topbar-mobile .dropdown .account-menu").slideUp(500))})}_slideToggleAccountMenu(e){$(e).find(".dropdown .account-button").click(function(){$(e).find(".dropdown .account-menu").slideToggle(500)})}}class BackToTop{constructor(){this._init()}_init(){$(window).scroll(function(){window.$=window.jQuery;var e=$(this).scrollTop()>400;$(".tbay-to-top").length>0&&$(".tbay-to-top").toggleClass("active",e),$(".tbay-category-fixed").length>0&&$(".tbay-category-fixed").toggleClass("active",e)}),($("#back-to-top-mobile").length>0||$("#back-to-top").length>0)&&$("#back-to-top-mobile, #back-to-top").click(this._onClickBackToTop)}_onClickBackToTop(){$("html, body").animate({scrollTop:"0px"},800)}}class CanvasMenu{constructor(){this._init(),this._remove_click_Outside(),this._initCanvasMenuSidebar(),this._initCanvasMenu()}_init(){$("#tbay-offcanvas-main .btn-toggle-canvas").on("click",function(){$("#wrapper-container").removeClass("active")}),$("#main-menu-offcanvas .caret").click(function(){return $("#main-menu-offcanvas .dropdown").removeClass("open"),$(this).parent().addClass("open"),!1}),$('[data-toggle="offcanvas-main"]').on("click",function(){$("#wrapper-container").toggleClass("active"),$("#tbay-offcanvas-main").toggleClass("active")})}_remove_click_Outside(){$(window).on("click.Bst,click touchstart tap",function(e){let a=$("#tbay-offcanvas-main, .btn-toggle-canvas");if(0==a.has(e.target).length&&!a.is(e.target))return void $("#wrapper-container").removeClass("active")})}_initCanvasMenuSidebar(){$(document).on("click",".canvas-menu-sidebar .btn-canvas-menu",function(){$("body").toggleClass("canvas-menu-active")}),$(document).on("click",".close-canvas-menu, .bg-close-canvas-menu",function(){$("body").removeClass("canvas-menu-active")})}_initCanvasMenu(){let e=$(".element-menu-canvas");0!==e.length&&(e.each(function(){jQuery(this).find(".canvas-menu-btn-wrapper > a").on("click",function(e){$(this).parent().parent().addClass("open"),e.stopPropagation()})}),jQuery(document).on("click",".canvas-overlay-wrapper",function(e){$(this).parent().removeClass("open"),e.stopPropagation()}))}}class FuncCommon{constructor(){var e=this;e._progressAnimation(),e._createWrapStart(),$(".mod-heading .widget-title > span").wrapStart(),e._urnaActiveAdminBar(),e._urnaResizeMegamenu(),e._urnaTooltip(),e._initHeaderCoverBG(),e._initCanvasSearch(),e._initTreeviewMenu(),e._categoryMenu(),e._initContentMinHeight(),$(window).scroll(()=>{e._urnaActiveAdminBar()}),$(window).on("resize",()=>{e._urnaResizeMegamenu()}),setTimeout(function(){jQuery(document.body).on("tbay_load_html_click",()=>{e._urnaResizeMegamenu()})},2e3),e._addAccordionLoginandCoupon(),e._initFix_vc_full_width_row()}_urnaActiveAdminBar(){jQuery("#wpadminbar").length>0&&jQuery("body").addClass("active-admin-bar")}_urnaTooltip(){void 0!==$.fn.tooltip&&$('[data-toggle="tooltip"]').tooltip()}_createWrapStart(){$.fn.wrapStart=function(){return this.each(function(){var e=$(this).contents().filter(function(){return 3==this.nodeType}).first(),a=e.text().trim(),t=a.split(" ",1).join(" ");e.length&&(e[0].nodeValue=a.slice(t.length),e.before("<b>"+t+"</b>"))})}}_progressAnimation(){$("[data-progress-animation]").each(function(){var e=$(this);e.appear(function(){var a=e.attr("data-appear-animation-delay")?e.attr("data-appear-animation-delay"):1;a>1&&e.css("animation-delay",a+"ms"),setTimeout(function(){e.animate({width:e.attr("data-progress-animation")},800)},a)},{accX:0,accY:-50})})}_urnaResizeMegamenu(){var e=jQuery("body").innerWidth();0!==jQuery(".tbay_custom_menu").length&&(jQuery(".tbay_custom_menu").length>0&&jQuery(".tbay_custom_menu").hasClass("tbay-vertical-menu")&&(e>767?this._resizeMegaMenuOnDesktop():this._initTreeViewForMegaMenuOnMobile()),jQuery(".tbay-megamenu").length>0&&jQuery(".tbay-megamenu,.tbay-offcanvas-main").hasClass("verticle-menu")&&e>767&&this._resizeMegaMenuVertical())}_resizeMegaMenuVertical(){var e=parseInt($("#main-container.container").innerWidth()),a=e-parseInt($(".verticle-menu").innerWidth());$(".verticle-menu").find(".aligned-fullwidth").children(".dropdown-menu").css({"max-width":a,width:e-30})}_resizeMegaMenuOnDesktop(){let e=$("#main-container.container").innerWidth()-$(".tbay-vertical-menu").innerWidth(),a=$("#main-container.container").innerWidth()-30;$(".tbay-vertical-menu").find(".aligned-fullwidth").children(".dropdown-menu").css({"max-width":e,width:a})}_initTreeViewForMegaMenuOnMobile(){$(".tbay-vertical-menu > .widget_nav_menu >.nav > ul").treeview(TREE_VIEW_OPTION_MEGA_MENU)}_addAccordionLoginandCoupon(){$(".showlogin, .showcoupon").click(function(e){$(e.currentTarget).toggleClass("active")})}_initHeaderCoverBG(){if(0!==$("#tbay-header").length||0!==$("#tbay-customize-header").length){let e=$(".tbay-horizontal .navbar-nav.megamenu > li, #primary-menu.navbar-nav > li, #tbay-header .recent-view .urna-recent-viewed-products, #tbay-customize-header .recent-view .urna-recent-viewed-products"),a=$(".tbay-search-form .tbay-search"),t=$(".category-inside .category-inside-title"),n=$(".cart-popup");e.mouseenter(function(){0!=$(this).children(".dropdown-menu, ul, .content-view").length&&($("#tbay-header").addClass("nav-cover-active-1"),$("#tbay-customize-header").addClass("nav-cover-active-1"))}).mouseleave(function(){$("#tbay-header").removeClass("nav-cover-active-1"),$("#tbay-customize-header").removeClass("nav-cover-active-1")}),a.focusin(function(){a.parents(".sidebar-canvas-search").length>0||($("#tbay-header").addClass("nav-cover-active-2"),$("#tbay-customize-header").addClass("nav-cover-active-2"))}).focusout(function(){$("#tbay-header").removeClass("nav-cover-active-2"),$("#tbay-customize-header").removeClass("nav-cover-active-2")}),n.on("shown.bs.dropdown",function(e){$(e.target).closest("#tbay-header").addClass("nav-cover-active-3"),$(e.target).closest("#tbay-customize-header").addClass("nav-cover-active-3")}).on("hidden.bs.dropdown",function(e){$(e.target).closest("#tbay-header").removeClass("nav-cover-active-3"),$(e.target).closest("#tbay-customize-header").removeClass("nav-cover-active-3")}),t.parents("#tbay-header")&&($(document.body).on("urna_category_inside_open",()=>{$("#tbay-header").addClass("nav-cover-active-4")}),$(document.body).on("urna_category_inside_close",()=>{$("#tbay-header").removeClass("nav-cover-active-4")})),t.parents("#tbay-customize-header")&&($(document.body).on("urna_category_inside_open",()=>{$("#tbay-customize-header").addClass("nav-cover-active-4")}),$(document.body).on("urna_category_inside_close",()=>{$("#tbay-customize-header").removeClass("nav-cover-active-4")}))}}_initCanvasSearch(){let e=$("#tbay-search-form-canvas .sidebar-canvas-search .sidebar-content .tbay-search");e.focusin(function(){e.parent().addClass("search_cv_active")}).focusout(function(){e.parent().removeClass("search_cv_active")})}_initTreeviewMenu(){$("#category-menu").addClass("treeview"),jQuery(".treeview-menu .menu, #category-menu").treeview(TREE_VIEW_OPTION_MEGA_MENU),jQuery("#main-mobile-menu, #main-mobile-menu-xlg").treeview(TREE_VIEW_OPTION_MOBILE_MENU)}_categoryMenu(){$(".category-inside .category-inside-title").click(function(){$(event.target).parents(".category-inside").toggleClass("open"),$(event.target).parents(".category-inside").hasClass("open")?$(document.body).trigger("urna_category_inside_open"):$(document.body).trigger("urna_category_inside_close")}),$(window).on("click.Bst,click touchstart tap",function(e){if("undefined"==typeof urna_settings||"open"!==urna_settings.category_open){let a=$(".category-inside .category-inside-title, .category-inside-content");0===$("#tbay-header").length&&0===$("#tbay-customize-header").length||($(".category-inside").hasClass("open")||$("#tbay-header").hasClass("nav-cover-active-4")&&$("#tbay-customize-header").hasClass("nav-cover-active-4"))&&(0!=a.has(e.target).length||a.is(e.target)||($(".category-inside").removeClass("open"),$("#tbay-header").removeClass("nav-cover-active-4"),$("#tbay-customize-header").removeClass("nav-cover-active-4")))}})}_initContentMinHeight(){if(0!==$("#tbay-header").length||0!==$("#tbay-customize-header").length){let a=jQuery("body").innerWidth(),t=jQuery(window).height(),n=jQuery("#tbay-main-content").outerHeight();if(jQuery("#tbay-header").length>0)e=jQuery("#tbay-header").outerHeight();if(jQuery("#tbay-customize-header").length>0)var e=jQuery("#tbay-customize-header").outerHeight();n<t&&a>1200&&jQuery("#tbay-main-content").css("min-height",t-e)}}_initFix_vc_full_width_row(){function e(e){var a=$('[data-vc-full-width="true"]');jQuery.each(a,function(){if("rtl"==$("html").attr("dir")){if(parseInt($("body").css("padding-right"))>0){let e=parseInt($("body").css("width"))-parseInt($("body").css("padding-right")),a=(e-parseInt($("#main-container").css("width")))/2,t=a;$(this).data("vc-stretch-content")&&(a=""),$(this).css("width",e).css("right",-t).css("left","").css("padding-left",a).css("padding-right",a)}}else if(parseInt($("body").css("padding-left"))>0){let e=parseInt($("body").css("width"))-parseInt($("body").css("padding-left")),a=(e-parseInt($("#main-container").css("width")))/2,t=a;$(this).data("vc-stretch-content")&&(a=""),$(this).css("width",e).css("left",-t).css("padding-left",a).css("padding-right",a)}})}jQuery(document).on("vc-full-width-row-single",e)}}class NewsLetter{constructor(){this._init()}_init(){let e=$("#popupNewsletterModal");0===e.length||$("body.elementor-editor-active").length>0||(e.on("hidden.bs.modal",function(){tbaysetCookie("hiddenmodal",1,.1)}),setTimeout(function(){""==tbaygetCookie("hiddenmodal")&&e.modal("show")},3e3))}}class Banner{constructor(){this._bannerWidget(),this._bannerAddon()}_bannerWidget(){let e=$("#banner-remove");0!==e.length&&e.on("click",function(e){$(e.target).parents(".widget_urna_banner_image").slideUp("slow"),tbaysetCookie("banner_remove",1,.1)})}_bannerAddon(){let e=$(".banner-remove");0===e.length?$(".elementor-widget-tbay-banner-close").each(function(){$(this).closest("section").addClass("section-banner-close")}):e.on("click",function(e){let a=$(this).data("id");void 0!==a&&($(this).parents(".elementor-widget-tbay-banner-close").slideUp("slow"),Cookies.set("banner_remove_"+a,"hidden",{expires:.1,path:"/"}),e.preventDefault())})}}class Search{constructor(){this._init()}_init(){this._urnaSearchMobile(),this._searchToTop(),this._searchCanvasForm(),this._searchCanvasFormV3(),$(".button-show-search").click(()=>$(".tbay-search-form").addClass("active")),$(".button-hidden-search").click(()=>$(".tbay-search-form").removeClass("active"))}_urnaSearchMobile(){$(".topbar-mobile .search-popup, .search-device-mobile").each(function(){$(this).find(".show-search").click(e=>{$(this).find(".tbay-search-form").slideToggle(500);$(this).find(".tbay-search-form .input-group .tbay-search").focus();$(e.currentTarget).toggleClass("active")})}),$(window).on("click.Bst,click touchstart tap",function(e){var a=$(".footer-device-mobile > div i, .topbar-device-mobile .search-device-mobile i ,.search-device-mobile .tbay-search-form form");$(".search-device-mobile .show-search").hasClass("active")&&(0!=a.has(e.target).length||a.is(e.target)||($(".search-device-mobile .tbay-search-form").slideUp(500),$(".search-device-mobile .show-search").removeClass("active"),$("body").removeClass("mobile-search-active")))}),$(".topbar-mobile .dropdown-menu").click(function(e){e.stopPropagation()})}_searchToTop(){$(".search-totop-wrapper .btn-search-totop").click(function(){$(".search-totop-content").toggleClass("active"),$(this).toggleClass("active")});var e=$(".search-totop-wrapper .btn-search-totop, .search-totop-content");$(window).on("click.Bst",function(a){0!=e.has(a.target).length||e.is(a.target)||($(".search-totop-wrapper .btn-search-totop").removeClass("active"),$(".search-totop-content").removeClass("active"))})}_searchCanvasForm(){let e=$("#tbay-search-form-canvas");e.find("button.search-open").click(function(){$(event.target).parents("#tbay-search-form-canvas").toggleClass("open"),$("body").toggleClass("active-search-canvas")});let a=$(window),t=$("#tbay-search-form-canvas .search-open, #tbay-search-form-canvas .sidebar-content");a.on("click.Bst",function(a){e.hasClass("open")&&(0!=t.has(a.target).length||t.is(a.target)||(e.removeClass("open"),$("body").removeClass("active-search-canvas")))}),e.find("button.btn-search-close").click(function(){e.hasClass("open")&&(e.removeClass("open"),$("body").removeClass("active-search-canvas"))})}_searchCanvasFormV3(){let e=$("#tbay-search-form-canvas-v3");e.find("button.search-open").click(function(){$(event.target).parents("#tbay-search-form-canvas-v3").toggleClass("open"),$("body").toggleClass("active-search-canvas")});let a=$(window),t=$("#tbay-search-form-canvas-v3 .search-open, #tbay-search-form-canvas-v3 .sidebar-content");a.on("click.Bst",function(a){e.hasClass("open")&&(0!=t.has(a.target).length||t.is(a.target)||(e.removeClass("open"),$("body").removeClass("active-search-canvas")))}),e.find("button.btn-search-close").click(function(){e.hasClass("open")&&(e.removeClass("open"),$("body").removeClass("active-search-canvas"))})}}class TreeView{constructor(){this._tbayTreeViewMenu()}_tbayTreeViewMenu(){void 0!==$.fn.treeview&&void 0!==$(".tbay-treeview")&&0!==$(".tbay-treeview").length&&$(".tbay-treeview").each(function(){$(this).find(".hitarea").length>0||$(this).find("> ul").treeview({animated:400,collapsed:!0,unique:!0,persist:"location"})})}}class Section{constructor(){this._tbayMegaMenu(),this._tbayRecentlyView()}_tbayMegaMenu(){let e=$(".elementor-widget-tbay-nav-menu > .elementor-widget-container > .tbay-addon-nav-menu");0!==e.length&&e.each(function(){void 0!==$(this).attr("data-wrapper")&&"horizontal"===$(this).data("wrapper").layout&&($(this).closest(".elementor-top-column").hasClass("tbay-column-static")||$(this).closest(".elementor-top-column").addClass("tbay-column-static"),$(this).closest("section").hasClass("tbay-section-static")||$(this).closest("section").addClass("tbay-section-static"))})}_tbayRecentlyView(){let e=$(".tbay-addon-header-recently-viewed");0!==e.length&&e.each(function(){$(this).closest(".elementor-top-column").hasClass("tbay-column-static")||$(this).closest(".elementor-top-column").addClass("tbay-column-static"),$(this).closest(".elementor-top-column").hasClass("tbay-column-recentlyviewed")||$(this).closest(".elementor-top-column").addClass("tbay-column-recentlyviewed"),$(this).closest("section").hasClass("tbay-section-recentlyviewed")||$(this).closest("section").addClass("tbay-section-recentlyviewed"),$(this).closest("section").hasClass("tbay-section-static")||$(this).closest("section").addClass("tbay-section-static")})}}class Preload{constructor(){this._init()}_init(){if($.fn.jpreLoader){var e=$(".js-preloader");e.jpreLoader({},function(){e.addClass("preloader-done"),$("body").trigger("preloader-done"),$(window).trigger("resize")})}$(".tbay-page-loader").delay(100).fadeOut(400,function(){$("body").removeClass("tbay-body-loading"),$(this).remove()}),$(document.body).hasClass("tbay-body-loader")&&setTimeout(function(){$(document.body).removeClass("tbay-body-loader"),$(".tbay-page-loader").fadeOut(250)},300)}}class Tabs{constructor(){$("ul.nav-tabs li a").on("show.bs.tab",e=>{$(document.body).trigger("urna_lazyload_image")}),$(".wc-tabs li a").on("click",e=>{$(document.body).trigger("urna_lazyload_image")})}}class MenuDropdownsAJAX{constructor(){"undefined"!=typeof urna_settings&&this._initmenuDropdownsAJAX()}_initmenuDropdownsAJAX(){var e=this;$("body").on("mousemove",function(){$(".menu").has(".dropdown-load-ajax").each(function(){var a=$(this);a.hasClass("dropdowns-loading")||a.hasClass("dropdowns-loaded")||e.isNear(a,50,event)&&e.loadDropdowns(a)})})}loadDropdowns(e){var a=this;e.addClass("dropdowns-loading");var t="",n="",i="";"tbay-mobile-menu-navbar"===e.closest("nav").attr("id")?($("#main-mobile-menu-mmenu-wrapper").length>0&&(i+="_"+$("#main-mobile-menu-mmenu-wrapper").data("id")),$("#main-mobile-second-mmenu-wrapper").length>0&&(i+="_"+$("#main-mobile-second-mmenu-wrapper").data("id")),t=urna_settings.storage_key+"_megamenu_mobile"+i):t=urna_settings.storage_key+"_megamenu_"+e.closest("nav").find("ul").data("id"),n=localStorage.getItem(t);var o=!1,s=[];e.find(".dropdown-load-ajax").each(function(){s.push($(this).find(".dropdown-html-placeholder").data("id"))});try{o=JSON.parse(n)}catch(e){console.log("cant parse Json",e)}o?(a.renderResults(o,e),"tbay-mobile-menu-navbar"!==e.attr("id")&&e.removeClass("dropdowns-loading").addClass("dropdowns-loaded")):$.ajax({url:urna_settings.ajaxurl,data:{action:"urna_load_html_dropdowns",ids:s},dataType:"json",method:"POST",success:function(n){"success"===n.status?(a.renderResults(n.data,e),localStorage.setItem(t,JSON.stringify(n.data))):console.log("loading html dropdowns returns wrong data - ",n.message)},error:function(){console.log("loading html dropdowns ajax error")}})}renderResults(e,a){var t=this;Object.keys(e).forEach(function(n){t.removeDuplicatedStylesFromHTML(e[n],function(e){let t=e;const i='<li[^>]*><a[^>]*href=["]'+window.location.href+'["]>.*?</a></li>';let o=e.match(i);if(null!==o){let e=o[0],a=e.match(/(?:class)=(?:["']\W+\s*(?:\w+)\()?["']([^'"]+)['"]/g)[0].split('"')[1],n=a+" active",i=e.replace(a,n);t=t.replace(e,i)}a.find('[data-id="'+n+'"]').replaceWith(t),"tbay-mobile-menu-navbar"!==a.attr("id")&&(a.addClass("dropdowns-loaded"),setTimeout(function(){a.removeClass("dropdowns-loading")},1e3))})})}isNear(e,a,t){var n=e.offset().left-a,i=e.offset().top-a,o=n+e.width()+2*a,s=i+e.height()+2*a,r=t.pageX,c=t.pageY;return r>n&&r<o&&c>i&&c<s}removeDuplicatedStylesFromHTML(e,a){if(urna_settings.combined_css)return void a(e);{const t=/<style>.*?<\/style>/gm;let n=e.replace(t,"");return void a(n)}}}class MenuClickAJAX{constructor(){"undefined"!=typeof urna_settings&&this._initmenuClickAJAX()}_initmenuClickAJAX(){$(".element-menu-ajax.ajax-active").each(function(){$(this).find(".menu-click").off("click").on("click",function(e){e.preventDefault();var a=$(this);if(a.closest(".element-menu-ajax").hasClass("ajax-active")){var t=a.closest(".tbay-element"),n=t.data("wrapper").type_menu,i=t.data("wrapper").layout,o=t.data("wrapper").header_type;if("toggle"===n)s=t.find(".category-inside-content > nav");else var s=t.find(".menu-canvas-content > nav");var r=s.data("id"),c=urna_settings.storage_key+"_"+r+"_"+i,l=!1,d=localStorage.getItem(c);try{l=JSON.parse(d)}catch(e){console.log("cant parse Json",e)}l?(s.html(l),t.removeClass("load-ajax"),a.closest(".element-menu-ajax").removeClass("ajax-active"),"treeview"===i?$(document.body).trigger("tbay_load_html_click_treeview"):$(document.body).trigger("tbay_load_html_click")):$.ajax({url:urna_settings.ajaxurl,data:{action:"urna_load_html_click",slug:r,type_menu:n,layout:i,header_type:o},dataType:"json",method:"POST",beforeSend:function(e){t.addClass("load-ajax")},success:function(e){"success"===e.status?(s.html(e.data),localStorage.setItem(c,JSON.stringify(e.data)),"treeview"===i?$(document.body).trigger("tbay_load_html_click_treeview"):$(document.body).trigger("tbay_load_html_click")):console.log("loading html dropdowns returns wrong data - ",e.message),t.removeClass("load-ajax"),a.closest(".element-menu-ajax").removeClass("ajax-active")},error:function(){console.log("loading html dropdowns ajax error")}})}})})}}class MenuCanvasDefaultClickAJAX{constructor(){"undefined"!=typeof urna_settings&&this._initmenuCanvasDefaultClickAJAX()}_initmenuCanvasDefaultClickAJAX(){$(".menu-canvas-click").off("click").on("click",function(e){e.preventDefault();var a=$(this);if(a.hasClass("ajax-active")){var t=$("#"+a.data("id")),n=t.data("wrapper").layout,i=t.find(".tbay-offcanvas-body > nav"),o=i.data("id"),s=urna_settings.storage_key+"_"+o+"_"+n,r=!1,c=localStorage.getItem(s);try{r=JSON.parse(c)}catch(e){console.log("cant parse Json",e)}r?(i.html(r),t.removeClass("load-ajax"),a.removeClass("ajax-active"),$(document.body).trigger("tbay_load_html_click")):$.ajax({url:urna_settings.ajaxurl,data:{action:"urna_load_html_canvas_click",slug:o,layout:n},dataType:"json",method:"POST",beforeSend:function(e){t.addClass("load-ajax")},success:function(e){"success"===e.status?(i.html(e.data),localStorage.setItem(s,JSON.stringify(e.data)),$(document.body).trigger("tbay_load_html_click")):console.log("loading html dropdowns returns wrong data - ",e.message),t.removeClass("load-ajax"),a.removeClass("ajax-active")},error:function(){console.log("loading html dropdowns ajax error")}})}})}}!function(e,a){var t=function(e,a,t){var n;return function(){function i(){t||e.apply(o,s),n=null}var o=this,s=arguments;n?clearTimeout(n):t&&e.apply(o,s),n=setTimeout(i,a||100)}};jQuery.fn[a]=function(e){return e?this.bind("resize",t(e)):this.trigger(a)}}(jQuery,"smartresize"),window.$=window.jQuery,$(document).ready(()=>{new MenuDropdownsAJAX,new MenuClickAJAX,new MenuCanvasDefaultClickAJAX,new StickyHeader,new Tabs,new StickyHeader,new AccountMenu,new BackToTop,new CanvasMenu,new FuncCommon,new NewsLetter,new Banner,new Preload,new Search,new TreeView,new Section;"undefined"!=typeof urna_settings&&(urna_settings.mobile||$(window).width()<1025)&&new Mobile}),setTimeout(function(){jQuery(document.body).on("tbay_load_html_click_treeview",()=>{new TreeView})},2e3),$(window).smartresize(function(){if(jQuery(window).width()<1025)try{new Mobile}catch(e){}});var CustomTreeViewMenu=function(e,a){(new TreeView)._tbayTreeViewMenu()};jQuery(window).on("elementor/frontend/init",function(){"undefined"!=typeof urna_settings&&jQuery.isArray(urna_settings.elements_ready.treeview)&&$.each(urna_settings.elements_ready.treeview,function(e,a){elementorFrontend.hooks.addAction("frontend/element_ready/tbay-"+a+".default",CustomTreeViewMenu)})});