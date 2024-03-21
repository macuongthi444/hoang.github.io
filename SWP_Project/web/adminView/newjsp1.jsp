<%-- 
    Document   : newjsp1
    Created on : 13-03-2024, 23:04:53
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-navbar-fixed layout-compact layout-menu-fixed layout-menu-collapsed" dir="ltr" data-theme="theme-default" data-assets-path="/SWP_Project/assets/" data-template="vertical-menu-template">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

        <title>Email - Apps | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>


        <meta name="description" content="Most Powerful &amp; Comprehensive Bootstrap 5 HTML Admin Dashboard Template built for developers!">
        <meta name="keywords" content="dashboard, bootstrap 5 dashboard, bootstrap 5 design, bootstrap 5">
        <!-- Canonical SEO -->
        <link rel="canonical" href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/">


        <!-- ? PROD Only: Google Tag Manager (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
        <script type="text/javascript" async="" src="https://static.hotjar.com/c/hotjar-3067524.js?sv=7">
        </script>
        <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5DDHKGP">
        </script>
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-5DDHKGP');</script>
        <!-- End Google Tag Manager -->

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/SWP_Project/assets/img/favicon/favicon.ico">

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
        <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

        <!-- Icons -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/fonts/boxicons.css">
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/fonts/fontawesome.css">
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/fonts/flag-icons.css">

        <!-- Core CSS -->


        <link rel="stylesheet" href="/SWP_Project/assets/css/demo.css">

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/typeahead-js/typeahead.css"> 
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/quill/katex.css">
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/quill/editor.css">
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/select2/select2.css">

        <!-- Page CSS -->

        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/pages/app-email.css">

        <!-- Helpers -->
        <script src="/SWP_Project/assets/vendor/js/helpers.js">
        </script>
        <style type="text/css">
            .layout-menu-fixed .layout-navbar-full .layout-menu,
            .layout-menu-fixed-offcanvas .layout-navbar-full .layout-menu {
                top: 62px !important;
            }
            .layout-page {
                padding-top: 62px !important;
            }
            .content-wrapper {
                padding-bottom: 38.95000076293945px !important;
            }</style>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
        <script src="/SWP_Project/assets/vendor/js/template-customizer.js">
        </script>
        <style>#template-customizer{
                font-family:"Open Sans",BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol" !important;
                font-size:inherit !important;
                position:fixed;
                top:0;
                right:0;
                height:100%;
                z-index:99999999;
                display:-webkit-box;
                display:-ms-flexbox;
                display:flex;
                -webkit-box-orient:vertical;
                -webkit-box-direction:normal;
                -ms-flex-direction:column;
                flex-direction:column;
                width:400px;
                background:#fff;
                -webkit-box-shadow:0 0 20px 0 rgba(0,0,0,.2);
                box-shadow:0 0 20px 0 rgba(0,0,0,.2);
                -webkit-transition:all .2s ease-in;
                -o-transition:all .2s ease-in;
                transition:all .2s ease-in;
                -webkit-transform:translateX(420px);
                -ms-transform:translateX(420px);
                transform:translateX(420px)
            }
            #template-customizer h5{
                position:relative;
                font-size:11px
            }
            #template-customizer>h5{
                flex:0 0 auto
            }
            #template-customizer .disabled{
                color:#d1d2d3 !important
            }
            #template-customizer .form-label{
                font-size:.9375rem
            }
            #template-customizer .form-check-label{
                font-size:.8125rem
            }
            #template-customizer .template-customizer-t-panel_header{
                font-size:1.125rem
            }
            #template-customizer.template-customizer-open{
                -webkit-transition-delay:.1s;
                -o-transition-delay:.1s;
                transition-delay:.1s;
                -webkit-transform:none !important;
                -ms-transform:none !important;
                transform:none !important
            }
            #template-customizer.template-customizer-open .custom-option.checked{
                color:var(--bs-primary);
                border-width:2px
            }
            #template-customizer.template-customizer-open .custom-option.checked .custom-option-content{
                border:none
            }
            #template-customizer.template-customizer-open .custom-option .custom-option-content{
                border:1px solid rgba(0,0,0,0)
            }
            #template-customizer .template-customizer-header a:hover{
                color:inherit !important
            }
            #template-customizer .template-customizer-open-btn{
                position:absolute;
                top:180px;
                left:0;
                z-index:-1;
                display:block;
                width:42px;
                height:42px;
                border-top-left-radius:15%;
                border-bottom-left-radius:15%;
                background:var(--bs-primary);
                color:#fff !important;
                text-align:center;
                font-size:18px !important;
                line-height:42px;
                opacity:1;
                -webkit-transition:all .1s linear .2s;
                -o-transition:all .1s linear .2s;
                transition:all .1s linear .2s;
                -webkit-transform:translateX(-62px);
                -ms-transform:translateX(-62px);
                transform:translateX(-62px)
            }
            @media(max-width: 991.98px){
                #template-customizer .template-customizer-open-btn{
                    top:145px
                }
            }
            .dark-style #template-customizer .template-customizer-open-btn{
                background:var(--bs-primary)
            }
            #template-customizer .template-customizer-open-btn::before{
                content:"";
                width:22px;
                height:22px;
                display:block;
                background-size:100% 100%;
                position:absolute;
                background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABClJREFUaEPtmY1RFEEQhbsjUCIQIhAiUCNQIxAiECIQIxAiECIAIpAMhAiECIQI2vquZqnZvp6fhb3SK5mqq6Ju92b69bzXf6is+dI1t1+eAfztG5z1BsxsU0S+ici2iPB3vm5E5EpEDlSVv2dZswFIxv8UkZcNy+5EZGcuEHMCOBeR951uvVDVD53vVl+bE8DvDu8Pxtyo6ta/BsByg1R15Bwzqz5/LJgn34CZwfnPInI4BUB6/1hV0cSjVxcAM4PbcBZjL0XklIPN7Is3fLCkdQPpPYw/VNXj5IhPIvJWRIhSl6p60ULWBGBm30Vk123EwRxCuIzWkkjNrCZywith10ewE1Xdq4GoAjCz/RTXW44Ynt+LyBEfT43kYfbj86J3w5Q32DNcRQDpwF+dkQXDMey8xem0L3TEqB4g3PZWad8agBMRgZPeu96D1/C2Zbh3X0p80Op1xxloztN48bMQQNoc7+eLEuAoPSPiIDY4Ooo+E6ixeNXM+D3GERz2U3CIqMstLJUgJQDe+7eq6mub0NYEkLAKwEHkiBQDCZtddZCZ8d6r7JDwFkoARklHRPZUFVDVZWbwGuNrC4EfdOzFrRABh3Wnqhv+d70AEBLGFROPmeHlnM81G69UdSd6IUuM0GgUVn1uqWmg5EmMfBeEyB7Pe3txBkY+rGT8j0J+WXq/BgDkUCaqLgEAnwcRog0veMIqFAAwCy2wnw+bI2GaGboBgF9k5N0o0rUSGUb4eO0BeO9j/GYhkSHMHMTIqwGARX6p6a+nlPBl8kZuXMD9j6pKfF9aZuaFOdJCEL5D4eYb9wCYVCanrBmGyii/tIq+SLj/HQBCaM5bLzwfPqdQ6FpVHyra4IbuVbXaY7dETC2ESPNNWiIOi69CcdgSMXsh4tNSUiklMgwmC0aNd08Y5WAES6HHehM4gu97wyhBgWpgqXsrASglprDy7CwhehMZOSbK6JMSma+Fio1KltCmlBIj7gfZOGx8ppQSXrhzFnOhJ/31BDkjFHRvOd09x0mRBA9SFgxUgHpQg0q0t5ymPMlL+EnldFTfDA0NAmf+OTQ0X0sRouf7NNkYGhrOYNrxtIaGg83MNzVDSe3LXLhP7O/yrCsCz1zlWTpjWkuZAOBpX3yVnLqI1yLCOKU6qMrmP7SSrUEw54XF4WBIK5FxCMOr3lVsfGqNSmPzBXUnJTIX1jyVBq9wO6UObOpgC5GjO98vFKnTdQMZXxEsWZlDiCZMIxAbNxQOqlpVZtobejBaZNoBnRDzMFpkxvTQOD36BlrcySZuI6p1ACB6LU3wWuf5581+oHfD1vi89bz3nFUC8Nm7ZlP3nKkFbM4bWPt/MSFwklprYItwt6cmvpWJ2IVcQBCz6bLysSCv3SaANCiTsnaNRrNRqMXVVT1/BrAqz/buu/Y38Ad3KC5PARej0QAAAABJRU5ErkJggg==);
                margin:10px
            }
            .customizer-hide #template-customizer .template-customizer-open-btn{
                display:none
            }
            [dir=rtl] #template-customizer .template-customizer-open-btn{
                border-radius:0;
                border-top-right-radius:15%;
                border-bottom-right-radius:15%
            }
            [dir=rtl] #template-customizer .template-customizer-open-btn::before{
                margin-left:-2px
            }
            #template-customizer.template-customizer-open .template-customizer-open-btn{
                opacity:0;
                -webkit-transition-delay:0s;
                -o-transition-delay:0s;
                transition-delay:0s;
                -webkit-transform:none !important;
                -ms-transform:none !important;
                transform:none !important
            }
            #template-customizer .template-customizer-inner{
                position:relative;
                overflow:auto;
                -webkit-box-flex:0;
                -ms-flex:0 1 auto;
                flex:0 1 auto;
                opacity:1;
                -webkit-transition:opacity .2s;
                -o-transition:opacity .2s;
                transition:opacity .2s
            }
            #template-customizer .template-customizer-inner>div:first-child>hr:first-of-type{
                display:none !important
            }
            #template-customizer .template-customizer-inner>div:first-child>h5:first-of-type{
                padding-top:0 !important
            }
            #template-customizer .template-customizer-themes-inner{
                position:relative;
                opacity:1;
                -webkit-transition:opacity .2s;
                -o-transition:opacity .2s;
                transition:opacity .2s
            }
            #template-customizer .template-customizer-theme-item{
                display:-webkit-box;
                display:-ms-flexbox;
                display:flex;
                -webkit-box-align:center;
                align-items:center;
                -ms-flex-align:center;
                -webkit-box-flex:1;
                -ms-flex:1 1 100%;
                flex:1 1 100%;
                -webkit-box-pack:justify;
                -ms-flex-pack:justify;
                justify-content:space-between;
                margin-bottom:10px;
                padding:0 24px;
                width:100%;
                cursor:pointer
            }
            #template-customizer .template-customizer-theme-item input{
                position:absolute;
                z-index:-1;
                opacity:0
            }
            #template-customizer .template-customizer-theme-item input~span{
                opacity:.25;
                -webkit-transition:all .2s;
                -o-transition:all .2s;
                transition:all .2s
            }
            #template-customizer .template-customizer-theme-item .template-customizer-theme-checkmark{
                display:inline-block;
                width:6px;
                height:12px;
                border-right:1px solid;
                border-bottom:1px solid;
                opacity:0;
                -webkit-transition:all .2s;
                -o-transition:all .2s;
                transition:all .2s;
                -webkit-transform:rotate(45deg);
                -ms-transform:rotate(45deg);
                transform:rotate(45deg)
            }
            [dir=rtl] #template-customizer .template-customizer-theme-item .template-customizer-theme-checkmark{
                border-right:none;
                border-left:1px solid;
                -webkit-transform:rotate(-45deg);
                -ms-transform:rotate(-45deg);
                transform:rotate(-45deg)
            }
            #template-customizer .template-customizer-theme-item input:checked:not([disabled])~span,#template-customizer .template-customizer-theme-item:hover input:not([disabled])~span{
                opacity:1
            }
            #template-customizer .template-customizer-theme-item input:checked:not([disabled])~span .template-customizer-theme-checkmark{
                opacity:1
            }
            #template-customizer .template-customizer-theme-colors span{
                display:block;
                margin:0 1px;
                width:10px;
                height:10px;
                border-radius:50%;
                -webkit-box-shadow:0 0 0 1px rgba(0,0,0,.1) inset;
                box-shadow:0 0 0 1px rgba(0,0,0,.1) inset
            }
            #template-customizer.template-customizer-loading .template-customizer-inner,#template-customizer.template-customizer-loading-theme .template-customizer-themes-inner{
                opacity:.2
            }
            #template-customizer.template-customizer-loading .template-customizer-inner::after,#template-customizer.template-customizer-loading-theme .template-customizer-themes-inner::after{
                content:"";
                position:absolute;
                top:0;
                right:0;
                bottom:0;
                left:0;
                z-index:999;
                display:block
            }
            @media(max-width: 1200px){
                #template-customizer{
                    display:none;
                    visibility:hidden !important
                }
            }
            @media(max-width: 575.98px){
                #template-customizer{
                    width:300px;
                    -webkit-transform:translateX(320px);
                    -ms-transform:translateX(320px);
                    transform:translateX(320px)
                }
            }
            .layout-menu-100vh #template-customizer{
                height:100vh
            }
            [dir=rtl] #template-customizer{
                right:auto;
                left:0;
                -webkit-transform:translateX(-420px);
                -ms-transform:translateX(-420px);
                transform:translateX(-420px)
            }
            [dir=rtl] #template-customizer .template-customizer-open-btn{
                right:0;
                left:auto;
                -webkit-transform:translateX(62px);
                -ms-transform:translateX(62px);
                transform:translateX(62px)
            }
            [dir=rtl] #template-customizer .template-customizer-close-btn{
                right:auto;
                left:0
            }
            #template-customizer .template-customizer-layouts-options[disabled]{
                opacity:.5;
                pointer-events:none
            }
            [dir=rtl] .template-customizer-t-style_switch_light{
                padding-right:0 !important
            }</style>
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="/SWP_Project/assets/js/config.js">
        </script>
        <link rel="stylesheet" type="text/css" href="/SWP_Project/assets/vendor/css/rtl/core.css" class="template-customizer-core-css">
        <link rel="stylesheet" type="text/css" href="/SWP_Project/assets/vendor/css/rtl/theme-semi-dark.css" class="template-customizer-theme-css">

        <script type="text/javascript" src="https://a.omappapi.com/app/js/api.min.js" async="" data-user="252882" data-account="269977">
        </script>
        <link rel="stylesheet" href="https://a.omappapi.com/app/js/api.min.css" id="omapi-css" media="all">
        <script async="" src="https://script.hotjar.com/modules.76600994a7e845923464.js" charset="utf-8">
        </script>
    </head>

    <body class="" style="">


        <!-- ?PROD Only: Google Tag Manager (noscript) (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
        <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DDHKGP" height="0" width="0" style="display: none; visibility: hidden">
        </iframe>
        </noscript>
        <!-- End Google Tag Manager (noscript) -->

        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar  ">
            <div class="layout-container">







                <!-- Menu -->

                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">


                    <div class="app-brand demo ">
                        <a href="index.html" class="app-brand-link">
                            <span class="app-brand-logo demo">

                                <svg width="25" viewBox="0 0 25 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <defs>
                                <path d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z" id="path-1">
                                </path>
                                <path d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z" id="path-3">
                                </path>
                                <path d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z" id="path-4">
                                </path>
                                <path d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z" id="path-5">
                                </path>
                                </defs>
                                <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                                <g id="Icon" transform="translate(27.000000, 15.000000)">
                                <g id="Mask" transform="translate(0.000000, 8.000000)">
                                <mask id="mask-2" fill="white">
                                    <use xlink:href="#path-1">
                                    </use>
                                </mask>
                                <use fill="#696cff" xlink:href="#path-1">
                                </use>
                                <g id="Path-3" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-3">
                                </use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3">
                                </use>
                                </g>
                                <g id="Path-4" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-4">
                                </use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4">
                                </use>
                                </g>
                                </g>
                                <g id="Triangle" transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                                <use fill="#696cff" xlink:href="#path-5">
                                </use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5">
                                </use>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>

                            </span>
                            <span class="app-brand-text demo menu-text fw-bold ms-2">Sneat</span>
                        </a>

                        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
                            <i class="bx bx-chevron-left bx-sm align-middle">
                            </i>
                        </a>
                    </div>

                    <div class="menu-inner-shadow">
                    </div>



                    <ul class="menu-inner py-1 overflow-auto">
                        <!-- Dashboards -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-home-circle">
                                </i>
                                <div class="text-truncate" data-i18n="Dashboards">Dashboards</div>
                                <span class="badge badge-center rounded-pill bg-danger ms-auto">5</span>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="dashboards-analytics.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="dashboards-crm.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="CRM">CRM</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-logistics-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Logistics">Logistics</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-academy-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Academy">Academy</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Layouts -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-layout">
                                </i>
                                <div class="text-truncate" data-i18n="Layouts">Layouts</div>
                            </a>

                            <ul class="menu-sub">

                                <li class="menu-item">
                                    <a href="layouts-collapsed-menu.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Collapsed menu">Collapsed menu</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-content-navbar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Content navbar">Content navbar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-content-navbar-with-sidebar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Content nav + Sidebar">Content nav + Sidebar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="../horizontal-menu-template" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Horizontal">Horizontal</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-without-menu.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Without menu">Without menu</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-without-navbar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Without navbar">Without navbar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-fluid.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Fluid">Fluid</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-container.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Container">Container</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="layouts-blank.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Blank">Blank</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Front Pages -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-store">
                                </i>
                                <div class="text-truncate" data-i18n="Front Pages">Front Pages</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="../front-pages/landing-page.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Landing">Landing</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="../front-pages/pricing-page.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="../front-pages/payment-page.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Payment">Payment</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="../front-pages/checkout-page.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="../front-pages/help-center-landing.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Help Center">Help Center</div>
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <!-- Apps & Pages -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text" data-i18n="Apps &amp; Pages">Apps &amp; Pages</span>
                        </li>
                        <li class="menu-item active">
                            <a href="app-email.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-envelope">
                                </i>
                                <div class="text-truncate" data-i18n="Email">Email</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-chat.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-chat">
                                </i>
                                <div class="text-truncate" data-i18n="Chat">Chat</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-calendar.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-calendar">
                                </i>
                                <div class="text-truncate" data-i18n="Calendar">Calendar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-kanban.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-grid">
                                </i>
                                <div class="text-truncate" data-i18n="Kanban">Kanban</div>
                            </a>
                        </li>
                        <!-- e-commerce-app menu start -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-cart-alt">
                                </i>
                                <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-ecommerce-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Products">Products</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-ecommerce-product-list.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Product List">Product List</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-product-add.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Add Product">Add Product</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-category-list.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Category List">Category List</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Order">Order</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-ecommerce-order-list.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Order List">Order List</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-order-details.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Order Details">Order Details</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Customer">Customer</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-ecommerce-customer-all.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="All Customers">All Customers</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                                <div class="text-truncate" data-i18n="Customer Details">Customer Details</div>
                                            </a>
                                            <ul class="menu-sub">
                                                <li class="menu-item">
                                                    <a href="app-ecommerce-customer-details-overview.html" class="menu-link">
                                                        <div class="text-truncate" data-i18n="Overview">Overview</div>
                                                    </a>
                                                </li>
                                                <li class="menu-item">
                                                    <a href="app-ecommerce-customer-details-security.html" class="menu-link">
                                                        <div class="text-truncate" data-i18n="Security">Security</div>
                                                    </a>
                                                </li>
                                                <li class="menu-item">
                                                    <a href="app-ecommerce-customer-details-billing.html" class="menu-link">
                                                        <div class="text-truncate" data-i18n="Address &amp; Billing">Address &amp; Billing</div>
                                                    </a>
                                                </li>
                                                <li class="menu-item">
                                                    <a href="app-ecommerce-customer-details-notifications.html" class="menu-link">
                                                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                                    </a>
                                                </li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-manage-reviews.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Manage Reviews">Manage Reviews</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-referral.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Referrals">Referrals</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Settings">Settings</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-detail.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Store Details">Store Details</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-payments.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Payments">Payments</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-checkout.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-shipping.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Shipping &amp; Delivery">Shipping &amp; Delivery</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-locations.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Locations">Locations</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-settings-notifications.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!-- e-commerce-app menu end -->
                        <!-- Academy menu start -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-book-open">
                                </i>
                                <div class="text-truncate" data-i18n="Academy">Academy</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-academy-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-academy-course.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="My Course">My Course</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-academy-course-details.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Course Details">Course Details</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Academy menu end -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-car">
                                </i>
                                <div class="text-truncate" data-i18n="Logistics">Logistics</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-logistics-dashboard.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-logistics-fleet.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Fleet">Fleet</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-food-menu">
                                </i>
                                <div class="text-truncate" data-i18n="Invoice">Invoice</div>
                                <span class="badge badge-center rounded-pill bg-success ms-auto">4</span>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-invoice-list.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="List">List</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-invoice-preview.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Preview">Preview</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-invoice-edit.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Edit">Edit</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-invoice-add.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Add">Add</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-user">
                                </i>
                                <div class="text-truncate" data-i18n="Users">Users</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-user-list.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="List">List</div>
                                    </a>
                                </li>

                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="View">View</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-user-view-account.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Account">Account</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-user-view-security.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Security">Security</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-user-view-billing.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Billing &amp; Plans">Billing &amp; Plans</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-user-view-notifications.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-user-view-connections.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Connections">Connections</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-check-shield">
                                </i>
                                <div class="text-truncate" data-i18n="Roles &amp; Permissions">Roles &amp; Permissions</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-access-roles.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Roles">Roles</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-access-permission.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Permission">Permission</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-dock-top">
                                </i>
                                <div class="text-truncate" data-i18n="Pages">Pages</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="User Profile">User Profile</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="pages-profile-user.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Profile">Profile</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-profile-teams.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Teams">Teams</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-profile-projects.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Projects">Projects</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-profile-connections.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Connections">Connections</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Account Settings">Account Settings</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="pages-account-settings-account.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Account">Account</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-account-settings-security.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Security">Security</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-account-settings-billing.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Billing &amp; Plans">Billing &amp; Plans</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-account-settings-notifications.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-account-settings-connections.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Connections">Connections</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-faq.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="FAQ">FAQ</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-pricing.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Misc">Misc</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="pages-misc-error.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Error">Error</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-misc-under-maintenance.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Under Maintenance">Under Maintenance</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-misc-comingsoon.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Coming Soon">Coming Soon</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="pages-misc-not-authorized.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Not Authorized">Not Authorized</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-lock-open-alt">
                                </i>
                                <div class="text-truncate" data-i18n="Authentications">Authentications</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Login">Login</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-login-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-login-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Register">Register</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-register-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-register-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-register-multisteps.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Multi-steps">Multi-steps</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Verify Email">Verify Email</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-verify-email-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-verify-email-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Reset Password">Reset Password</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-reset-password-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-reset-password-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Forgot Password">Forgot Password</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-forgot-password-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Two Steps">Two Steps</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="auth-two-steps-basic.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="auth-two-steps-cover.html" class="menu-link" target="_blank">
                                                <div class="text-truncate" data-i18n="Cover">Cover</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-spreadsheet">
                                </i>
                                <div class="text-truncate" data-i18n="Wizard Examples">Wizard Examples</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="wizard-ex-checkout.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="wizard-ex-property-listing.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Property Listing">Property Listing</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="wizard-ex-create-deal.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Create Deal">Create Deal</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="modal-examples.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-window-open">
                                </i>
                                <div class="text-truncate" data-i18n="Modal Examples">Modal Examples</div>
                            </a>
                        </li>

                        <!-- Components -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text" data-i18n="Components">Components</span>
                        </li>
                        <!-- Cards -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-collection">
                                </i>
                                <div class="text-truncate" data-i18n="Cards">Cards</div>
                                <span class="badge badge-center rounded-pill bg-danger ms-auto">6</span>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="cards-basic.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="cards-advance.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Advance">Advance</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="cards-statistics.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Statistics">Statistics</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="cards-analytics.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="cards-gamifications.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Gamifications">Gamifications</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="cards-actions.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Actions">Actions</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- User interface -->
                        <li class="menu-item">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-box">
                                </i>
                                <div class="text-truncate" data-i18n="User interface">User interface</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="ui-accordion.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Accordion">Accordion</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-alerts.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Alerts">Alerts</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-badges.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Badges">Badges</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-buttons.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Buttons">Buttons</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-carousel.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Carousel">Carousel</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-collapse.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Collapse">Collapse</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-dropdowns.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Dropdowns">Dropdowns</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-footer.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Footer">Footer</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-list-groups.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="List Groups">List Groups</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-modals.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Modals">Modals</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-navbar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Navbar">Navbar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-offcanvas.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Offcanvas">Offcanvas</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-pagination-breadcrumbs.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Pagination &amp; Breadcrumbs">Pagination &amp; Breadcrumbs</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-progress.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Progress">Progress</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-spinners.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Spinners">Spinners</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-tabs-pills.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Tabs &amp; Pills">Tabs &amp; Pills</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-toasts.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Toasts">Toasts</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-tooltips-popovers.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Tooltips &amp; Popovers">Tooltips &amp; Popovers</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="ui-typography.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Typography">Typography</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Extended components -->
                        <li class="menu-item">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-copy">
                                </i>
                                <div class="text-truncate" data-i18n="Extended UI">Extended UI</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="extended-ui-avatar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Avatar">Avatar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-blockui.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="BlockUI">BlockUI</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-drag-and-drop.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Drag &amp; Drop">Drag &amp; Drop</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-media-player.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Media Player">Media Player</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-perfect-scrollbar.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Perfect Scrollbar">Perfect Scrollbar</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-star-ratings.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Star Ratings">Star Ratings</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-sweetalert2.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="SweetAlert2">SweetAlert2</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-text-divider.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Text Divider">Text Divider</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Timeline">Timeline</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="extended-ui-timeline-basic.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="extended-ui-timeline-fullscreen.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Fullscreen">Fullscreen</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-tour.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Tour">Tour</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-treeview.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Treeview">Treeview</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-misc.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Miscellaneous">Miscellaneous</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Icons -->
                        <li class="menu-item">
                            <a href="javascript:void(0)" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-crown">
                                </i>
                                <div class="text-truncate" data-i18n="Icons">Icons</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="icons-boxicons.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Boxicons">Boxicons</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="icons-font-awesome.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Fontawesome">Fontawesome</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Forms & Tables -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text" data-i18n="Forms &amp; Tables">Forms &amp; Tables</span>
                        </li>
                        <!-- Forms -->
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-detail">
                                </i>
                                <div class="text-truncate" data-i18n="Form Elements">Form Elements</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="forms-basic-inputs.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Basic Inputs">Basic Inputs</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-input-groups.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Input groups">Input groups</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-custom-options.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Custom Options">Custom Options</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-editors.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Editors">Editors</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-file-upload.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="File Upload">File Upload</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-pickers.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Pickers">Pickers</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-selects.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Select &amp; Tags">Select &amp; Tags</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-sliders.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Sliders">Sliders</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-switches.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Switches">Switches</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="forms-extras.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Extras">Extras</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-detail">
                                </i>
                                <div class="text-truncate" data-i18n="Form Layouts">Form Layouts</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="form-layouts-vertical.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Vertical Form">Vertical Form</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="form-layouts-horizontal.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Horizontal Form">Horizontal Form</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="form-layouts-sticky.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Sticky Actions">Sticky Actions</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-carousel">
                                </i>
                                <div class="text-truncate" data-i18n="Form Wizard">Form Wizard</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="form-wizard-numbered.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Numbered">Numbered</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="form-wizard-icons.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Icons">Icons</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="form-validation.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-list-check">
                                </i>
                                <div class="text-truncate" data-i18n="Form Validation">Form Validation</div>
                            </a>
                        </li>
                        <!-- Tables -->
                        <li class="menu-item">
                            <a href="tables-basic.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-table">
                                </i>
                                <div class="text-truncate" data-i18n="Tables">Tables</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-grid">
                                </i>
                                <div class="text-truncate" data-i18n="Datatables">Datatables</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="tables-datatables-basic.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="tables-datatables-advanced.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Advanced">Advanced</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="tables-datatables-extensions.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Extensions">Extensions</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- Charts & Maps -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text" data-i18n="Charts &amp; Maps">Charts &amp; Maps</span>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-chart">
                                </i>
                                <div class="text-truncate" data-i18n="Charts">Charts</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="charts-apex.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Apex Charts">Apex Charts</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="charts-chartjs.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="ChartJS">ChartJS</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="maps-leaflet.html" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-map-alt">
                                </i>
                                <div class="text-truncate" data-i18n="Leaflet Maps">Leaflet Maps</div>
                            </a>
                        </li>

                        <!-- Misc -->
                        <li class="menu-header small text-uppercase">
                            <span class="menu-header-text" data-i18n="Misc">Misc</span>
                        </li>
                        <li class="menu-item">
                            <a href="https://themeselection.com/support/" target="_blank" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-support">
                                </i>
                                <div class="text-truncate" data-i18n="Support">Support</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-file">
                                </i>
                                <div class="text-truncate" data-i18n="Documentation">Documentation</div>
                            </a>
                        </li>
                    </ul>



                </aside>
                <!-- / Menu -->



                <!-- Layout container -->
                <div class="layout-page">





                    <!-- Navbar -->




                    <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">











                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="bx bx-menu bx-sm">
                                </i>
                            </a>
                        </div>


                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">




                            <!-- Search -->
                            <div class="navbar-nav align-items-center">
                                <div class="nav-item navbar-search-wrapper mb-0">
                                    <a class="nav-item nav-link search-toggler px-0" href="javascript:void(0);">
                                        <i class="bx bx-search bx-sm">
                                        </i>
                                        <span class="d-none d-md-inline-block text-muted">Search (Ctrl+/)</span>
                                    </a>
                                </div>
                            </div>
                            <!-- /Search -->





                            <ul class="navbar-nav flex-row align-items-center ms-auto">




                                <!-- Language -->
                                <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <i class="bx bx-globe bx-sm">
                                        </i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item active" href="javascript:void(0);" data-language="en" data-text-direction="ltr">
                                                <span class="align-middle">English</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">
                                                <span class="align-middle">French</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">
                                                <span class="align-middle">Arabic</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">
                                                <span class="align-middle">German</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- /Language -->

                                <!-- Quick links  -->
                                <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                        <i class="bx bx-grid-alt bx-sm">
                                        </i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end py-0">
                                        <div class="dropdown-menu-header border-bottom">
                                            <div class="dropdown-header d-flex align-items-center py-3">
                                                <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                                                <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add shortcuts" data-bs-original-title="Add shortcuts">
                                                    <i class="bx bx-sm bx-plus-circle">
                                                    </i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="dropdown-shortcuts-list scrollable-container ps">
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-calendar fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="app-calendar.html" class="stretched-link">Calendar</a>
                                                    <small class="text-muted mb-0">Appointments</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-food-menu fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                                                    <small class="text-muted mb-0">Manage Accounts</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-user fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="app-user-list.html" class="stretched-link">User App</a>
                                                    <small class="text-muted mb-0">Manage Users</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-check-shield fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                                                    <small class="text-muted mb-0">Permission</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-pie-chart-alt-2 fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="index.html" class="stretched-link">Dashboard</a>
                                                    <small class="text-muted mb-0">User Profile</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-cog fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                                                    <small class="text-muted mb-0">Account Settings</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-help-circle fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="pages-faq.html" class="stretched-link">FAQs</a>
                                                    <small class="text-muted mb-0">FAQs &amp; Articles</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-window-open fs-4">
                                                        </i>
                                                    </span>
                                                    <a href="modal-examples.html" class="stretched-link">Modals</a>
                                                    <small class="text-muted mb-0">Useful Popups</small>
                                                </div>
                                            </div>
                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                </div>
                                            </div>
                                            <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- Quick links -->


                                <!-- Style Switcher -->
                                <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <i class="bx bx-sm bx-sun">
                                        </i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                                                <span class="align-middle">
                                                    <i class="bx bx-sun me-2">
                                                    </i>Light</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                                                <span class="align-middle">
                                                    <i class="bx bx-moon me-2">
                                                    </i>Dark</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="system">
                                                <span class="align-middle">
                                                    <i class="bx bx-desktop me-2">
                                                    </i>System</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- / Style Switcher-->


                                <!-- Notification -->
                                <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                        <i class="bx bx-bell bx-sm">
                                        </i>
                                        <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end py-0">
                                        <li class="dropdown-menu-header border-bottom">
                                            <div class="dropdown-header d-flex align-items-center py-3">
                                                <h5 class="text-body mb-0 me-auto">Notification</h5>
                                                <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Mark all as read" data-bs-original-title="Mark all as read">
                                                    <i class="bx fs-4 bx-envelope-open">
                                                    </i>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="dropdown-notifications-list scrollable-container ps">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="/SWP_Project/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Congratulation Lettie 🎉</h6>
                                                            <p class="mb-0">Won the monthly best seller gold badge</p>
                                                            <small class="text-muted">1h ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Charles Franklin</h6>
                                                            <p class="mb-0">Accepted your connection</p>
                                                            <small class="text-muted">12hr ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="/SWP_Project/assets/img/avatars/2.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">New Message ✉️</h6>
                                                            <p class="mb-0">You have new message from Natalie</p>
                                                            <small class="text-muted">1h ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-success">
                                                                    <i class="bx bx-cart">
                                                                    </i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Whoo! You have new order 🛒 </h6>
                                                            <p class="mb-0">ACME Inc. made new order $1,154</p>
                                                            <small class="text-muted">1 day ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="/SWP_Project/assets/img/avatars/9.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Application has been approved 🚀 </h6>
                                                            <p class="mb-0">Your ABC project application has been approved.</p>
                                                            <small class="text-muted">2 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-success">
                                                                    <i class="bx bx-pie-chart-alt">
                                                                    </i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Monthly report is generated</h6>
                                                            <p class="mb-0">July monthly financial report is generated </p>
                                                            <small class="text-muted">3 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="/SWP_Project/assets/img/avatars/5.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Send connection request</h6>
                                                            <p class="mb-0">Peter sent you connection request</p>
                                                            <small class="text-muted">4 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <img src="/SWP_Project/assets/img/avatars/6.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">New message from Jane</h6>
                                                            <p class="mb-0">Your have new message from Jane</p>
                                                            <small class="text-muted">5 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-warning">
                                                                    <i class="bx bx-error">
                                                                    </i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">CPU is running high</h6>
                                                            <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                                                            <small class="text-muted">5 days ago</small>
                                                        </div>
                                                        <div class="flex-shrink-0 dropdown-notifications-actions">
                                                            <a href="javascript:void(0)" class="dropdown-notifications-read">
                                                                <span class="badge badge-dot">
                                                                </span>
                                                            </a>
                                                            <a href="javascript:void(0)" class="dropdown-notifications-archive">
                                                                <span class="bx bx-x">
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                </div>
                                            </div>
                                            <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dropdown-menu-footer border-top p-3">
                                            <button class="btn btn-primary text-uppercase w-100">view all notifications</button>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ Notification -->
                                <!-- User -->
                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="/SWP_Project/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-account.html">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="/SWP_Project/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <span class="fw-medium d-block">John Doe</span>
                                                        <small class="text-muted">Admin</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider">
                                            </div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-profile-user.html">
                                                <i class="bx bx-user me-2">
                                                </i>
                                                <span class="align-middle">My Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-account.html">
                                                <i class="bx bx-cog me-2">
                                                </i>
                                                <span class="align-middle">Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-account-settings-billing.html">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="flex-shrink-0 bx bx-credit-card me-2">
                                                    </i>
                                                    <span class="flex-grow-1 align-middle">Billing</span>
                                                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider">
                                            </div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-faq.html">
                                                <i class="bx bx-help-circle me-2">
                                                </i>
                                                <span class="align-middle">FAQ</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-pricing.html">
                                                <i class="bx bx-dollar me-2">
                                                </i>
                                                <span class="align-middle">Pricing</span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider">
                                            </div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="auth-login-cover.html" target="_blank">
                                                <i class="bx bx-power-off me-2">
                                                </i>
                                                <span class="align-middle">Log Out</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ User -->


                            </ul>
                        </div>


                        <!-- Search Small Screens -->
                        <div class="navbar-search-wrapper search-input-wrapper d-none">
                            <span class="twitter-typeahead" style="position: relative; display: inline-block;">
                                <input type="text" class="form-control search-input container-xxl border-0 tt-input" placeholder="Search..." aria-label="Search..." autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top;">
                                <pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Public Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;">
                                </pre>
                                <div class="tt-menu navbar-search-suggestion ps" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;">
                                    <div class="tt-dataset tt-dataset-pages">
                                    </div>
                                    <div class="tt-dataset tt-dataset-files">
                                    </div>
                                    <div class="tt-dataset tt-dataset-members">
                                    </div>
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                        </div>
                                    </div>
                                    <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                        <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;">
                                        </div>
                                    </div>
                                </div>
                            </span>
                            <i class="bx bx-x bx-sm search-toggler cursor-pointer">
                            </i>
                        </div>


                    </nav>



                    <!-- / Navbar -->



                    <!-- Content wrapper -->
                    <div class="content-wrapper">

                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">


                            <div class="app-email card">
                                <div class="border-0">
                                    <div class="row g-0">
                                        <!-- Email Sidebar -->
                                        <div class="col app-email-sidebar border-end flex-grow-0" id="app-email-sidebar">
                                            <div class="btn-compost-wrapper d-grid">
                                                <button class="btn btn-primary btn-compose" data-bs-toggle="modal" data-bs-target="#emailComposeSidebar" id="emailComposeSidebarLabel">Compose</button>
                                            </div>
                                            <!-- Email Filters -->
                                            <div class="email-filters py-2 ps">
                                                <!-- Email Filters: Folder -->
                                                <ul class="email-filter-folders list-unstyled pb-1">
                                                    <li class="d-flex justify-content-between active" data-target="inbox">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-envelope">
                                                            </i>
                                                            <span class="align-middle ms-2">Inbox</span>
                                                        </a>
                                                        <div class="badge bg-label-primary rounded-pill">21</div>
                                                    </li>
                                                    <li class="d-flex" data-target="sent">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-send">
                                                            </i>
                                                            <span class="align-middle ms-2">Sent</span>
                                                        </a>
                                                    </li>
                                                    <li class="d-flex justify-content-between" data-target="draft">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-edit">
                                                            </i>
                                                            <span class="align-middle ms-2">Draft</span>
                                                        </a>
                                                        <div class="badge bg-label-warning rounded-pill">1</div>
                                                    </li>
                                                    <li class="d-flex" data-target="starred">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-star">
                                                            </i>
                                                            <span class="align-middle ms-2">Starred</span>
                                                        </a>
                                                    </li>
                                                    <li class="d-flex justify-content-between" data-target="spam">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-error-circle">
                                                            </i>
                                                            <span class="align-middle ms-2">Spam</span>
                                                        </a>
                                                        <div class="badge bg-label-danger rounded-pill">6</div>
                                                    </li>
                                                    <li class="d-flex align-items-center" data-target="trash">
                                                        <a href="javascript:void(0);" class="d-flex flex-wrap align-items-center">
                                                            <i class="bx bx-trash-alt">
                                                            </i>
                                                            <span class="align-middle ms-2">Trash</span>
                                                        </a>
                                                    </li>
                                                </ul>

                                                <!-- Email Filters: Labels -->
                                                <div class="email-filter-labels">
                                                    <small class="mx-4 text-uppercase text-muted">Labels</small>
                                                    <ul class="list-unstyled mb-0">
                                                        <li data-target="work">
                                                            <a href="javascript:void(0);">
                                                                <i class="badge badge-dot bg-success">
                                                                </i>
                                                                <span class="align-middle ms-2">Work</span>
                                                            </a>
                                                        </li>
                                                        <li data-target="company">
                                                            <a href="javascript:void(0);">
                                                                <i class="badge badge-dot bg-primary">
                                                                </i>
                                                                <span class="align-middle ms-2">Company</span>
                                                            </a>
                                                        </li>
                                                        <li data-target="important">
                                                            <a href="javascript:void(0);">
                                                                <i class="badge badge-dot bg-warning">
                                                                </i>
                                                                <span class="align-middle ms-2">Important</span>
                                                            </a>
                                                        </li>
                                                        <li data-target="private">
                                                            <a href="javascript:void(0);">
                                                                <i class="badge badge-dot bg-danger">
                                                                </i>
                                                                <span class="align-middle ms-2">Private</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <!--/ Email Filters -->
                                                <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                                    <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                    </div>
                                                </div>
                                                <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                                    <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/ Email Sidebar -->

                                        <!-- Emails List -->
                                        <div class="col app-emails-list">
                                            <div class="card shadow-none border-0">
                                                <div class="card-body emails-list-header p-3 py-lg-3 py-2">
                                                    <!-- Email List: Search -->
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="d-flex align-items-center w-100">
                                                            <i class="bx bx-menu bx-sm cursor-pointer d-block d-lg-none me-3" data-bs-toggle="sidebar" data-target="#app-email-sidebar" data-overlay="">
                                                            </i>
                                                            <div class="mb-0 mb-lg-2 w-100">
                                                                <div class="input-group input-group-merge shadow-none">
                                                                    <span class="input-group-text border-0 ps-0 py-0" id="email-search">
                                                                        <i class="bx bx-search fs-4 text-muted">
                                                                        </i>
                                                                    </span>
                                                                    <input type="text" class="form-control email-search-input border-0 py-0" placeholder="Search mail" aria-label="Search..." aria-describedby="email-search">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center mb-0 mb-md-2">
                                                            <i class="bx bx-refresh scaleX-n1-rtl cursor-pointer email-refresh me-2 bx-sm text-muted">
                                                            </i>
                                                            <div class="dropdown">
                                                                <button class="btn p-0" type="button" id="emailsActions" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-dots-vertical-rounded bx-sm text-muted">
                                                                    </i>
                                                                </button>
                                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="emailsActions" style="">
                                                                    <a class="dropdown-item" href="javascript:void(0)">Mark as read</a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">Mark as unread</a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">Delete</a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">Archive</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr class="mx-n3 emails-list-header-hr">
                                                    <!-- Email List: Actions -->
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <div class="d-flex align-items-center">
                                                            <div class="form-check me-2">
                                                                <input class="form-check-input" type="checkbox" id="email-select-all">
                                                                <label class="form-check-label" for="email-select-all">
                                                                </label>
                                                            </div>
                                                            <i class="bx bx-trash-alt email-list-delete cursor-pointer me-3 fs-4">
                                                            </i>
                                                            <i class="bx bx-envelope email-list-read cursor-pointer me-3 fs-4">
                                                            </i>
                                                            <div class="dropdown">
                                                                <button class="btn p-0" type="button" id="dropdownMenuFolderOne" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-folder bx bx-folder fs-4 me-3">
                                                                    </i>
                                                                </button>
                                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuFolderOne" style="">
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-error-circle me-1">
                                                                        </i>
                                                                        <span class="align-middle">Spam</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-edit me-1">
                                                                        </i>
                                                                        <span class="align-middle">Draft</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-trash-alt me-1">
                                                                        </i>
                                                                        <span class="align-middle">Trash</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="dropdown">
                                                                <button class="btn p-0" type="button" id="dropdownLabelOne" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-label fs-4 me-3">
                                                                    </i>
                                                                </button>
                                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownLabelOne" style="">
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="badge badge-dot bg-success me-1">
                                                                        </i>
                                                                        <span class="align-middle">Workshop</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="badge badge-dot bg-primary me-1">
                                                                        </i>
                                                                        <span class="align-middle">Company</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="badge badge-dot bg-warning me-1">
                                                                        </i>
                                                                        <span class="align-middle">Important</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="badge badge-dot bg-danger me-1">
                                                                        </i>
                                                                        <span class="align-middle">Private</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="email-pagination d-sm-flex d-none align-items-center flex-wrap justify-content-between justify-sm-content-end">
                                                            <span class="d-sm-block d-none mx-3 text-muted">1-10 of 653</span>
                                                            <i class="email-prev bx bx-chevron-left scaleX-n1-rtl cursor-pointer text-muted me-4 fs-4">
                                                            </i>
                                                            <i class="email-next bx bx-chevron-right scaleX-n1-rtl cursor-pointer fs-4">
                                                            </i>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="container-m-nx m-0">
                                                <!-- Email List: Items -->
                                                <div class="email-list pt-0 ps ps--active-y" style="zoom: 1;">
                                                    <ul class="list-unstyled m-0">
                                                        <li class="email-list-item email-marked-read d-block" data-starred="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-1">
                                                                    <label class="form-check-label" for="email-1">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/1.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Chandler Bing</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Focused impactful open issues from the project of GitHub</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-danger d-none d-md-inline-block me-2" data-label="private">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">08:40 AM</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-unread"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item email-marked-read d-block" data-sent="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-2">
                                                                    <label class="form-check-label" for="email-2">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/2.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Ross Geller</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Dessert soufflé tootsie roll soufflé carrot cake halvah jelly.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-danger d-none d-md-inline-block me-2" data-label="private">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">10:12 AM</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-unread"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item email-marked-read d-block" data-draft="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-3">
                                                                    <label class="form-check-label" for="email-3">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <div class="avatar avatar-sm d-block flex-shrink-0 me-sm-3 me-0">
                                                                    <span class="avatar-initial rounded-circle bg-label-warning">BS</span>
                                                                </div>
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Barney Stinson</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Soufflé apple pie caramels soufflé tiramisu bear claw.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-primary d-none d-md-inline-block me-2" data-label="company">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">12:44 AM</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-unread"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item d-block" data-starred="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-4">
                                                                    <label class="form-check-label" for="email-4">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/3.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Pheobe Buffay</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Tart croissant jujubes gummies macaroon Icing sweet.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-success d-none d-md-inline-block me-2" data-label="work">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">Yesterday</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-read"> <i class="bx bx-envelope-open fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item email-marked-read d-block" data-spam="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-5">
                                                                    <label class="form-check-label" for="email-5">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/4.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Ted Mosby</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, I love Pudding cookie chocolate sweet tiramisu jujubes I love danish.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-primary d-none d-md-inline-block me-2" data-label="company">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">Yesterday</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-unread"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item d-block" data-trash="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-6">
                                                                    <label class="form-check-label" for="email-6">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <div class="avatar avatar-sm d-block flex-shrink-0 me-sm-3 me-0">
                                                                    <span class="avatar-initial rounded-circle bg-label-info">Sk</span>
                                                                </div>
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Stacy Cooper</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-info d-none d-md-inline-block me-2" data-label="work">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">5 May</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-read"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item email-marked-read d-block" data-draft="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-7">
                                                                    <label class="form-check-label" for="email-7">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/5.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Rachel Green</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Chocolate cake pudding chocolate bar ice cream bonbon lollipop.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-primary d-none d-md-inline-block me-2" data-label="company">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">15 May</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-unread"> <i class="bx bx-envelope fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item d-block" data-starred="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-8">
                                                                    <label class="form-check-label" for="email-8">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/6.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Grace Shelby</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Icing gummi bears ice cream croissant dessert wafer.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-attachment bx bx-paperclip cursor-pointer float-end float-sm-none">
                                                                    </span>
                                                                    <span class="email-list-item-label badge badge-dot bg-danger d-none d-md-inline-block ms-2" data-label="private">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">20 Apr</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-read"> <i class="bx bx-envelope-open fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item email-marked-read d-block" data-spam="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-9">
                                                                    <label class="form-check-label" for="email-9">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <div class="avatar avatar-sm d-block flex-shrink-0 me-sm-3 me-0">
                                                                    <span class="avatar-initial rounded-circle bg-label-danger">JF</span>
                                                                </div>
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Jacob Frye</span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, Chocolate cake pudding chocolate bar ice cream Sweet.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-info d-none d-md-inline-block me-2" data-label="important">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">25 Mar</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-read"> <i class="bx bx-envelope-open fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="email-list-item d-block" data-trash="true" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                            <div class="d-flex align-items-center">
                                                                <div class="form-check">
                                                                    <input class="email-list-item-input form-check-input" type="checkbox" id="email-10">
                                                                    <label class="form-check-label" for="email-10">
                                                                    </label>
                                                                </div>
                                                                <i class="email-list-item-bookmark bx bx-star d-sm-inline-block d-none cursor-pointer mx-4 bx-sm">
                                                                </i>
                                                                <img src="/SWP_Project/assets/img/avatars/9.png" alt="user-avatar" class="d-block flex-shrink-0 rounded-circle me-sm-3 me-0" height="32" width="32">
                                                                <div class="email-list-item-content ms-2 ms-sm-0 me-2">
                                                                    <span class="email-list-item-username me-2 h6">Alistair Crowley </span>
                                                                    <span class="email-list-item-subject d-xl-inline-block d-block"> Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.</span>
                                                                </div>
                                                                <div class="email-list-item-meta ms-auto d-flex align-items-center">
                                                                    <span class="email-list-item-label badge badge-dot bg-primary d-none d-md-inline-block me-2" data-label="company">
                                                                    </span>
                                                                    <small class="email-list-item-time text-muted">25 Feb</small>
                                                                    <ul class="list-inline email-list-item-actions">
                                                                        <li class="list-inline-item email-delete"> <i class="bx bx-trash-alt fs-4">
                                                                            </i>
                                                                        </li>
                                                                        <li class="list-inline-item email-read"> <i class="bx bx-envelope-open fs-4">
                                                                            </i> </li>
                                                                        <li class="list-inline-item"> <i class="bx bx-error-circle fs-4">
                                                                            </i> </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <ul class="list-unstyled m-0">
                                                        <li class="email-list-empty text-center d-none">No items found.</li>
                                                    </ul>
                                                    <div class="ps__rail-x" style="left: 0px; bottom: -316px;">
                                                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                        </div>
                                                    </div>
                                                    <div class="ps__rail-y" style="top: 316px; height: 446px; right: 0px;">
                                                        <div class="ps__thumb-y" tabindex="0" style="top: 185px; height: 261px;">
                                                        </div>
                                                    </div>
                                                    <div class="ps__rail-x" style="left: 0px; bottom: -316px;">
                                                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                        </div>
                                                    </div>
                                                    <div class="ps__rail-y" style="top: 316px; height: 446px; right: 0px;">
                                                        <div class="ps__thumb-y" tabindex="0" style="top: 185px; height: 261px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="app-overlay">
                                            </div>
                                        </div>
                                        <!-- /Emails List -->

                                        <!-- Email View -->
                                        <div class="col app-email-view flex-grow-0 bg-body" id="app-email-view">
                                            <div class="app-email-view-header p-3 py-md-3 py-2 rounded-0">
                                                <!-- Email View : Title  bar-->
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="d-flex align-items-center overflow-hidden">
                                                        <i class="bx bx-chevron-left bx-sm cursor-pointer me-2" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                        </i>
                                                        <h6 class="text-truncate mb-0 me-2">Focused impactful open issues</h6>
                                                        <span class="badge bg-label-warning">Important</span>
                                                    </div>
                                                    <!-- Email View : Action  bar-->
                                                    <div class="d-flex">
                                                        <i class="bx bx-printer d-sm-block d-none fs-4">
                                                        </i>
                                                        <div class="dropdown ms-3">
                                                            <button class="btn p-0" type="button" id="dropdownMoreOptions" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-dots-vertical-rounded fs-4">
                                                                </i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMoreOptions">
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-envelope-open bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Mark as unread</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-envelope-open bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Mark as unread</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-star bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Add star</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-calendar bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Create Event</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-volume-mute bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Mute</span>
                                                                </a>
                                                                <a class="dropdown-item d-sm-none d-block" href="javascript:void(0)">
                                                                    <i class="bx bx-printer bx-xs me-1">
                                                                    </i>
                                                                    <span class="align-middle">Print</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="app-email-view-hr mx-n3 mb-2">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="d-flex align-items-center">
                                                        <i class="bx bx-trash-alt cursor-pointer me-3 fs-4" data-bs-toggle="sidebar" data-target="#app-email-view">
                                                        </i>
                                                        <i class="bx bx-envelope fs-4 cursor-pointer me-3">
                                                        </i>
                                                        <div class="dropdown">
                                                            <button class="btn p-0" type="button" id="dropdownMenuFolderTwo" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-folder fs-4 me-3">
                                                                </i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuFolderTwo">
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-error-circle me-1">
                                                                    </i>
                                                                    <span class="align-middle">Spam</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-edit me-1">
                                                                    </i>
                                                                    <span class="align-middle">Draft</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="bx bx-trash-alt me-1">
                                                                    </i>
                                                                    <span class="align-middle">Trash</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="dropdown">
                                                            <button class="btn p-0" type="button" id="dropdownLabelTwo" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-label fs-4 me-3">
                                                                </i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownLabelTwo">
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="badge badge-dot bg-success me-1">
                                                                    </i>
                                                                    <span class="align-middle">Workshop</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="badge badge-dot bg-primary me-1">
                                                                    </i>
                                                                    <span class="align-middle">Company</span>
                                                                </a>
                                                                <a class="dropdown-item" href="javascript:void(0)">
                                                                    <i class="badge badge-dot bg-warning me-1">
                                                                    </i>
                                                                    <span class="align-middle">Important</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex align-items-center flex-wrap justify-content-end">
                                                        <span class="d-sm-block d-none mx-3 text-muted">1-10 of 653</span>
                                                        <i class="bx bx-chevron-left scaleX-n1-rtl cursor-pointer text-muted me-4 fs-4">
                                                        </i>
                                                        <i class="bx bx-chevron-right scaleX-n1-rtl cursor-pointer fs-4">
                                                        </i>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="m-0">
                                            <!-- Email View : Content-->
                                            <div class="app-email-view-content py-4 ps ps--active-y">
                                                <p class="email-earlier-msgs text-center text-muted cursor-pointer mb-5">1 Earlier Message</p>
                                                <!-- Email View : Previous mails-->
                                                <div class="card email-card-prev mx-sm-4 mx-3 border">
                                                    <div class="card-header d-flex justify-content-between align-items-center flex-wrap">
                                                        <div class="d-flex align-items-center mb-sm-0 mb-3">
                                                            <img src="/SWP_Project/assets/img/avatars/2.png" alt="user-avatar" class="flex-shrink-0 rounded-circle me-2" height="38" width="38">
                                                            <div class="flex-grow-1 ms-1">
                                                                <h6 class="m-0">Ross Geller</h6>
                                                                <small class="text-muted">rossGeller@email.com</small>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <small class="mb-0 me-3 text-muted">June 20th 2020, 08:30 AM</small>
                                                            <i class="bx bx-paperclip cursor-pointer me-2 bx-sm">
                                                            </i>
                                                            <i class="email-list-item-bookmark bx bx-star cursor-pointer me-2 bx-sm">
                                                            </i>
                                                            <div class="dropdown me-3">
                                                                <button class="btn p-0" type="button" id="dropdownEmailOne" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-dots-vertical-rounded bx-sm">
                                                                    </i>
                                                                </button>
                                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEmailOne">
                                                                    <a class="dropdown-item scroll-to-reply" href="javascript:void(0)">
                                                                        <i class="bx bx-share me-1">
                                                                        </i>
                                                                        <span class="align-middle">Reply</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-share scaleX-n1 scaleX-n1-rtl me-1">
                                                                        </i>
                                                                        <span class="align-middle">Forward</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-info-circle me-1">
                                                                        </i>
                                                                        <span class="align-middle">Report</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="fw-medium">Greetings!</p>
                                                        <p>
                                                            It is a long established fact that a reader will be distracted by the readable content
                                                            of a
                                                            page when looking at its layout.The point of using Lorem Ipsum is that it has a
                                                            more-or-less
                                                            normal distribution of letters, as opposed to using 'Content here, content here',making
                                                            it
                                                            look like readable English.
                                                        </p>
                                                        <p>
                                                            There are many variations of passages of Lorem Ipsum available, but the majority have
                                                            suffered alteration in some form, by injected humour, or randomised words which don't
                                                            look
                                                            even slightly believable.
                                                        </p>
                                                        <p class="mb-0">Sincerely yours,</p>
                                                        <p class="fw-medium mb-0">Envato Design Team</p>
                                                        <hr>
                                                        <p class="mb-2">Attachments</p>
                                                        <div class="cursor-pointer">
                                                            <i class="bx bx-file">
                                                            </i>
                                                            <span class="align-middle ms-1">report.xlsx</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Email View : Last mail-->
                                                <div class="card email-card-last mx-sm-4 mx-3 mt-4 border">
                                                    <div class="card-header d-flex justify-content-between align-items-center flex-wrap border-bottom">
                                                        <div class="d-flex align-items-center mb-sm-0 mb-3">
                                                            <img src="/SWP_Project/assets/img/avatars/1.png" alt="user-avatar" class="flex-shrink-0 rounded-circle me-2" height="38" width="38">
                                                            <div class="flex-grow-1 ms-1">
                                                                <h6 class="m-0">Chandler Bing</h6>
                                                                <small class="text-muted">iAmAhoot@email.com</small>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <small class="mb-0 me-3 text-muted">June 20th 2020, 08:10 AM</small>
                                                            <i class="bx bx-paperclip cursor-pointer me-2 bx-sm">
                                                            </i>
                                                            <i class="email-list-item-bookmark bx bx-star cursor-pointer me-2 bx-sm">
                                                            </i>
                                                            <div class="dropdown me-3">
                                                                <button class="btn p-0" type="button" id="dropdownEmailTwo" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-dots-vertical-rounded bx-sm">
                                                                    </i>
                                                                </button>
                                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEmailTwo">
                                                                    <a class="dropdown-item scroll-to-reply" href="javascript:void(0)">
                                                                        <i class="bx bx-share me-1">
                                                                        </i>
                                                                        <span class="align-middle">Reply</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-share me-1 scaleX-n1 scaleX-n1-rtl">
                                                                        </i>
                                                                        <span class="align-middle">Forward</span>
                                                                    </a>
                                                                    <a class="dropdown-item" href="javascript:void(0)">
                                                                        <i class="bx bx-info-circle me-1">
                                                                        </i>
                                                                        <span class="align-middle">Report</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-3">
                                                        <p class="fw-medium">Hey John,</p>
                                                        <p>
                                                            It is a long established fact that a reader will be distracted by the readable content
                                                            of a
                                                            page when looking at its layout.The point of using Lorem Ipsum is that it has a
                                                            more-or-less
                                                            normal distribution of letters, as opposed to using 'Content here, content here',making
                                                            it
                                                            look like readable English.
                                                        </p>
                                                        <p>
                                                            There are many variations of passages of Lorem Ipsum available, but the majority have
                                                            suffered alteration in some form, by injected humour, or randomised words which don't
                                                            look
                                                            even slightly believable.
                                                        </p>
                                                        <p class="mb-0">Sincerely yours,</p>
                                                        <p class="fw-medium mb-0">Envato Design Team</p>
                                                        <hr>
                                                        <p class="mb-2">Attachments</p>
                                                        <div class="cursor-pointer">
                                                            <i class="bx bx-file">
                                                            </i>
                                                            <span class="align-middle ms-1">report.xlsx</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Email View : Reply mail-->
                                                <div class="email-reply card mt-4 mx-sm-4 mx-3 border">
                                                    <h6 class="card-header border-0">Reply to Ross Geller</h6>
                                                    <div class="card-body pt-0 px-3">
                                                        <div class="d-flex justify-content-start">
                                                            <div class="email-reply-toolbar border-0 w-100 ps-0 ql-toolbar ql-snow">
                                                                <span class="ql-formats me-0">
                                                                    <button class="ql-bold" type="button">
                                                                        <svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                                        </path> <path class="ql-stroke" d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-italic" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4">
                                                                        </line> </svg>
                                                                    </button>
                                                                    <button class="ql-underline" type="button">
                                                                        <svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                                        </path> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3" y="15">
                                                                        </rect> </svg>
                                                                    </button>
                                                                    <button class="ql-list" value="ordered" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="15" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="7" x2="15" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="7" x2="15" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke ql-thin" x1="2.5" x2="4.5" y1="5.5" y2="5.5">
                                                                        </line> <path class="ql-fill" d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z">
                                                                        </path> <path class="ql-stroke ql-thin" d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156">
                                                                        </path> <path class="ql-stroke ql-thin" d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-list" value="bullet" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="6" x2="15" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="6" x2="15" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="6" x2="15" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="14" y2="14">
                                                                        </line> </svg>
                                                                    </button>
                                                                    <button class="ql-link" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="11" y1="7" y2="11">
                                                                        </line> <path class="ql-even ql-stroke" d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                                        </path> <path class="ql-even ql-stroke" d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-image" type="button">
                                                                        <svg viewBox="0 0 18 18"> <rect class="ql-stroke" height="10" width="12" x="3" y="4">
                                                                        </rect> <circle class="ql-fill" cx="6" cy="7" r="1">
                                                                        </circle> <polyline class="ql-even ql-fill" points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                                        </polyline> </svg>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="email-reply-editor ql-container ql-snow">
                                                            <div class="ql-editor ql-blank" data-gramm="false" contenteditable="true" data-placeholder="Write your message... ">
                                                                <p>
                                                                    <br>
                                                                </p>
                                                            </div>
                                                            <div class="ql-clipboard" contenteditable="true" tabindex="-1">
                                                            </div>
                                                            <div class="ql-tooltip ql-hidden">
                                                                <a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank">
                                                                </a>
                                                                <input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL">
                                                                <a class="ql-action">
                                                                </a>
                                                                <a class="ql-remove">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex justify-content-end align-items-center">
                                                            <div class="cursor-pointer me-3">
                                                                <i class="bx bx-paperclip">
                                                                </i>
                                                                <span class="align-middle">Attachments</span>
                                                            </div>
                                                            <button class="btn btn-primary">
                                                                <i class="bx bx-paper-plane me-1">
                                                                </i>
                                                                <span class="align-middle">Send</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                                    <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">
                                                    </div>
                                                </div>
                                                <div class="ps__rail-y" style="top: 0px; height: 469px; right: 0px;">
                                                    <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 251px;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Email View -->
                                    </div>
                                </div>

                                <!-- Compose Email -->
                                <div class="app-email-compose modal" id="emailComposeSidebar" tabindex="-1" aria-labelledby="emailComposeSidebarLabel" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog m-0 me-md-4 mb-4 modal-lg">
                                        <div class="modal-content p-0">
                                            <div class="modal-header py-3 bg-body">
                                                <h5 class="modal-title fs-5">Compose Mail</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body flex-grow-1 pb-sm-0 p-4 py-2">
                                                <form class="email-compose-form">
                                                    <div class="email-compose-to d-flex justify-content-between align-items-center">
                                                        <label class="form-label mb-2" for="emailContacts">To:</label>
                                                        <div class="select2-primary border-0 shadow-none flex-grow-1 mx-2">
                                                            <div class="position-relative">
                                                                <div class="position-relative">
                                                                    <select class="select2 select-email-contacts form-select select2-hidden-accessible" id="emailContacts" name="emailContacts" multiple="" tabindex="-1" aria-hidden="true" data-select2-id="emailContacts">
                                                                        <option data-avatar="1.png" value="Jane Foster">Jane Foster</option>
                                                                        <option data-avatar="3.png" value="Donna Frank">Donna Frank</option>
                                                                        <option data-avatar="5.png" value="Gabrielle Robertson">Gabrielle Robertson</option>
                                                                        <option data-avatar="7.png" value="Lori Spears">Lori Spears</option>
                                                                        <option data-avatar="9.png" value="Sandy Vega">Sandy Vega</option>
                                                                        <option data-avatar="11.png" value="Cheryl May">Cheryl May</option>
                                                                    </select>
                                                                    <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="8" style="width: auto;">
                                                                        <span class="selection">
                                                                            <span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false">
                                                                                <ul class="select2-selection__rendered">
                                                                                    <li class="select2-search select2-search--inline">
                                                                                        <input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="searchbox" aria-autocomplete="list" placeholder="Select value" style="width: 0px;">
                                                                                    </li>
                                                                                </ul>
                                                                            </span>
                                                                        </span>
                                                                        <span class="dropdown-wrapper" aria-hidden="true">
                                                                        </span>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="email-compose-toggle-wrapper mb-2">
                                                            <a class="email-compose-toggle-cc text-body" href="javascript:void(0);">Cc |</a>
                                                            <a class="email-compose-toggle-bcc text-body" href="javascript:void(0);">Bcc</a>
                                                        </div>
                                                    </div>

                                                    <div class="email-compose-cc d-none">
                                                        <hr class="mx-n4 my-2">
                                                        <div class="d-flex align-items-center">
                                                            <label for="email-cc" class="form-label mb-0">Cc:</label>
                                                            <input type="text" class="form-control border-0 shadow-none flex-grow-1 mx-2" id="email-cc" placeholder="someone@email.com">
                                                        </div>
                                                    </div>
                                                    <div class="email-compose-bcc d-none">
                                                        <hr class="mx-n4 my-2">
                                                        <div class="d-flex align-items-center">
                                                            <label for="email-bcc" class="form-label mb-0">Bcc:</label>
                                                            <input type="text" class="form-control border-0 shadow-none flex-grow-1 mx-2" id="email-bcc" placeholder="someone@email.com">
                                                        </div>
                                                    </div>
                                                    <hr class="mx-n4 my-0">
                                                    <div class="email-compose-subject d-flex align-items-center my-1">
                                                        <label for="email-subject" class="form-label mb-0">Subject:</label>
                                                        <input type="text" class="form-control border-0 shadow-none flex-grow-1 mx-2" id="email-subject">
                                                    </div>
                                                    <div class="email-compose-message mx-n4">
                                                        <div class="d-flex justify-content-end">
                                                            <div class="email-editor-toolbar border-0 w-100 border-top ql-toolbar ql-snow">
                                                                <span class="ql-formats me-0">
                                                                    <button class="ql-bold" type="button">
                                                                        <svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                                        </path> <path class="ql-stroke" d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-italic" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4">
                                                                        </line> </svg>
                                                                    </button>
                                                                    <button class="ql-underline" type="button">
                                                                        <svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                                        </path> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3" y="15">
                                                                        </rect> </svg>
                                                                    </button>
                                                                    <button class="ql-list" value="ordered" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="15" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="7" x2="15" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="7" x2="15" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke ql-thin" x1="2.5" x2="4.5" y1="5.5" y2="5.5">
                                                                        </line> <path class="ql-fill" d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z">
                                                                        </path> <path class="ql-stroke ql-thin" d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156">
                                                                        </path> <path class="ql-stroke ql-thin" d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-list" value="bullet" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="6" x2="15" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="6" x2="15" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="6" x2="15" y1="14" y2="14">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="4" y2="4">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="9" y2="9">
                                                                        </line> <line class="ql-stroke" x1="3" x2="3" y1="14" y2="14">
                                                                        </line> </svg>
                                                                    </button>
                                                                    <button class="ql-link" type="button">
                                                                        <svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="11" y1="7" y2="11">
                                                                        </line> <path class="ql-even ql-stroke" d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                                        </path> <path class="ql-even ql-stroke" d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                                        </path> </svg>
                                                                    </button>
                                                                    <button class="ql-image" type="button">
                                                                        <svg viewBox="0 0 18 18"> <rect class="ql-stroke" height="10" width="12" x="3" y="4">
                                                                        </rect> <circle class="ql-fill" cx="6" cy="7" r="1">
                                                                        </circle> <polyline class="ql-even ql-fill" points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                                        </polyline> </svg>
                                                                    </button>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="email-editor border-0 border-top ql-container ql-snow">
                                                            <div class="ql-editor ql-blank" data-gramm="false" contenteditable="true" data-placeholder="Message... ">
                                                                <p>
                                                                    <br>
                                                                </p>
                                                            </div>
                                                            <div class="ql-clipboard" contenteditable="true" tabindex="-1">
                                                            </div>
                                                            <div class="ql-tooltip ql-hidden">
                                                                <a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank">
                                                                </a>
                                                                <input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL">
                                                                <a class="ql-action">
                                                                </a>
                                                                <a class="ql-remove">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr class="mx-n4 mt-0 mb-2">
                                                    <div class="email-compose-actions d-flex justify-content-between align-items-center my-2 py-1">
                                                        <div class="d-flex align-items-center">
                                                            <div class="btn-group">
                                                                <button type="reset" class="btn btn-primary" data-bs-dismiss="modal" aria-label="Close">Send</button>
                                                                <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <span class="visually-hidden">Toggle Dropdown</span>
                                                                </button>
                                                                <ul class="dropdown-menu">
                                                                    <li>
                                                                        <a class="dropdown-item" href="javascript:void(0);">Schedule send</a>
                                                                    </li>
                                                                    <li>
                                                                        <a class="dropdown-item" href="javascript:void(0);">Save draft</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <label for="attach-file">
                                                                <i class="bx bx-paperclip cursor-pointer ms-2">
                                                                </i>
                                                            </label>
                                                            <input type="file" name="file-input" class="d-none" id="attach-file">
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="dropdown">
                                                                <button class="btn p-0" type="button" id="dropdownMoreActions" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="bx bx-dots-vertical-rounded ">
                                                                    </i>
                                                                </button>
                                                                <ul class="dropdown-menu" aria-labelledby="dropdownMoreActions">
                                                                    <li>
                                                                        <button type="button" class="dropdown-item">Add Label</button>
                                                                    </li>
                                                                    <li>
                                                                        <button type="button" class="dropdown-item">Plain text mode</button>
                                                                    </li>
                                                                    <li>
                                                                        <hr class="dropdown-divider">
                                                                    </li>
                                                                    <li>
                                                                        <button type="button" class="dropdown-item">Print</button>
                                                                    </li>
                                                                    <li>
                                                                        <button type="button" class="dropdown-item">Check Spelling</button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <button type="reset" class="btn" data-bs-dismiss="modal" aria-label="Close">
                                                                <i class="bx bx-trash-alt">
                                                                </i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Compose Email -->
                            </div>
                        </div>
                        <!-- / Content -->




                        <!-- Footer -->
                        <footer class="content-footer footer bg-footer-theme">
                            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                                <div class="mb-2 mb-md-0">
                                    © <script>
                                        document.write(new Date().getFullYear())

                                    </script>2024, made with ❤️ by <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                                </div>
                                <div class="d-none d-lg-inline-block">

                                    <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                                    <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                                    <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>


                                    <a href="https://themeselection.com/support/" target="_blank" class="footer-link d-none d-sm-inline-block">Support</a>

                                </div>
                            </div>
                        </footer>
                        <!-- / Footer -->


                        <div class="content-backdrop fade">
                        </div>
                    </div>
                    <!-- Content wrapper -->
                </div>
                <!-- / Layout page -->
            </div>



            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle">
            </div>


            <!-- Drag Target Area To SlideIn Menu On Small Screens -->
            <div class="drag-target" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
            </div>

        </div>
        <!-- / Layout wrapper -->


        <div class="buy-now">
            <a href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/" target="_blank" class="btn btn-danger btn-buy-now">Buy Now</a>
        </div>




        <!-- Core JS -->
        <!-- build:js assets/vendor/js/core.js -->

        <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/popper/popper.js">
        </script>
        <script src="/SWP_Project/assets/vendor/js/bootstrap.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/hammer/hammer.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/i18n/i18n.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/typeahead-js/typeahead.js">
        </script>
        <script src="/SWP_Project/assets/vendor/js/menu.js">
        </script>

        <!-- endbuild -->

        <!-- Vendors JS -->
        <script src="/SWP_Project/assets/vendor/libs/quill/katex.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/quill/quill.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/select2/select2.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/block-ui/block-ui.js">
        </script>

        <!-- Main JS -->
        <script src="/SWP_Project/assets/js/main.js">
        </script>


        <!-- Page JS -->
        <script src="/SWP_Project/assets/js/app-email.js">
        </script>







        <div id="template-customizer" class="invert-bg-white" style="visibility: visible"> <a href="javascript:void(0)" class="template-customizer-open-btn" tabindex="-1">
            </a> <div class="p-4 m-0 lh-1 border-bottom template-customizer-header position-relative py-3"> <h4 class="template-customizer-t-panel_header mb-2">Template Customizer</h4> <p class="template-customizer-t-panel_sub_header mb-0">Customize and preview in real time</p> <div class="d-flex align-items-center gap-2 position-absolute end-0 top-0 mt-4 me-3"> <a href="javascript:void(0)" class="template-customizer-reset-btn text-body" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Reset Customizer">
                        <i class="bx bx-refresh fs-4">
                        </i>
                        <span class="badge rounded-pill bg-danger badge-dot badge-notifications">
                        </span>
                    </a> <a href="javascript:void(0)" class="template-customizer-close-btn fw-light text-body" tabindex="-1">
                        <i class="bx bx-x fs-4">
                        </i>
                    </a> </div> </div> <div class="template-customizer-inner pt-4"> <div class="template-customizer-theming"> <h5 class="m-0 px-4 py-4 lh-1 d-block"> <span class="template-customizer-t-theming_header bg-label-primary rounded-1 py-1 px-2 fs-big">Theming</span> </h5> <div class="m-0 px-4 pb-3 pt-1 template-customizer-style w-100"> <label for="customizerStyle" class="form-label d-block template-customizer-t-style_label">Style (Mode)</label> <div class="row px-1 template-customizer-styles-options">
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="customRadioIconlight">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/light.svg" alt="Light" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="light" id="customRadioIconlight" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="customRadioIconlight">Light</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="customRadioIcondark">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/dark.svg" alt="Dark" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="dark" id="customRadioIcondark">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="customRadioIcondark">Dark</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="customRadioIconsystem">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/system.svg" alt="System" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="system" id="customRadioIconsystem">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="customRadioIconsystem">System</label>
                            </div>
                        </div> </div> <div class="m-0 px-4 pt-3 template-customizer-themes w-100"> <label for="customizerTheme" class="form-label template-customizer-t-theme_label">Themes</label> <div class="row px-1 template-customizer-themes-options">
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-default">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/default.svg" alt="Default" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-default" id="themeRadiostheme-default">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="themeRadiostheme-default">Default</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-bordered">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/border.svg" alt="Bordered" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-bordered" id="themeRadiostheme-bordered">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="themeRadiostheme-bordered">Bordered</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-semi-dark">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/semi-dark.svg" alt="Semi Dark" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-semi-dark" id="themeRadiostheme-semi-dark" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="themeRadiostheme-semi-dark">Semi Dark</label>
                            </div>
                        </div> </div> </div> <div class="template-customizer-layout"> <hr class="m-0 px-4 my-4"> <h5 class="m-0 px-4 pb-4 pt-2 d-block"> <span class="template-customizer-t-layout_header bg-label-primary rounded-1 py-1 px-2 fs-big">Layout</span> </h5> <div class="m-0 px-4 pb-3 d-block template-customizer-layouts"> <label for="customizerStyle" class="form-label d-block template-customizer-t-layout_label">Menu (Navigation)</label> <div class="row px-1 template-customizer-layouts-options"> <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="layoutsRadiosexpanded">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/expanded.svg" alt="Expanded" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="layoutsRadios" class="form-check-input d-none" type="radio" value="expanded" id="layoutsRadiosexpanded">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="layoutsRadiosexpanded">Expanded</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="layoutsRadioscollapsed">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/collapsed.svg" alt="Collapsed" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="layoutsRadios" class="form-check-input d-none" type="radio" value="collapsed" id="layoutsRadioscollapsed" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="layoutsRadioscollapsed">Collapsed</label>
                            </div>
                        </div> </div>  <div class="m-0 px-4 pb-3 template-customizer-layoutNavbarOptions w-100"> <label for="customizerNavbar" class="form-label template-customizer-t-layout_navbar_label">Navbar Type</label> <div class="row px-1 template-customizer-navbar-options">
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="navbarOptionRadiossticky">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/sticky.svg" alt="Sticky" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="sticky" id="navbarOptionRadiossticky" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="navbarOptionRadiossticky">Sticky</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="navbarOptionRadiosstatic">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/static.svg" alt="Static" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="static" id="navbarOptionRadiosstatic">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="navbarOptionRadiosstatic">Static</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="navbarOptionRadioshidden">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/hidden.svg" alt="Hidden" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="hidden" id="navbarOptionRadioshidden">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="navbarOptionRadioshidden">Hidden</label>
                            </div>
                        </div> </div> <div class="m-0 px-4 pb-3 template-customizer-content w-100"> <label for="customizerContent" class="form-label template-customizer-t-content_label">Content</label> <div class="row px-1 template-customizer-content-options">
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="contentRadioIconcompact">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/compact.svg" alt="Compact" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="contentRadioIcon" class="form-check-input d-none" type="radio" value="compact" id="contentRadioIconcompact" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="contentRadioIconcompact">Compact</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="contentRadioIconwide">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/wide.svg" alt="Wide" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="contentRadioIcon" class="form-check-input d-none" type="radio" value="wide" id="contentRadioIconwide">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="contentRadioIconwide">Wide</label>
                            </div>
                        </div> </div> <div class="m-0 px-4 pb-3 template-customizer-directions w-100"> <label for="customizerDirection" class="form-label template-customizer-t-direction_label">Direction</label> <div class="row px-1 template-customizer-directions-options">
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0 checked">
                                    <label class="form-check-label custom-option-content p-0" for="directionRadioIconltr">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/ltr.svg" alt="Left to Right (En)" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="directionRadioIcon" class="form-check-input d-none" type="radio" value="ltr" id="directionRadioIconltr" checked="checked">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="directionRadioIconltr">Left to Right (En)</label>
                            </div>
                            <div class="col-4 px-2">
                                <div class="form-check custom-option custom-option-icon mb-0">
                                    <label class="form-check-label custom-option-content p-0" for="directionRadioIconrtl">
                                        <span class="custom-option-body mb-0">
                                            <img src="/SWP_Project/assets/img/customizer/rtl.svg" alt="Right to Left (Ar)" class="img-fluid scaleX-n1-rtl">
                                        </span>
                                        <input name="directionRadioIcon" class="form-check-input d-none" type="radio" value="rtl" id="directionRadioIconrtl">
                                    </label>
                                </div>
                                <label class="form-check-label small text-nowrap" for="directionRadioIconrtl">Right to Left (Ar)</label>
                            </div>
                        </div> </div> </div> </div> </div>
        <script type="text/javascript" id="">console.log("TS:GTM Worked!");</script>
        <script type="text/javascript" id="">(function (b, c, d) {
                var a = b.createElement("script");
                a.type = "text/javascript";
                a.src = "https://a.omappapi.com/app/js/api.min.js";
                a.async = !0;
                a.dataset.user = c;
                a.dataset.account = d;
                b.getElementsByTagName("head")[0].appendChild(a)
            })(document, 252882, 269977);</script>
        <div id="om-bmfrltdyrytgkiod0ppo-holder">
        </div>
        <iframe id="_hjSafeContext_40580919" title="_hjSafeContext" tabindex="-1" aria-hidden="true" src="about:blank" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;">
        </iframe>
    </body>
</html>
