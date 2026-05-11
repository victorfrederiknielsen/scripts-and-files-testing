resource "task" "create_a_file" {
  description = "Create a file called hello.txt in /tmp"

  config {
    target = resource.container.workstation
  }

  condition "file_exists" {
    description = "Create /tmp/hello.txt"

    check {
      script          = "scripts/task/create_a_file/check.sh"
      failure_message = "The file /tmp/hello.txt does not exist yet. Create it using the touch or echo command."
    }

    solve {
      script = "scripts/task/create_a_file/solve.sh"
    }
  }
}

resource "task" "configure_the_app" {
  description = "Update the app configuration with your name"

  config {
    target = resource.container.workstation
  }

  condition "config_updated" {
    description = "Replace YOUR_NAME_HERE in /opt/app/config.yaml"

    check {
      script          = "scripts/task/configure_the_app/check.sh"
      failure_message = "The config at /opt/app/config.yaml still contains YOUR_NAME_HERE. Replace it with your name."
    }

    solve {
      script = "scripts/task/configure_the_app/solve.sh"
    }
  }
}
