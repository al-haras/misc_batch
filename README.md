## Misc. Batch Scripts

This is a place for misc batch scripts created.

### Webroot

This batch script disables the Webroot SecureAnywhere DNS Protection Agent service and sets the client PC to get DNS from DNS Server on domain rather than Webroot DNS Service.

### Delta Sync

This batch script is designed to setup tasks in task scheduler which will trigger a Delta Sync on a server with Azure AD Connect. It monitors for IDs 4720 (New User Creation) and 4724 (Password Change). It will trigger deltasync.ps1.

To remove tasks, you can run ```DeleteDeltaSyncTasks.bat``` and everything (including deltasync.ps1) will be removed.
