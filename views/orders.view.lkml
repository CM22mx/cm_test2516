view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;

    html:
    {% if value < 10 %}
    <font color:"darkgreen">{{ rendered_value }}</font>
    {% elsif value > 20%}
    <font color:"goldenrod">{{ rendered_value }}</font>
    {% else %}
    <font color:"darkred">{{ rendered_value }}</font>
    {% endif %} ;;

  }

  dimension: value {
    sql: ${TABLE}.id ;;
    type: number
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;


    link: {
      label: "desired label name"
      url: "https://docs.cloud.google.com/looker/docs/derived-tables#persistent_derived_table"
      icon_url: "url_of_an_image_file"
    }


    drill_fields: [detail*]

  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }


  measure: formatted_count {
    type: count
    html:
    {% if value > 100 %}
      <span style="color:darkgreen;">{{ rendered_value }}</span>
    {% elsif value < 50 %}
      <span style="color:goldenrod;">{{ rendered_value }}</span>
    {% else %}
      <span style="color:darkred;">{{ rendered_value }}</span>
    {% endif %} ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.id,
  users.first_name,
  users.last_name,
  billion_orders.count,
  fakeorders.count,
  hundred_million_orders.count,
  hundred_million_orders_wide.count,
  order_items.count,
  order_items_vijaya.count,
  ten_million_orders.count
  ]
  }

}
