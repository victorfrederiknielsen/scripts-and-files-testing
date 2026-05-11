## Configure the Application

A configuration file has been provisioned at `/opt/app/config.yaml`. Take a look:

```bash
cat /opt/app/config.yaml
```

You'll see a placeholder `YOUR_NAME_HERE`. Replace it with your actual name using your favorite editor or a `sed` command:

```bash
sed -i 's/YOUR_NAME_HERE/Jane/' /opt/app/config.yaml
```

Once updated, click **Check** to verify.

<instruqt-task id="configure_the_app"></instruqt-task>
