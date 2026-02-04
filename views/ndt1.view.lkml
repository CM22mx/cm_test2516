view: ndt1 {
    derived_table: {
      explore_source: order_items {
        column: status { field: orders.status }
        column: count { field: orders.count }
        column: id { field: orders.id }
      }
    }
    dimension: status {
      description: ""
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: id {
      description: ""
      type: number
    }
  }

