- view: finance_advertiser_map
  sql_table_name: analytics.finance_advertiser_map
  fields:

  - dimension: finance_advertiser_id
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.finance_advertiser_id

  - dimension: finance_advertiser_name
    type: string
    sql: ${TABLE}.name

