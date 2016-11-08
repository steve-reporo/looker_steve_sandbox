- view: revenuetype_map
  sql_table_name: analytics.revenuetype_map
  fields:

  - dimension: campaign_revenue_type
    group_label: Campaign
    type: string
    sql: ${TABLE}.name

  - dimension: revenue_type
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.revenuetype


