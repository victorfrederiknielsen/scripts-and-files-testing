resource "container" "workstation" {
  image {
    name = "ubuntu:22.04"
  }

  volume {
    source      = "./files"
    destination = "/tmp/files"
    read_only   = true
  }
}
