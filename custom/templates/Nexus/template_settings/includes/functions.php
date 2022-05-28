<?php
$smarty->assign(array(
    // Options
        'FOOTERABOUT' => $footerAbout,
        'CUSTOMCSS' => $customCSS,
        'CUSTOMJS' => $customJS,

    // Colors
        'DARKMODE' => $darkMode,
        'COLORSSTYLE' => $colorsStyle,
        'PRIMARYCOLOR' => $primaryColor,
        'NAVBARCOLOR' => $navbarColor,
        'FOOTERCOLOR' => $footerColor,
        'OUTLINECOLOR' => $outlineColor,
        'NAVBARTEXTCOLOR' => $navbarTextColor,

    // Navbar
        'NAVBARLOGO' => $navbarLogo,
        'NAVBARSTICKY' => $navbarSticky,
        'NAVBARSTYLE' => $navbarStyle,

    // Connections
        // Discord
            'DISCORDVIEW' => $discordView,
            'DISCORDID' => $discordID,

        // Minecraft
            'MINECRAFTVIEW' => $minecraftView,
            'MINECRAFTDOMAIN' => $minecraftDomain,
            'MINECRAFTIP' => $minecraftIP,
            'MINECRAFTPORT' => $minecraftPort,
            'MINECRAFTSTYLE' => $minecraftStyle,

    // Arc
        'ARCVIEW' => $arcView,
        'ARCURL' => $arcURL,

    // Widgets
        // Donation
            'DONATEEMAIL' => $donateEmail,
            'DONATEFIRSTAMOUNT' => $donateFirstAmount,
            'DONATESECONDAMOUNT' => $donateSecondAmount,
            'DONATETHIRDAMOUNT' => $donateThirdAmount,

        // Message
            'MESSAGETITLE' => $messageTitle,
            'MESSAGETEXT' => $messageText,
            'MESSAGEICON' => $messageIcon,

    // Embed
        'EMBEDTITLE' => $embedTitle,
        'EMBEDTEXT' => $embedText,
        'EMBEDCOLOR' => $embedColor,
        'EMBEDICON' => $embedIcon,
        'EMBEDKEYWORDS' => $embedKeywords
));