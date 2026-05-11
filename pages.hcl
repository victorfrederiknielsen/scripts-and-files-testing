resource "page" "intro" {
  title = "Introduction"
  file  = "instructions/getting-started/intro.md"
}

resource "page" "create_a_file" {
  title = "Create a File"
  file  = "instructions/getting-started/create-a-file.md"

  activities = {
    create_a_file = resource.task.create_a_file
  }
}

resource "page" "configure_the_app" {
  title = "Configure the App"
  file  = "instructions/getting-started/configure-the-app.md"

  activities = {
    configure_the_app = resource.task.configure_the_app
  }
}
