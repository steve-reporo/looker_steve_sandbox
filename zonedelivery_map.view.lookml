- view: zonedelivery_map
  sql_table_name: analytics.zonedelivery_map
  fields:

  - dimension: zone_delivery_name
    group_label: Zone
    type: string
    sql: ${TABLE}.name

  - dimension: zone_delivery
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.zonedelivery
