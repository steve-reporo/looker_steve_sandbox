- view: isp_map
  sql_table_name: analytics.isp_map
  fields:

  - dimension: isp
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.isp

  - dimension: isp_name
    type: string
    sql: ${TABLE}.name
    