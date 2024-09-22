{ pkgs, ... }:
{
  systemd.timers.borg-backup-timer = {
    description = "Run Borg Backup Daily at Midnight";
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "21:00"; # Run daily at 21:00
      Persistent = true; # Ensures that missed executions (e.g., due to system downtime) will be executed as soon as possible
      Unit = "borg-backup.service"; # Ties the timer to the `borg-backup` service
    };
  };

  systemd.services.borg-backup = {
    description = "Run borg-backup script";
    after = [ "network.target" ]; # Ensure network is available if your backup involves networked drives
    serviceConfig = {
      ExecStart = "${pkgs.bash}/bin/bash /home/lucas/.local/bin/borg-backup";
      # ExecStart = "${pkgs.bash}/bin/bash /home/lucas/.local/bin/borg-backup";
      User = "lucas";
      Group = "lucas";
      Restart = "on-failure";
      StandardOutput = "journal";
      StandardError = "journal";
      EnvironmentFile = "/etc/secrets/borg_passphrase";
    };
  };
}
