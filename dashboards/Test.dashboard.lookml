- name: add_a_unique_name_1758602041
  title: Untitled Visualization
  model: cm_test2516
  explore: inventory_items
  type: table
  fields: [inventory_items.cost, inventory_items.count, inventory_items.product_id,
    products.brand]
  sorts: [inventory_items.count desc 0]
  limit: 500
  column_limit: 50
  filters:
  - name: Year
    title: Year1
    type: field_filter
    default_value: '2025'
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: cm_test2516
    explore: inventory_items
    listens_to_filters: []
    field: inventory_items.year
