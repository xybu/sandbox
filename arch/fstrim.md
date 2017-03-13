$ sudo vim /usr/lib/systemd/system/fstrim.service

```
[Unit]
Description=Trim free cells on the SSD.
After=local-fs.target

[Service]
ExecStart=/usr/bin/fstrim -a -v
Type=oneshot

[Install]
WantedBy=multi-user.target
```

Then 

$ systemctl enable fstrim.service
$ systemctl status fstrim
