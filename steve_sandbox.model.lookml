- connection: bigquery-connection

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project
- case_sensitive: false

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}

- explore: analytics
  always_filter: 
    date_filter: last 7 days
  
  joins:
    - join: agency_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.agency_id} = ${agency_map.agency_id}

    - join: affiliate_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.affiliate_id} = ${affiliate_map.affiliate_id}

    - join: zone_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.zone_id} = ${zone_map.zone_id}

    - join: isp_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.isp} = ${isp_map.isp}
      
    - join: os_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.os} = ${os_map.os}
      
    - join: browser_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.browser} = ${browser_map.browser}
      
    - join: costtype_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.zone_cost_type} = ${costtype_map.cost_type}
      
    - join: device_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.device} = ${device_map.device}
      
    - join: client_manager
      from: manager_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.client_manager_id} = ${client_manager.manager}
      fields: [client_manager.client_manager_name]
      
    - join: affiliate_manager
      from: manager_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.affiliate_manager_id} = ${affiliate_manager.manager}
      fields: [affiliate_manager.affiliate_manager_name]
      
    - join: finance_advertiser_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.finance_advertiser_id} = ${finance_advertiser_map.finance_advertiser_id}
      
    - join: revenuetype_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.campaign_revenue_type} = ${revenuetype_map.revenue_type}
      
    - join: zonedelivery_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.zone_delivery} = ${zonedelivery_map.zone_delivery}
      
    - join: campaign_category_map
      view_label: "Analytics"
      type: left_outer
      relationship: many_to_one
      sql_on: ${analytics.campaign_category} = ${campaign_category_map.campaign_category}

