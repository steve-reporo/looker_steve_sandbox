# New File

- explore: zone_group

- view: zone_group

  # Example for creating a derived table to be joined back in - can be deleted if not needed
  # Needs a key to join back to main analytics view

  derived_table:
    sql: |
      SELECT 
        analytics_zg.zonegroup
        ,ROW_NUMBER() OVER() row_number
        ,CASE
        WHEN BOOLEAN(analytics_zg.zonegroup & 1) THEN 'Adult 2.7+'
        WHEN BOOLEAN(analytics_zg.zonegroup & 2) THEN 'Glam Uncategorised'
        WHEN BOOLEAN(analytics_zg.zonegroup & 4) THEN 'Non Adult'
        WHEN BOOLEAN(analytics_zg.zonegroup & 8) THEN 'Gay'
        WHEN BOOLEAN(analytics_zg.zonegroup & 16) THEN 'Test/Fraud'
        WHEN BOOLEAN(analytics_zg.zonegroup & 32) THEN 'Redirect'          
        WHEN BOOLEAN(analytics_zg.zonegroup & 64) THEN 'Redirect' 
        WHEN BOOLEAN(analytics_zg.zonegroup & 128) THEN 'Gambling'
        WHEN BOOLEAN(analytics_zg.zonegroup & 256) THEN 'Redirect Premium'
        WHEN BOOLEAN(analytics_zg.zonegroup & 512) THEN 'Popunder Members'
        WHEN BOOLEAN(analytics_zg.zonegroup & 1024) THEN 'Popunder Gay'
        WHEN BOOLEAN(analytics_zg.zonegroup & 2048) THEN 'Redirect Gay'
        WHEN BOOLEAN(analytics_zg.zonegroup & 4096) THEN 'Redirect Exit'
        WHEN BOOLEAN(analytics_zg.zonegroup & 8192) THEN 'Glam'
        WHEN BOOLEAN(analytics_zg.zonegroup & 16384) THEN 'Push'
        WHEN BOOLEAN(analytics_zg.zonegroup & 32768) THEN 'Mainstream Banner'
        WHEN BOOLEAN(analytics_zg.zonegroup & 65536) THEN 'Mainstream Popunder'
        WHEN BOOLEAN(analytics_zg.zonegroup & 131072) THEN 'Mainstream Fraud'
        WHEN BOOLEAN(analytics_zg.zonegroup & 524288) THEN 'Mainstream Popunder Bikini'
        WHEN BOOLEAN(analytics_zg.zonegroup & 262144) THEN 'Desktpo Banner'
        WHEN BOOLEAN(analytics_zg.zonegroup & 1048576) THEN 'Desktop Popunder'
        WHEN BOOLEAN(analytics_zg.zonegroup & 2097152) THEN 'Native Widget'
        WHEN BOOLEAN(analytics_zg.zonegroup & 4194304) THEN 'Native Desktop Widget'
      END AS analytics_zone_group_name
      
      

  fields:

  - dimension: row_number
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.row_number

  - dimension: zone_group
    type: string
    sql: ${TABLE}.zonegroup

  - dimension: analytics_zone_group_name
    type: string
    sql: ${TABLE}.analytics_zone_group_name
# 
#   sets:
#     detail:
#       - analytics_zone_group_name




# FROM    ( SELECT * FROM {% table_date_range ${analytics.date_filter} analytics.analytics %}) as analytics_zg