- view: agency_map
  sql_table_name: analytics.agencyid_map
  fields:

  - dimension: agency_id
    primary_key: true
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.agencyid

  - dimension: agency_name
    type: string
    sql: ${TABLE}.name
