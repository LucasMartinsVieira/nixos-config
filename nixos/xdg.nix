_: {
  xdg = {
    portal = {
      enable = true;
      wlr.enable = true;
    };
    icons.enable = true;
    mime = {
      enable = true;
      defaultApplications = {
        "text/*" = "nvim.desktop";
        "text/plain" = "nvim.desktop";
        "application/pdf" = "org.pwmt.zathura.desktop";
        "application/rdf+xml" = "org.pwmt.zathura.desktop";
        "application/rss+xml" = "org.pwmt.zathura.desktop";
        "application/xhtml+xml" = "org.pwmt.zathura.desktop";
        "application/xhtml_xml" = "org.pwmt.zathura.desktop";
        "application/xml" = "org.pwmt.zathura.desktop";
        "image/*" = "imv.desktop";
        "image/png" = "imv.desktop";
        "image/jpeg" = "imv.desktop";
        "image/gif" = "imv.desktop";
        "image/webp" = "imv.desktop";
        "video/*" = "mpv.desktop";
        "text/html" = "firefox.desktop";
        "text/xml" = "firefox.desktop";
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "x-scheme-handler/about" = "firefox.desktop";
        "x-scheme-handler/unknown" = "firefox.desktop";
        "x-scheme-handler/mailto" = "firefox.desktop";
        "x-scheme-handler/webcal" = "firefox.desktop";
      };
    };
  };
}
