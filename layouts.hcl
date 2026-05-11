resource "layout" "side_by_side" {
  column {
    instructions {
    }
  }

  column {
    tab "terminal" {
      target = resource.container.workstation
    }
  }
}
