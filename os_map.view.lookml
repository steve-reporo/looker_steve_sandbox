- view: os_map
  sql_table_name: analytics.os_map
  fields:

  - dimension: os_name
    type: string
    sql: ${TABLE}.name

  - dimension: os
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.os
