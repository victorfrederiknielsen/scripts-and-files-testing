resource "layout" "side_by_side" {
  column {
    instructions {
    }
  }

  column {
    tab "terminal" {
      terminal {
        target = resource.container.workstation
      }
    }
  }
}
