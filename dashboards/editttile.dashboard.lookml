---
- dashboard: pie_test
  title: Pie test
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: CQZV2fWFkqytZBU0INnkU0
  elements:
  - title: Pie test
    name: Pie test
    model: cm_test2516
    explore: budget
    type: looker_pie
    fields: [budget.count, budget.category]
    filters:
      budget.year: '2025'
    sorts: [budget.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Year: budget.year
    row: 0
    col: 0
    width: 24
    height: 12
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
    explore: budget
    listens_to_filters: []
    field: budget.year
