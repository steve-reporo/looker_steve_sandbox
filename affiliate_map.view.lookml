
- view: affiliate_map
  sql_table_name: analytics.affiliate_map
  
  fields:

  - dimension: affiliate_id
    view_label: 'Affiliate Fields'
    primary_key: true
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.affiliateid
    hidden: true

  - dimension: affiliate_name
    view_label: 'Affiliate Fields'
    type: string
    sql: CONCAT(${TABLE}.name, ' [id:', STRING(${affiliate_id}), ']')
    description: 'Affiliate name with id concatenated e.g. Affiliate [id:1234]'