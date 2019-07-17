## Webroot

This batch script disables the Webroot SecureAnywhere DNS Protection Agent service and sets the client PC to get DNS from DNS Server on domain rather than Webroot DNS Service.

This will remove the loopback address set by Webroot DNS.

To revert changes, all that needs to be done is starting Webroot SecureAnywhere DNS Protection Agent and ```ipconfig /release && ipconfig /renew``` (or reboot)
