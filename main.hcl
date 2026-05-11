resource "lab" "main" {
  title       = "Scripts and Files Demo"
  description = "Learn how to use lifecycle scripts and files in Instruqt labs."
  layout      = resource.layout.side_by_side

  content {
    chapter "getting_started" {
      title = "Getting Started"

      page "intro" {
        reference = resource.page.intro
      }

      page "create_a_file" {
        reference = resource.page.create_a_file
      }

      page "configure_the_app" {
        reference = resource.page.configure_the_app
      }
    }
  }
}
