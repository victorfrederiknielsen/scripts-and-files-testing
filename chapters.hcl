resource "chapter" "getting_started" {
  title = "Getting Started"
  layout = resource.layout.side_by_side

  page "intro" {
    title      = "Introduction"
    content    = file("instructions/getting-started/intro.md")
  }

  page "create_a_file" {
    title      = "Create a File"
    content    = file("instructions/getting-started/create-a-file.md")
  }

  page "configure_the_app" {
    title      = "Configure the App"
    content    = file("instructions/getting-started/configure-the-app.md")
  }
}
