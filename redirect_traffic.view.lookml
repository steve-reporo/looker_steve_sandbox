# --- NEW FILE --- 

- view: redirect_traffic

  derived_table:
    sql: |
      SELECT 
        isp_map.name AS isp_map_isp_name,
        COALESCE(CAST(SUM(analytics.impressions) AS FLOAT), 0) AS analytics_total_impressions
      FROM ( SELECT * FROM (TABLE_DATE_RANGE([analytics.analytics],TIMESTAMP(DATE_ADD(TIMESTAMP(CONCAT(CURRENT_DATE(), ' 00:00:00')), -6, 'DAY')),TIMESTAMP(DATE_ADD(DATE_ADD(DATE_ADD(TIMESTAMP(CONCAT(CURRENT_DATE(), ' 00:00:00')), -6, 'DAY'), 7, 'DAY'),-1, 'SECOND')))))
       AS analytics
      LEFT JOIN analytics.isp_map AS isp_map ON analytics.isp = isp_map.isp
      
      WHERE BOOLEAN(zonegroup & 8032)
      
      GROUP EACH BY 1
      ORDER BY 2 DESC
      LIMIT 500

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: isp_map_isp_name
    type: string
    sql: ${TABLE}.isp_map_isp_name

  - dimension: analytics_total_impressions
    type: number
    sql: ${TABLE}.analytics_total_impressions

  sets:
    detail:
      - isp_map_isp_name
      - analytics_total_impressions

