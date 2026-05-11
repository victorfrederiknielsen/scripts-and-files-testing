resource "task" "create_a_file" {
  title = "Create a file"

  config {
    target = resource.container.workstation
  }

  condition "file_exists" {
    description = "Create a file called hello.txt in /tmp"

    setup {
      script = file("scripts/create-a-file/setup.sh")
    }

    check {
      script          = file("scripts/create-a-file/check.sh")
      failure_message = "The file /tmp/hello.txt does not exist yet. Create it using the touch or echo command."
    }

    solve {
      script = file("scripts/create-a-file/solve.sh")
    }
  }
}

resource "task" "configure_the_app" {
  title = "Configure the application"

  config {
    target = resource.container.workstation
  }

  condition "config_updated" {
    description = "Update the app configuration with your name"

    setup {
      script = file("scripts/configure-the-app/setup.sh")
    }

    check {
      script          = file("scripts/configure-the-app/check.sh")
      failure_message = "The configuration file at /opt/app/config.yaml does not contain a valid name. Edit it and replace YOUR_NAME_HERE with your actual name."
    }

    solve {
      script = file("scripts/configure-the-app/solve.sh")
    }
  }
}
