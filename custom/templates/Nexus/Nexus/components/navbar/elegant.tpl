<style>
	/* The sticky class is added to the navbar with JS when it reaches its scroll position */
	.mainsticky {
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 99999999;
	}

	.ui.steps {
		border: 0 !important;
	}
</style>

{if $OPAL_MCSERVER_STYLE != 'false'}
	{include file='Nexus/components/status/simple.tpl'}
{else}
	{include file='Nexus/components/status/advanced.tpl'}
{/if}


<div class="ui vertical inverted sidebar menu left" id="toc">
	<div class="item">
		<h3>{$SITE_NAME}</h3>
	</div>
	{foreach from=$NAV_LINKS key=name item=item}
		{if isset($item.items)}
			<div class="item">
				<div class="header">{$item.title} <span class="icon">{$item.icon}</span></div>
				<div class="menu">
					{foreach from=$item.items item=dropdown}
						<a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
					{/foreach}
				</div>
			</div>
		{else}
			<a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon}
				{$item.title}</a>
		{/if}
	{/foreach}
</div>

<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</head>

<div class="ui secondary {$DEFAULT_REVAMP_NAVBAR_EXTRA_CLASSES} {if isset($NAVBAR_SIZE)}{$NAVBAR_SIZE}{else}small{/if} menu" id="navbar"
	style="background: {if ("{$NAVBAR_COLOR}" === "#000000")} {$TEMPLATE_COLOR}{else} {$NAVBAR_COLOR}{/if};">
	<div class="ui container">
		{foreach from=$NAV_LINKS key=name item=item}
			{if isset($item.items)}
				<div class="ui pointing dropdown link item">
					<span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
					<div class="menu">
						<div class="header">{$item.title}</div>
						{foreach from=$item.items item=dropdown}
							{if isset($dropdown.separator)}
								<div class="divider"></div>
							{else}
								<a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
							{/if}
						{/foreach}
					</div>
				</div>
			{else}
				<a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon}
					{$item.title}</a>
			{/if}
		{/foreach}
		<a class="toc item">
			<i class="sidebar icon"></i>
		</a>
		<div class="right menu" style="margin:10px;">
			{foreach from=$USER_SECTION key=name item=item}
				{if isset($item.items)}
					{if ($name == "account")}
						<a class="ui medium image label" data-toggle="popup" data-position="bottom right" id="button-{$name}">{$item.icon}
							{$item.title}</a>
					{else}
						<a class="ui small default icon button" data-toggle="popup" data-position="bottom right"
							id="button-{$name}">{$item.icon}</a>
					{/if}
					<div class="ui wide basic popup">
						<h4 class="ui header">{$item.title}</h4>
						<div class="ui relaxed link list" id="list-{$name}">
							{foreach from=$item.items item=dropdown}
								{if isset($dropdown.separator)}
									<div class="ui divider"></div>
								{else}
									<a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
								{/if}
							{/foreach}
						</div>
						{if !empty($item.meta)}
							<div class="ui link list">
								<div class="ui divider"></div>
								<a class="item" href="{$item.link}">{$item.meta}</a>
							</div>
						{/if}
					</div>
				{else}
					{if ($name == "panel")}
						<a class="ui small primary icon button" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
					{elseif ($name == "register")}
						<a class="ui small inverted button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
					{else}
						<a class="ui small inverted button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
					{/if}
				{/if}
			{/foreach}
		</div>
	</div>
</div>

<div class="ui stackable three column grid" {if isset($BANNER_IMAGE)}
		style="background-image:url('{$BANNER_IMAGE}'); padding: {if isset($NAV_HEIGHT)} {$NAV_HEIGHT}{else} 45{/if}px;margin-top:0px!important;border-bottom-left-radius: 85% 20%;border-bottom-right-radius: 85% 20%;"
	{/if}>
	{if $DISCORD != 'true'}
	<div class="column" style="text-align: center;margin-top: 5rem;">
	</div>
	{else}
	<div onclick="dsInvite('{$DISCORD_SERVER['link']}')" class="column" style="text-align: center;margin-top: 5rem;">
		<div class="ui steps">
			<div class="step" style="background: transparent;color: white;">
				<i class="discord icon"></i>
				<div class="content">
					<div class="title">{$DISCORD_SERVER['name']}</div>
					<div class="description" style="color: white;">Members Online: {$DISCORD_SERVER['members']}</div>
					<div class="description" style="color: white;"><strong>Click to join</strong></div>
				</div>
			</div>
		</div>
	</div>
	{/if}
	<div class="column" style="text-align: center; align: middle;">
		<div class="ui medium image" href="/" target="_blank">
			<img onclick="window.location.href='/'"
				src="{if isset($TEMPLATE_LOGO)} {$TEMPLATE_LOGO}{else}https://i.redd.it/2kdpm1d9kkx41.png{/if}"
				style="cursor:pointer; display: unset;max-width: 100%;height: auto;">
		</div>
	</div>
	{if $MINECRAFT != 'true'}
	{else}
	<div class="column" onclick="copyIP('{$OPAL_MCSERVER_IP}:{$OPAL_MCSERVER_PORT}')"
		style="text-align: center;margin-top: 5rem;">
		<div class="ui steps">
			<div class="step" style="background: transparent;color: white;">
				<i class="signal icon"></i>
				<div class="content" onclick="change_copied_ip()">
					<div class="title">{if isset($OPAL_MCSERVER_NAME)} {$OPAL_MCSERVER_NAME}{else}MC.HYPIXEL.NET{/if}</div>
					<div id="rest">Loading ...</div>
					<div id="copy_ip" class="description" style="color: white;"><strong>Click to copy</strong></div>
				</div>
			</div>
		</div>
	</div>
	{/if}
</div>

<script>
function change_copied_ip(){
    document.getElementById("copy_ip").innerHTML = "<strong>Copied</strong>";
}
</script>

{if $NAV_FIXED == 1}
	<script>
		// When the user scrolls the page, execute myFunction
		window.onscroll = function() {
			myFunction()
		};

		// Get the navbar
		var navbar = document.getElementById("navbar");

		// Get the offset position of the navbar
		var sticky = navbar.offsetTop;

		// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
		function myFunction() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("mainsticky")
			} else {
				navbar.classList.remove("mainsticky");
			}
		}
	</script>
{/if}


<script>
	function dsInvite(link) {
		if (link !== '') {
			window.open(link);
		}
		return false;
	}

	function copyIP(ip, text = 'Copied') {
		var servIP = document.createElement("textarea");
		document.body.appendChild(servIP);
		servIP.value = ip;
		servIP.select();
		document.execCommand("copy");
		document.body.removeChild(servIP);

		var copyBlock = document.getElementById("copyBlock");
		copyBlock.innerHTML = text;
		copyBlock.classList.add("showBlock");
		setTimeout(function() {
			copyBlock.classList.remove('showBlock');
		}, 3000)

	}
</script>

{include file='Nexus/components/colors.tpl'}



<div class="ui container"
	style="width:{if isset($CONTAINER_WIDTH)}{$CONTAINER_WIDTH}{else}{/if}%;margin-top:{if isset($MARGIN_TOP)}{$MARGIN_TOP}{else}15{/if}px;">

	{if isset($NEW_UPDATE)}
		{if $NEW_UPDATE_URGENT eq true}
			<div class="ui negative icon message" id="update-message">
			{else}
				<div class="ui info icon message" id="update-message">
					<i class="close icon"></i>
				{/if}
				<a href="{$UPDATE_LINK}">
					<i class="download icon"></i>
				</a>
				<div class="content">
					<div class="header">{$NEW_UPDATE}</div>
					<ul class="list">
						<li>{$CURRENT_VERSION}</li>
						<li>{$NEW_VERSION}</li>
					</ul>
				</div>
			</div>
		{/if}

		{if !empty($ANNOUNCEMENTS)}
			{foreach from=$ANNOUNCEMENTS item=$ANNOUNCEMENT}
			<div class="ui icon message announcement" id="announcement-{$ANNOUNCEMENT->id}" style="background-color:{$ANNOUNCEMENT->background_colour}; color:{$ANNOUNCEMENT->text_colour}">
								{if $ANNOUNCEMENT->closable}<i class="close icon"></i>{/if}
					{if isset($ANNOUNCEMENT->icon)}
						<i class="{$ANNOUNCEMENT->icon}"></i>
					{/if}
					<div class="content">
						<div class="header">{$ANNOUNCEMENT->header}</div>
						<p>{$ANNOUNCEMENT->message|htmlspecialchars_decode}</p>
					</div>
				</div>
			{/foreach}
		{/if}

		{if isset($MUST_VALIDATE_ACCOUNT)}
			<div class="ui message">
				{$MUST_VALIDATE_ACCOUNT}
			</div>
		{/if}
