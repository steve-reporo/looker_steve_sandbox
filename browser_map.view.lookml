- view: browser_map
  sql_table_name: analytics.browser_map
  fields:

  - dimension: browser
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.browser

  - dimension: browser_name
    type: string
    sql: ${TABLE}.name
