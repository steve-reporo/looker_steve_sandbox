- view: campaign_category_map
  sql_table_name: analytics.campaign_category_map
  fields:

  - dimension: campaign_category
    hidden: true
    type: number
    sql: ${TABLE}.campaigncategory

  - dimension: campaign_category_name
    group_label: Campaign
    type: string
    sql: ${TABLE}.name
