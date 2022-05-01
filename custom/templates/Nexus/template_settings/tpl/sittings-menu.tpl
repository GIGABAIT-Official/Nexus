<div class="card mb-3">
    <h3 class="card-header mb-3 text-center">{$NAVIGATION}</h3>
    <div class="card-body">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link {if !isset($TPL_NAME_SESSION) or $TPL_NAME_SESSION eq 'options'}active{/if}"
                id="v-pills-options-tab" data-toggle="pill" href="#v-pills-options" role="tab"
                aria-controls="v-pills-options" aria-selected="true"><i class="fa-solid fa-cog"></i> {$OPTIONS_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'colors'}active{/if}" id="v-pills-colors-tab" data-toggle="pill"
                href="#v-pills-colors" role="tab" aria-controls="v-pills-colors" aria-selected="false"><i
                    class="fa-solid fa-paint-brush"></i> {$COLORS_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'navbar'}active{/if}" id="v-pills-navbar-tab" data-toggle="pill"
                href="#v-pills-navbar" role="tab" aria-controls="v-pills-navbar" aria-selected="false"><i
                    class="fa-solid fa-compass"></i> {$NAVBAR_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'connections'}active{/if}" id="v-pills-connections-tab"
                data-toggle="pill" href="#v-pills-connections" role="tab" aria-controls="v-pills-connections"
                aria-selected="false"><i class="fa-solid fa-signal"></i> {$CONNECTIONS_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'preloader'}active{/if}" id="v-pills-preloader-tab"
                data-toggle="pill" href="#v-pills-preloader" role="tab" aria-controls="v-pills-preloader"
                aria-selected="false"><i class="fa-solid fa-spinner"></i> {$PRELOADER_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'addons'}active{/if}" id="v-pills-addons-tab" data-toggle="pill"
                href="#v-pills-addons" role="tab" aria-controls="v-pills-addons" aria-selected="false"><i
                    class="fa-solid fa-puzzle-piece"></i> {$ADDONS_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'widgets'}active{/if}" id="v-pills-widgets-tab"
                data-toggle="pill" href="#v-pills-widgets" role="tab" aria-controls="v-pills-widgets"
                aria-selected="false"><i class="fa-solid fa-th-large"></i> {$WIDGETS_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'embed'}active{/if}" id="v-pills-embed-tab" data-toggle="pill"
                href="#v-pills-embed" role="tab" aria-controls="v-pills-embed" aria-selected="false"><i
                    class="fa-solid fa-link"></i>
                {$EMBED_PAGE}</a>
            <a class="nav-link {if $TPL_NAME_SESSION eq 'update'}active{/if}" id="v-pills-update-tab" data-toggle="pill"
                href="#v-pills-update" role="tab" aria-controls="v-pills-update" aria-selected="false"><i
                    class="fa-solid fa-cloud-download-alt"></i> {$UPDATES_PAGE}</a>
            <a class="nav-link" href="https://resourcemc.net/discord" target="_blank"><i
                    class="fa-solid fa-life-ring"></i>
                {$SUPPORT_PAGE}</a>
            <style>
                .nav-link {
                    color: #979797;
                }
            </style>
        </div>
    </div>
</div>