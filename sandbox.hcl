resource "container" "workstation" {
  image = "instruqt/ubuntu-base"

  volume {
    destination = "/tmp/files"
    read_only   = false
    source      = resource.file_tree.lab_files
  }
}

resource "file_tree" "lab_files" {
  source = "./files"
}
