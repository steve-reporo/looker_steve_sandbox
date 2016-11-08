- view: manager_map
  sql_table_name: analytics.manager_map
  fields:

  - dimension: manager
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.manager

  - dimension: client_manager_name
    type: string
    sql: ${TABLE}.name
    links:
      - label: Manager Details Dashboard
        url: /dashboards/8?Client Manager={{ value | encode_uri }}
        icon_url: http://www.looker.com/favicon.ico
    
  - dimension: affiliate_manager_name
    type: string
    sql: ${TABLE}.name
    links:
      - label: Manager Details Dashboard
        url: /dashboards/8?Affiliate Manager={{ value | encode_uri }}
        icon_url: http://www.looker.com/favicon.ico


# Mod to create affiliate field group

#   - dimension: affiliate_manager_name
#     view_label: 'Affiliate Fields'
#     type: string
#     sql: ${TABLE}.name
#     links:
#       - label: Manager Details Dashboard
#         url: /dashboards/8?Affiliate Manager={{ value | encode_uri }}
#         icon_url: http://www.looker.com/favicon.ico