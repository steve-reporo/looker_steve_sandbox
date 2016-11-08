- view: zone_map
  sql_table_name: analytics.zone_map
  fields:

  - dimension: zone_name
    group_label: Zone
    type: string
    sql: ${TABLE}.name

  - dimension: zone_id
    primary_key: true
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.zoneid
