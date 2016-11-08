- view: device_map
  sql_table_name: analytics.device_map
  fields:

  - dimension: device
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.device

  - dimension: device_name
    type: string
    sql: ${TABLE}.name

