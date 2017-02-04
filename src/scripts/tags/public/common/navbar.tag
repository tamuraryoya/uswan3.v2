navbar

    nav.navbar
        ul.navbar-nav(class="{open: isOpen}")
            li.nav-item
                a.nav-anchor(href="#/search")
                    .icon.ion-android-search
                    .label 検索
            li.nav-item
                a.nav-anchor(href="#/schedule")
                    .icon.ion-ios-calendar-outline
                    .label 時間割
            li.nav-item
                a.nav-anchor(href="#/info")
                    .icon.ion-ios-information-outline
                    .label おしらせ
            li.nav-item
                span.nav-anchor
                    .icon.ion-ios-grid-view-outline
                    .label 準備中
            li.nav-item
                span.nav-anchor
                    .icon.ion-ios-grid-view-outline
                    .label 準備中
            li.nav-item
                a.nav-anchor(href="https://twitter.com/uswan2_" target="_blank")
                    .icon.ion-social-twitter-outline
                    .label Twitter
        .nav-large
            a.nav-large-wrapper(href="#/menu")
                .icon.ion-coffee
                .label 献立表
        .nav-more
            a.nav-anchor(href="#" class="{open: isOpen}" onclick="{toggleMoreMenu}")
                .navicon.ion-navicon
                .closer.ion-android-close

    side-menu
            
    script(type="es6").
        const u = require('../../../utils');
        const obs = u.observable();
    
        this.isOpen = false;
        this.toggleMoreMenu = (e) => {
            e.preventDefault();
            this.isOpen = !this.isOpen;
            obs.trigger('side-menu:toggle');
        }

    style(type="stylus").
        .navbar
            position fixed
            bottom 0
            left 0
            width 100%
            height 110px
            padding 0 60px 0 110px
            box-sizing border-box
            z-index 100
            .navbar-nav
                height 110px
                margin 0 -60px 0 -55px
                padding 0 60px 0 55px
                background #fff
                transform translateY(55px)
                transition transform .3s ease
                &.open
                    transform translateY(0)
                .nav-item
                    float left
                    width 33.333%
                    height 55px
                    text-align center
                    .nav-anchor
                        display block
                        padding 5px 0
                        text-decoration none
                        color #222
                        .icon
                            line-height 30px
                            font-size 25px
                        .label
                            line-height 15px
                            font-size 10px
            .nav-large
                $size = 110px
                position absolute
                bottom 0
                left 0
                width $size
                height $size
                background #fff
                border-radius 100%
                border-bottom-left-radius 0
                .nav-large-wrapper
                    position relative
                    display block
                    width ($size - 14)
                    height ($size - 14)
                    margin 4px
                    border-radius 100%
                    border 3px solid  #222
                    color #222
                    .icon
                        font-size 40px
                        text-align center
                        line-height 80px
                    .label
                        position absolute
                        bottom 5px
                        left 0
                        width 100%
                        height 35px
                        text-align center
                        font-size 12px
                        line-height 35px
            .nav-more
                position absolute
                bottom 0
                right 0
                overflow hidden
                width 60px
                height 55px
                font-size 36px
                .nav-anchor
                    position relative
                    display block
                    color #222
                    & > div
                        position absolute
                        width 60px
                        height 55px
                        text-align center
                        line-height 55px
                        transition all .3s ease
                    .navicon
                        opacity 1
                        transform translateY(0)
                    .closer
                        opacity 0
                        transform translateY(12px)
                    &.open
                        .navicon
                            opacity 0
                            transform translateY(-12px)
                        .closer
                            opacity 1
                            transform translateY(0)
