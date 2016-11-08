- view: costtype_map
  sql_table_name: analytics.costtype_map
  fields:

  - dimension: cost_type
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.costtype

  - dimension: zone_cost_type
    group_label: Zone
    type: string
    sql: ${TABLE}.name
