- view: analytics
#   sql_table_name: analytics.analytics20150901
  sql_table_name: |
      ( SELECT * FROM {% table_date_range date_filter analytics.analytics %})

  fields:
  - filter: date_filter #This date filter is used in the table_date_range tab and as an explore filter.
    type: date


  - dimension: affiliate_id
    view_label: 'Affiliate Fields'
  
    type: number
    value_format_name: id
    sql: ${TABLE}.affiliateid

  - dimension: affiliate_manager_id
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.affiliatemanagerid

  - dimension: agency_id
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.agencyid

#   - dimension: banner_id
#     type: number
#     value_format_name: id
#     sql: ${TABLE}.bannerid

  - dimension: browser
    hidden: true
    type: number
    sql: ${TABLE}.browser

  - dimension: campaign_category
    hidden: true
    type: number
    sql: ${TABLE}.campaigncategory

  - dimension: campaign_id
    group_label: Campaign
    type: number
    value_format_name: id
    sql: ${TABLE}.campaignid

  - dimension: campaign_priority
    group_label: Campaign
    type: number
    sql: ${TABLE}.campaignpriority

  - dimension: campaign_revenue_type
    hidden: true
    type: number
    sql: ${TABLE}.campaignrevenuetype

  - dimension: campaign_self_managed
    group_label: Campaign
    type: yesno
    sql: ${TABLE}.campaignselfmanaged

  - dimension: clicks
    hidden: true
    type: number
    sql: ${TABLE}.clicks

  - dimension: client_id
    type: number
    value_format_name: id
    sql: ${TABLE}.clientid

  - dimension: client_manager_id
    hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.clientmanagerid

  - dimension: conversions
    hidden: true
    type: number
    sql: ${TABLE}.conversions

  - dimension: cost
    hidden: true
    type: number
    sql: ${TABLE}.cost

  - dimension: country_code
    type: string
    sql: UPPER(${TABLE}.country)
    map_layer: countries
    
  - dimension: country_name
    type: string
    map_layer: countries
    sql: |
        CASE
          WHEN ${TABLE}.country = 'ad' THEN 'Andorra'
          WHEN ${TABLE}.country = 'ae' THEN 'United Arab Emirates'
          WHEN ${TABLE}.country = 'af' THEN 'Afghanistan'
          WHEN ${TABLE}.country = 'ag' THEN 'Antigua and Barbuda'
          WHEN ${TABLE}.country = 'ai' THEN 'Anguilla'
          WHEN ${TABLE}.country = 'al' THEN 'Albania'
          WHEN ${TABLE}.country = 'am' THEN 'Armenia'
          WHEN ${TABLE}.country = 'ao' THEN 'Angola'
          WHEN ${TABLE}.country = 'aq' THEN 'Antarctica'
          WHEN ${TABLE}.country = 'ar' THEN 'Argentina'
          WHEN ${TABLE}.country = 'as' THEN 'American Samoa'
          WHEN ${TABLE}.country = 'at' THEN 'Austria'
          WHEN ${TABLE}.country = 'au' THEN 'Australia'
          WHEN ${TABLE}.country = 'aw' THEN 'Aruba'
          WHEN ${TABLE}.country = 'az' THEN 'Azerbaijan'
          WHEN ${TABLE}.country = 'ba' THEN 'Bosnia and Herzegovina'
          WHEN ${TABLE}.country = 'bb' THEN 'Barbados'
          WHEN ${TABLE}.country = 'bd' THEN 'Bangladesh'
          WHEN ${TABLE}.country = 'be' THEN 'Belgium'
          WHEN ${TABLE}.country = 'bf' THEN 'Burkina Faso'
          WHEN ${TABLE}.country = 'bg' THEN 'Bulgaria'
          WHEN ${TABLE}.country = 'bh' THEN 'Bahrain'
          WHEN ${TABLE}.country = 'bi' THEN 'Burundi'
          WHEN ${TABLE}.country = 'bj' THEN 'Benin'
          WHEN ${TABLE}.country = 'bm' THEN 'Bermuda'
          WHEN ${TABLE}.country = 'bn' THEN 'Brunei Darussalam'
          WHEN ${TABLE}.country = 'bo' THEN 'Bolivia'
          WHEN ${TABLE}.country = 'br' THEN 'Brazil'
          WHEN ${TABLE}.country = 'bs' THEN 'Bahamas'
          WHEN ${TABLE}.country = 'bt' THEN 'Bhutan'
          WHEN ${TABLE}.country = 'bv' THEN 'Bouvet Island'
          WHEN ${TABLE}.country = 'bw' THEN 'Botswana'
          WHEN ${TABLE}.country = 'by' THEN 'Belarus'
          WHEN ${TABLE}.country = 'bz' THEN 'Belize'
          WHEN ${TABLE}.country = 'ca' THEN 'Canada'
          WHEN ${TABLE}.country = 'cc' THEN 'Cocos (Keeling) Islands'
          WHEN ${TABLE}.country = 'cd' THEN 'Democratic Republic of the Congo'
          WHEN ${TABLE}.country = 'cf' THEN 'Central African Republic'
          WHEN ${TABLE}.country = 'cg' THEN 'Republic of the Congo'
          WHEN ${TABLE}.country = 'ch' THEN 'Switzerland'
          WHEN ${TABLE}.country = 'ci' THEN 'Ivory Coast'
          WHEN ${TABLE}.country = 'ck' THEN 'Cook Islands'
          WHEN ${TABLE}.country = 'cl' THEN 'Chile'
          WHEN ${TABLE}.country = 'cm' THEN 'Cameroon'
          WHEN ${TABLE}.country = 'cn' THEN 'China'
          WHEN ${TABLE}.country = 'co' THEN 'Colombia'
          WHEN ${TABLE}.country = 'cr' THEN 'Costa Rica'
          WHEN ${TABLE}.country = 'cu' THEN 'Cuba'
          WHEN ${TABLE}.country = 'cv' THEN 'Cape Verde'
          WHEN ${TABLE}.country = 'cx' THEN 'Christmas Island'
          WHEN ${TABLE}.country = 'cy' THEN 'Cyprus'
          WHEN ${TABLE}.country = 'cz' THEN 'Czech Republic'
          WHEN ${TABLE}.country = 'de' THEN 'Germany'
          WHEN ${TABLE}.country = 'dj' THEN 'Djibouti'
          WHEN ${TABLE}.country = 'dk' THEN 'Denmark'
          WHEN ${TABLE}.country = 'dm' THEN 'Dominica'
          WHEN ${TABLE}.country = 'do' THEN 'Dominican Republic'
          WHEN ${TABLE}.country = 'dz' THEN 'Algeria'
          WHEN ${TABLE}.country = 'ec' THEN 'Ecuador'
          WHEN ${TABLE}.country = 'ee' THEN 'Estonia'
          WHEN ${TABLE}.country = 'eg' THEN 'Egypt'
          WHEN ${TABLE}.country = 'eh' THEN 'Western Sahara'
          WHEN ${TABLE}.country = 'er' THEN 'Eritrea'
          WHEN ${TABLE}.country = 'es' THEN 'Spain'
          WHEN ${TABLE}.country = 'et' THEN 'Ethiopia'
          WHEN ${TABLE}.country = 'fi' THEN 'Finland'
          WHEN ${TABLE}.country = 'fj' THEN 'Fiji'
          WHEN ${TABLE}.country = 'fk' THEN 'Falkland Islands (Malvinas)'
          WHEN ${TABLE}.country = 'fm' THEN 'Micronesia, Federated States of'
          WHEN ${TABLE}.country = 'fo' THEN 'Faroe Islands'
          WHEN ${TABLE}.country = 'fr' THEN 'France'
          WHEN ${TABLE}.country = 'fr' THEN 'France'
          WHEN ${TABLE}.country = 'ga' THEN 'Gabon'
          WHEN ${TABLE}.country = 'gb' THEN 'United Kingdom'
          WHEN ${TABLE}.country = 'gb' THEN 'Great Britain'
          WHEN ${TABLE}.country = 'gd' THEN 'Grenada'
          WHEN ${TABLE}.country = 'ge' THEN 'Georgia'
          WHEN ${TABLE}.country = 'gf' THEN 'French Guiana'
          WHEN ${TABLE}.country = 'gh' THEN 'Ghana'
          WHEN ${TABLE}.country = 'gi' THEN 'Gibraltar'
          WHEN ${TABLE}.country = 'gl' THEN 'Greenland'
          WHEN ${TABLE}.country = 'gm' THEN 'Gambia'
          WHEN ${TABLE}.country = 'gn' THEN 'Guinea'
          WHEN ${TABLE}.country = 'gp' THEN 'Guadeloupe'
          WHEN ${TABLE}.country = 'gq' THEN 'Equatorial Guinea'
          WHEN ${TABLE}.country = 'gr' THEN 'Greece'
          WHEN ${TABLE}.country = 'gs' THEN 'South Georgia and the South Sandwich Islands'
          WHEN ${TABLE}.country = 'gt' THEN 'Guatemala'
          WHEN ${TABLE}.country = 'gu' THEN 'Guam'
          WHEN ${TABLE}.country = 'gw' THEN 'Guinea Bissau'
          WHEN ${TABLE}.country = 'gy' THEN 'Guyana'
          WHEN ${TABLE}.country = 'hk' THEN 'Hong Kong'
          WHEN ${TABLE}.country = 'hm' THEN 'Heard Island and McDonald Islands'
          WHEN ${TABLE}.country = 'hn' THEN 'Honduras'
          WHEN ${TABLE}.country = 'hr' THEN 'Croatia'
          WHEN ${TABLE}.country = 'ht' THEN 'Haiti'
          WHEN ${TABLE}.country = 'hu' THEN 'Hungary'
          WHEN ${TABLE}.country = 'id' THEN 'Indonesia'
          WHEN ${TABLE}.country = 'ie' THEN 'Ireland'
          WHEN ${TABLE}.country = 'il' THEN 'Israel'
          WHEN ${TABLE}.country = 'in' THEN 'India'
          WHEN ${TABLE}.country = 'io' THEN 'British Indian Ocean Territory'
          WHEN ${TABLE}.country = 'iq' THEN 'Iraq'
          WHEN ${TABLE}.country = 'ir' THEN 'Iran'
          WHEN ${TABLE}.country = 'is' THEN 'Iceland'
          WHEN ${TABLE}.country = 'it' THEN 'Italy'
          WHEN ${TABLE}.country = 'jm' THEN 'Jamaica'
          WHEN ${TABLE}.country = 'jo' THEN 'Jordan'
          WHEN ${TABLE}.country = 'jp' THEN 'Japan'
          WHEN ${TABLE}.country = 'ke' THEN 'Kenya'
          WHEN ${TABLE}.country = 'kg' THEN 'Kyrgyzstan'
          WHEN ${TABLE}.country = 'kh' THEN 'Cambodia'
          WHEN ${TABLE}.country = 'ki' THEN 'Kiribati'
          WHEN ${TABLE}.country = 'km' THEN 'Comoros'
          WHEN ${TABLE}.country = 'kn' THEN 'Saint Kitts and Nevis'
          WHEN ${TABLE}.country = 'kp' THEN 'North Korea'
          WHEN ${TABLE}.country = 'kr' THEN 'South Korea'
          WHEN ${TABLE}.country = 'kw' THEN 'Kuwait'
          WHEN ${TABLE}.country = 'ky' THEN 'Cayman Islands'
          WHEN ${TABLE}.country = 'kz' THEN 'Kazakhstan'
          WHEN ${TABLE}.country = 'la' THEN 'Laos'
          WHEN ${TABLE}.country = 'lb' THEN 'Lebanon'
          WHEN ${TABLE}.country = 'lc' THEN 'Saint Lucia'
          WHEN ${TABLE}.country = 'li' THEN 'Liechtenstein'
          WHEN ${TABLE}.country = 'lk' THEN 'Sri Lanka'
          WHEN ${TABLE}.country = 'lr' THEN 'Liberia'
          WHEN ${TABLE}.country = 'ls' THEN 'Lesotho'
          WHEN ${TABLE}.country = 'lt' THEN 'Lithuania'
          WHEN ${TABLE}.country = 'lu' THEN 'Luxembourg'
          WHEN ${TABLE}.country = 'lv' THEN 'Latvia'
          WHEN ${TABLE}.country = 'ly' THEN 'Libya'
          WHEN ${TABLE}.country = 'ma' THEN 'Morocco'
          WHEN ${TABLE}.country = 'mc' THEN 'Monaco'
          WHEN ${TABLE}.country = 'md' THEN 'Moldova, Republic of'
          WHEN ${TABLE}.country = 'mg' THEN 'Madagascar'
          WHEN ${TABLE}.country = 'mh' THEN 'Marshall Islands'
          WHEN ${TABLE}.country = 'mk' THEN 'Macedonia'
          WHEN ${TABLE}.country = 'ml' THEN 'Mali'
          WHEN ${TABLE}.country = 'mm' THEN 'Myanmar'
          WHEN ${TABLE}.country = 'mn' THEN 'Mongolia'
          WHEN ${TABLE}.country = 'mo' THEN 'Macau'
          WHEN ${TABLE}.country = 'mp' THEN 'Northern Mariana Islands'
          WHEN ${TABLE}.country = 'mq' THEN 'Martinique'
          WHEN ${TABLE}.country = 'mr' THEN 'Mauritania'
          WHEN ${TABLE}.country = 'ms' THEN 'Montserrat'
          WHEN ${TABLE}.country = 'mt' THEN 'Malta'
          WHEN ${TABLE}.country = 'mu' THEN 'Mauritius'
          WHEN ${TABLE}.country = 'mv' THEN 'Maldives'
          WHEN ${TABLE}.country = 'mw' THEN 'Malawi'
          WHEN ${TABLE}.country = 'mx' THEN 'Mexico'
          WHEN ${TABLE}.country = 'my' THEN 'Malaysia'
          WHEN ${TABLE}.country = 'mz' THEN 'Mozambique'
          WHEN ${TABLE}.country = 'na' THEN 'Namibia'
          WHEN ${TABLE}.country = 'nc' THEN 'New Caledonia'
          WHEN ${TABLE}.country = 'ne' THEN 'Niger'
          WHEN ${TABLE}.country = 'nf' THEN 'Norfolk Island'
          WHEN ${TABLE}.country = 'ng' THEN 'Nigeria'
          WHEN ${TABLE}.country = 'ni' THEN 'Nicaragua'
          WHEN ${TABLE}.country = 'nl' THEN 'Netherlands'
          WHEN ${TABLE}.country = 'no' THEN 'Norway'
          WHEN ${TABLE}.country = 'np' THEN 'Nepal'
          WHEN ${TABLE}.country = 'nr' THEN 'Nauru'
          WHEN ${TABLE}.country = 'nu' THEN 'Niue'
          WHEN ${TABLE}.country = 'nz' THEN 'New Zealand'
          WHEN ${TABLE}.country = 'om' THEN 'Oman'
          WHEN ${TABLE}.country = 'pa' THEN 'Panama'
          WHEN ${TABLE}.country = 'pe' THEN 'Peru'
          WHEN ${TABLE}.country = 'pf' THEN 'French Polynesia'
          WHEN ${TABLE}.country = 'pg' THEN 'Papua New Guinea'
          WHEN ${TABLE}.country = 'ph' THEN 'Philippines'
          WHEN ${TABLE}.country = 'pk' THEN 'Pakistan'
          WHEN ${TABLE}.country = 'pl' THEN 'Poland'
          WHEN ${TABLE}.country = 'pm' THEN 'Saint Pierre and Miquelon'
          WHEN ${TABLE}.country = 'pn' THEN 'Pitcairn Islands'
          WHEN ${TABLE}.country = 'pr' THEN 'Puerto Rico'
          WHEN ${TABLE}.country = 'ps' THEN 'Palestine'
          WHEN ${TABLE}.country = 'pt' THEN 'Portugal'
          WHEN ${TABLE}.country = 'pw' THEN 'Palau'
          WHEN ${TABLE}.country = 'py' THEN 'Paraguay'
          WHEN ${TABLE}.country = 'qa' THEN 'Qatar'
          WHEN ${TABLE}.country = 'ro' THEN 'Romania'
          WHEN ${TABLE}.country = 'ru' THEN 'Russia'
          WHEN ${TABLE}.country = 'rw' THEN 'Rwanda'
          WHEN ${TABLE}.country = 'sa' THEN 'Saudi Arabia'
          WHEN ${TABLE}.country = 'sb' THEN 'Solomon Islands'
          WHEN ${TABLE}.country = 'sc' THEN 'Seychelles'
          WHEN ${TABLE}.country = 'ss' THEN 'South Sudan'
          WHEN ${TABLE}.country = 'sd' THEN 'Sudan'
          WHEN ${TABLE}.country = 'se' THEN 'Sweden'
          WHEN ${TABLE}.country = 'sg' THEN 'Singapore'
          WHEN ${TABLE}.country = 'si' THEN 'Slovenia'
          WHEN ${TABLE}.country = 'sj' THEN 'Svalbard and Jan Mayen'
          WHEN ${TABLE}.country = 'sk' THEN 'Slovakia'
          WHEN ${TABLE}.country = 'sl' THEN 'Sierra Leone'
          WHEN ${TABLE}.country = 'sm' THEN 'San Marino'
          WHEN ${TABLE}.country = 'sn' THEN 'Senegal'
          WHEN ${TABLE}.country = 'so' THEN 'Somalia'
          WHEN ${TABLE}.country = 'sr' THEN 'Suriname'
          WHEN ${TABLE}.country = 'st' THEN 'Sao Tome and Principe'
          WHEN ${TABLE}.country = 'sv' THEN 'El Salvador'
          WHEN ${TABLE}.country = 'sy' THEN 'Syria'
          WHEN ${TABLE}.country = 'sz' THEN 'Swaziland'
          WHEN ${TABLE}.country = 'tc' THEN 'Turks and Caicos Islands'
          WHEN ${TABLE}.country = 'td' THEN 'Chad'
          WHEN ${TABLE}.country = 'tf' THEN 'French Southern Territories'
          WHEN ${TABLE}.country = 'tg' THEN 'Togo'
          WHEN ${TABLE}.country = 'th' THEN 'Thailand'
          WHEN ${TABLE}.country = 'tj' THEN 'Tajikistan'
          WHEN ${TABLE}.country = 'tk' THEN 'Tokelau'
          WHEN ${TABLE}.country = 'tm' THEN 'Turkmenistan'
          WHEN ${TABLE}.country = 'tn' THEN 'Tunisia'
          WHEN ${TABLE}.country = 'to' THEN 'Tonga'
          WHEN ${TABLE}.country = 'tl' THEN 'Timor-Leste'
          WHEN ${TABLE}.country = 'tr' THEN 'Turkey'
          WHEN ${TABLE}.country = 'tt' THEN 'Trinidad and Tobago'
          WHEN ${TABLE}.country = 'tv' THEN 'Tuvalu'
          WHEN ${TABLE}.country = 'tw' THEN 'Taiwan'
          WHEN ${TABLE}.country = 'tz' THEN 'United Republic of Tanzania'
          WHEN ${TABLE}.country = 'ua' THEN 'Ukraine'
          WHEN ${TABLE}.country = 'ug' THEN 'Uganda'
          WHEN ${TABLE}.country = 'um' THEN 'United States Minor Outlying Islands'
          WHEN ${TABLE}.country = 'us' THEN 'United States of America'
          WHEN ${TABLE}.country = 'uy' THEN 'Uruguay'
          WHEN ${TABLE}.country = 'uz' THEN 'Uzbekistan'
          WHEN ${TABLE}.country = 'va' THEN 'Holy See'
          WHEN ${TABLE}.country = 'vc' THEN 'Saint Vincent and the Grenadines'
          WHEN ${TABLE}.country = 've' THEN 'Venezuela'
          WHEN ${TABLE}.country = 'vg' THEN 'Virgin Islands, British'
          WHEN ${TABLE}.country = 'vi' THEN 'Virgin Islands, U.S.'
          WHEN ${TABLE}.country = 'vn' THEN 'Vietnam'
          WHEN ${TABLE}.country = 'vu' THEN 'Vanuatu'
          WHEN ${TABLE}.country = 'wf' THEN 'Wallis and Futuna'
          WHEN ${TABLE}.country = 'ws' THEN 'Samoa'
          WHEN ${TABLE}.country = 'ye' THEN 'Yemen'
          WHEN ${TABLE}.country = 'yt' THEN 'Mayotte'
          WHEN ${TABLE}.country = 'rs' THEN 'Republic of Serbia'
          WHEN ${TABLE}.country = 'za' THEN 'South Africa'
          WHEN ${TABLE}.country = 'zm' THEN 'Zambia'
          WHEN ${TABLE}.country = 'me' THEN 'Montenegro'
          WHEN ${TABLE}.country = 'zw' THEN 'Zimbabwe'
          WHEN ${TABLE}.country = 'gg' THEN 'Guernsey'
          WHEN ${TABLE}.country = 'im' THEN 'Isle of Man'
          WHEN ${TABLE}.country = 'je' THEN 'Jersey'
          WHEN ${TABLE}.country = 'bl' THEN 'Saint Barthelemy'
          WHEN ${TABLE}.country = 'mf' THEN 'Saint Martin'
          WHEN ${TABLE}.country = 'sx' THEN 'sint maarten'
          WHEN ${TABLE}.country = 'a1' THEN 'Anonymous Proxy'
          WHEN ${TABLE}.country = 'a2' THEN 'Satellite Provider'
          WHEN ${TABLE}.country = 'o1' THEN 'Other Country'
          WHEN ${TABLE}.country = 'ap' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ax' THEN 'Aland Islands'
          WHEN ${TABLE}.country = 'cw' THEN 'Curacao'
          WHEN ${TABLE}.country = 'bq' THEN 'Bonaire, Sint Eustatius and Saba'
          WHEN ${TABLE}.country = 'eu' THEN 'Europe'
          WHEN ${TABLE}.country = 're' THEN 'Reunion'
          WHEN ${TABLE}.country = 'sh' THEN 'Saint Helena'
          WHEN ${TABLE}.country = 'xk' THEN 'Kosovo'
        END
    
  - dimension: region
    type: string
    drill_fields: [country_code, country_name]
    suggestions: [Africa, Anonymous Proxy, Arab States, Asia & Pacific, CIS, Europe, North America, Satellite Provider, South/Latin America,]
    sql: |
        CASE
          WHEN ${TABLE}.country = 'ad' THEN 'Europe'
          WHEN ${TABLE}.country = 'ae' THEN 'Arab States'
          WHEN ${TABLE}.country = 'af' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ag' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'ai' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'al' THEN 'Europe'
          WHEN ${TABLE}.country = 'am' THEN 'CIS'
          WHEN ${TABLE}.country = 'ao' THEN 'Africa'
          WHEN ${TABLE}.country = 'aq' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ar' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'as' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'at' THEN 'Europe'
          WHEN ${TABLE}.country = 'au' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'aw' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'az' THEN 'CIS'
          WHEN ${TABLE}.country = 'ba' THEN 'Europe'
          WHEN ${TABLE}.country = 'bb' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'bd' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'be' THEN 'Europe'
          WHEN ${TABLE}.country = 'bf' THEN 'Africa'
          WHEN ${TABLE}.country = 'bg' THEN 'Europe'
          WHEN ${TABLE}.country = 'bh' THEN 'Arab States'
          WHEN ${TABLE}.country = 'bi' THEN 'Africa'
          WHEN ${TABLE}.country = 'bj' THEN 'Africa'
          WHEN ${TABLE}.country = 'bm' THEN 'North America'
          WHEN ${TABLE}.country = 'bn' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'bo' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'br' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'bs' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'bt' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'bv' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'bw' THEN 'Africa'
          WHEN ${TABLE}.country = 'by' THEN 'CIS'
          WHEN ${TABLE}.country = 'bz' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'ca' THEN 'North America'
          WHEN ${TABLE}.country = 'cc' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'cd' THEN 'Africa'
          WHEN ${TABLE}.country = 'cf' THEN 'Africa'
          WHEN ${TABLE}.country = 'cg' THEN 'Africa'
          WHEN ${TABLE}.country = 'ch' THEN 'Europe'
          WHEN ${TABLE}.country = 'ci' THEN 'Africa'
          WHEN ${TABLE}.country = 'ck' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'cl' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'cm' THEN 'Africa'
          WHEN ${TABLE}.country = 'cn' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'co' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'cr' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'cu' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'cv' THEN 'Africa'
          WHEN ${TABLE}.country = 'cx' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'cy' THEN 'Europe'
          WHEN ${TABLE}.country = 'cz' THEN 'Europe'
          WHEN ${TABLE}.country = 'de' THEN 'Europe'
          WHEN ${TABLE}.country = 'dj' THEN 'Arab States'
          WHEN ${TABLE}.country = 'dk' THEN 'Europe'
          WHEN ${TABLE}.country = 'dm' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'do' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'dz' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ec' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'ee' THEN 'Europe'
          WHEN ${TABLE}.country = 'eg' THEN 'Arab States'
          WHEN ${TABLE}.country = 'eh' THEN 'Africa'
          WHEN ${TABLE}.country = 'er' THEN 'Africa'
          WHEN ${TABLE}.country = 'es' THEN 'Europe'
          WHEN ${TABLE}.country = 'et' THEN 'Africa'
          WHEN ${TABLE}.country = 'fi' THEN 'Europe'
          WHEN ${TABLE}.country = 'fj' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'fk' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'fm' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'fo' THEN 'Europe'
          WHEN ${TABLE}.country = 'fr' THEN 'Europe'
          WHEN ${TABLE}.country = 'fr' THEN 'Europe'
          WHEN ${TABLE}.country = 'ga' THEN 'Africa'
          WHEN ${TABLE}.country = 'gb' THEN 'Europe'
          WHEN ${TABLE}.country = 'gb' THEN 'Europe'
          WHEN ${TABLE}.country = 'gd' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'ge' THEN 'CIS'
          WHEN ${TABLE}.country = 'gf' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'gh' THEN 'Africa'
          WHEN ${TABLE}.country = 'gi' THEN 'Europe'
          WHEN ${TABLE}.country = 'gl' THEN 'Europe'
          WHEN ${TABLE}.country = 'gm' THEN 'Africa'
          WHEN ${TABLE}.country = 'gn' THEN 'Africa'
          WHEN ${TABLE}.country = 'gp' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'gq' THEN 'Africa'
          WHEN ${TABLE}.country = 'gr' THEN 'Europe'
          WHEN ${TABLE}.country = 'gs' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'gt' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'gu' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'gw' THEN 'Africa'
          WHEN ${TABLE}.country = 'gy' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'hk' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'hm' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'hn' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'hr' THEN 'Europe'
          WHEN ${TABLE}.country = 'ht' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'hu' THEN 'Europe'
          WHEN ${TABLE}.country = 'id' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ie' THEN 'Europe'
          WHEN ${TABLE}.country = 'il' THEN 'Europe'
          WHEN ${TABLE}.country = 'in' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'io' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'iq' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ir' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'is' THEN 'Europe'
          WHEN ${TABLE}.country = 'it' THEN 'Europe'
          WHEN ${TABLE}.country = 'jm' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'jo' THEN 'Arab States'
          WHEN ${TABLE}.country = 'jp' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ke' THEN 'Africa'
          WHEN ${TABLE}.country = 'kg' THEN 'CIS'
          WHEN ${TABLE}.country = 'kh' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ki' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'km' THEN 'Arab States'
          WHEN ${TABLE}.country = 'kn' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'kp' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'kr' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'kw' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ky' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'kz' THEN 'CIS'
          WHEN ${TABLE}.country = 'la' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'lb' THEN 'Arab States'
          WHEN ${TABLE}.country = 'lc' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'li' THEN 'Europe'
          WHEN ${TABLE}.country = 'lk' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'lr' THEN 'Africa'
          WHEN ${TABLE}.country = 'ls' THEN 'Africa'
          WHEN ${TABLE}.country = 'lt' THEN 'Europe'
          WHEN ${TABLE}.country = 'lu' THEN 'Europe'
          WHEN ${TABLE}.country = 'lv' THEN 'Europe'
          WHEN ${TABLE}.country = 'ly' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ma' THEN 'Arab States'
          WHEN ${TABLE}.country = 'mc' THEN 'Europe'
          WHEN ${TABLE}.country = 'md' THEN 'Europe'
          WHEN ${TABLE}.country = 'mg' THEN 'Africa'
          WHEN ${TABLE}.country = 'mh' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mk' THEN 'Europe'
          WHEN ${TABLE}.country = 'ml' THEN 'Africa'
          WHEN ${TABLE}.country = 'mm' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mn' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mo' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mp' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mq' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'mr' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ms' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'mt' THEN 'Europe'
          WHEN ${TABLE}.country = 'mu' THEN 'Africa'
          WHEN ${TABLE}.country = 'mv' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mw' THEN 'Africa'
          WHEN ${TABLE}.country = 'mx' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'my' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'mz' THEN 'Africa'
          WHEN ${TABLE}.country = 'na' THEN 'Africa'
          WHEN ${TABLE}.country = 'nc' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ne' THEN 'Africa'
          WHEN ${TABLE}.country = 'nf' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ng' THEN 'Africa'
          WHEN ${TABLE}.country = 'ni' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'nl' THEN 'Europe'
          WHEN ${TABLE}.country = 'no' THEN 'Europe'
          WHEN ${TABLE}.country = 'np' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'nr' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'nu' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'nz' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'om' THEN 'Arab States'
          WHEN ${TABLE}.country = 'pa' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'pe' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'pf' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'pg' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ph' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'pk' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'pl' THEN 'Europe'
          WHEN ${TABLE}.country = 'pm' THEN 'North America'
          WHEN ${TABLE}.country = 'pn' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'pr' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'ps' THEN 'Arab States'
          WHEN ${TABLE}.country = 'pt' THEN 'Europe'
          WHEN ${TABLE}.country = 'pw' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'py' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'qa' THEN 'Arab States'
          WHEN ${TABLE}.country = 'ro' THEN 'Europe'
          WHEN ${TABLE}.country = 'ru' THEN 'Europe'
          WHEN ${TABLE}.country = 'rw' THEN 'Africa'
          WHEN ${TABLE}.country = 'sa' THEN 'Arab States'
          WHEN ${TABLE}.country = 'sb' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'sc' THEN 'Africa'
          WHEN ${TABLE}.country = 'ss' THEN 'Africa'
          WHEN ${TABLE}.country = 'sd' THEN 'Arab States'
          WHEN ${TABLE}.country = 'se' THEN 'Europe'
          WHEN ${TABLE}.country = 'sg' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'si' THEN 'Europe'
          WHEN ${TABLE}.country = 'sj' THEN 'Europe'
          WHEN ${TABLE}.country = 'sk' THEN 'Europe'
          WHEN ${TABLE}.country = 'sl' THEN 'Africa'
          WHEN ${TABLE}.country = 'sm' THEN 'Europe'
          WHEN ${TABLE}.country = 'sn' THEN 'Africa'
          WHEN ${TABLE}.country = 'so' THEN 'Arab States'
          WHEN ${TABLE}.country = 'sr' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'st' THEN 'Africa'
          WHEN ${TABLE}.country = 'sv' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'sy' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'sz' THEN 'Africa'
          WHEN ${TABLE}.country = 'tc' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'td' THEN 'Africa'
          WHEN ${TABLE}.country = 'tf' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tg' THEN 'Africa'
          WHEN ${TABLE}.country = 'th' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tj' THEN 'CIS'
          WHEN ${TABLE}.country = 'tk' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tm' THEN 'CIS'
          WHEN ${TABLE}.country = 'tn' THEN 'Arab States'
          WHEN ${TABLE}.country = 'to' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tl' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tr' THEN 'Europe'
          WHEN ${TABLE}.country = 'tt' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'tv' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tw' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'tz' THEN 'Africa'
          WHEN ${TABLE}.country = 'ua' THEN 'CIS'
          WHEN ${TABLE}.country = 'ug' THEN 'Africa'
          WHEN ${TABLE}.country = 'um' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'us' THEN 'North America'
          WHEN ${TABLE}.country = 'uy' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'uz' THEN 'CIS'
          WHEN ${TABLE}.country = 'va' THEN 'Europe'
          WHEN ${TABLE}.country = 'vc' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 've' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'vg' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'vi' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'vn' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'vu' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'wf' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ws' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ye' THEN 'Arab States'
          WHEN ${TABLE}.country = 'yt' THEN 'Africa'
          WHEN ${TABLE}.country = 'rs' THEN 'Europe'
          WHEN ${TABLE}.country = 'za' THEN 'Africa'
          WHEN ${TABLE}.country = 'zm' THEN 'Africa'
          WHEN ${TABLE}.country = 'me' THEN 'Europe'
          WHEN ${TABLE}.country = 'zw' THEN 'Africa'
          WHEN ${TABLE}.country = 'gg' THEN 'Europe'
          WHEN ${TABLE}.country = 'im' THEN 'Europe'
          WHEN ${TABLE}.country = 'je' THEN 'Europe'
          WHEN ${TABLE}.country = 'bl' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'mf' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'sx' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'a1' THEN 'Anonymous Proxy'
          WHEN ${TABLE}.country = 'a2' THEN 'Satellite Provider'
          WHEN ${TABLE}.country = 'o1' THEN 'Other Country'
          WHEN ${TABLE}.country = 'ap' THEN 'Asia & Pacific'
          WHEN ${TABLE}.country = 'ax' THEN 'Europe'
          WHEN ${TABLE}.country = 'cw' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'bq' THEN 'South/Latin America'
          WHEN ${TABLE}.country = 'eu' THEN 'Europe'
          WHEN ${TABLE}.country = 're' THEN 'Africa'
          WHEN ${TABLE}.country = 'sh' THEN 'Africa'
        END

  - dimension_group: impression
    type: time
    timeframes: [time, date, week, month, year, day_of_week, hour_of_day, raw]
    sql: ${TABLE}.day

  - dimension: device
    hidden: true
    type: number
    sql: ${TABLE}.device

  - dimension: finance_account_type
    type: string
    sql: ${TABLE}.financeaccounttype

  - dimension: finance_advertiser_id
#     hidden: true
    type: number
    value_format_name: id
    sql: ${TABLE}.financeadvertiserid

  - dimension: impressions
    hidden: true
    type: number
    sql: ${TABLE}.impressions

  - dimension: isp
    hidden: true
    type: number
    sql: ${TABLE}.isp

  - dimension: os
    hidden: true
    type: number
    sql: ${TABLE}.os

  - dimension: requests
    hidden: true
    type: number
    sql: ${TABLE}.requests

  - dimension: revenue
    hidden: true
    type: number
    sql: ${TABLE}.revenue

  - dimension: stats_group
    type: number
    sql: ${TABLE}.statsgroup

  - dimension: zone_cost_type
    hidden: true
    type: number
    sql: ${TABLE}.zonecosttype

  - dimension: zone_delivery
    hidden: true
    type: number
    sql: ${TABLE}.zonedelivery

  - dimension: zone_group
    group_label: Zone
    type: number
    sql: ${TABLE}.zonegroup  

  
  - dimension: zone_group_name
    type: string
    sql: |
        CASE
          WHEN BOOLEAN(${zone_group} & 1) THEN 'Adult 2.7+'
          WHEN BOOLEAN(${zone_group} & 2) THEN 'Glam Uncategorised'
          WHEN BOOLEAN(${zone_group} & 4) THEN 'Non Adult'
          WHEN BOOLEAN(${zone_group} & 8) THEN 'Gay'
          WHEN BOOLEAN(${zone_group} & 16) THEN 'Test/Fraud'
          WHEN BOOLEAN(${zone_group} & 32) THEN 'Redirect'          
          WHEN BOOLEAN(${zone_group} & 64) THEN 'Redirect' 
          WHEN BOOLEAN(${zone_group} & 128) THEN 'Gambling'
          WHEN BOOLEAN(${zone_group} & 256) THEN 'Redirect Premium'
          WHEN BOOLEAN(${zone_group} & 512) THEN 'Popunder Members'
          WHEN BOOLEAN(${zone_group} & 1024) THEN 'Popunder Gay'
          WHEN BOOLEAN(${zone_group} & 2048) THEN 'Redirect Gay'
          WHEN BOOLEAN(${zone_group} & 4096) THEN 'Redirect Exit'
          WHEN BOOLEAN(${zone_group} & 8192) THEN 'Glam'
          WHEN BOOLEAN(${zone_group} & 16384) THEN 'Push'
          WHEN BOOLEAN(${zone_group} & 32768) THEN 'Mainstream Banner'
          WHEN BOOLEAN(${zone_group} & 65536) THEN 'Mainstream Popunder'
          WHEN BOOLEAN(${zone_group} & 131072) THEN 'Mainstream Fraud'
          WHEN BOOLEAN(${zone_group} & 524288) THEN 'Mainstream Popunder Bikini'
          WHEN BOOLEAN(${zone_group} & 262144) THEN 'Desktpo Banner'
          WHEN BOOLEAN(${zone_group} & 1048576) THEN 'Desktop Popunder'
          WHEN BOOLEAN(${zone_group} & 2097152) THEN 'Native Widget'
          WHEN BOOLEAN(${zone_group} & 4194304) THEN 'Native Desktop Widget'
          
        END
  
  - dimension: zone_height
    group_label: Zone
    type: number
    sql: ${TABLE}.zonehegiht
    
  - dimension: zone_id
    group_label: Zone
    type: number
    value_format_name: id
    sql: ${TABLE}.zoneid

  - dimension: zone_width
    group_label: Zone
    type: number
    sql: ${TABLE}.zonewidth
    
  - dimension: is_before_wtd
    description: Checks if the date weekday is before today's weekday for week on week comparisons.
    type: yesno
    sql: |
      (
      (if(DAYOFWEEK(${impression_raw}) = 1, 7, DAYOFWEEK(${impression_raw})-1)
        < if(DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY")) = 1, 7, DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY"))-1))
        OR
        (
          if(DAYOFWEEK(${impression_raw}) = 1, 7, DAYOFWEEK(${impression_raw})-1) 
            = if(DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY")) = 1, 7, DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY"))-1) AND
          HOUR(${impression_raw}) < HOUR(CURRENT_TIMESTAMP())
        )
        OR
        (
          if(DAYOFWEEK(${impression_raw}) = 1, 7, DAYOFWEEK(${impression_raw})-1) 
            = if(DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY")) = 1, 7, DAYOFWEEK(DATE_ADD(CURRENT_TIMESTAMP(), -1, "DAY"))-1) AND
          HOUR(${impression_raw}) <= HOUR(CURRENT_TIMESTAMP()) AND
          MINUTE(${impression_raw}) < MINUTE(CURRENT_TIMESTAMP())
        )
      )



#MEASURES

#   - measure: count
#     type: count
#     approximate_threshold: 100000
#     drill_fields: []
    
  - measure: total_clicks
    type: sum
    sql: ${clicks}
    value_format_name: decimal_0
    
  - measure: total_cost
    type: sum
    sql: ${cost}
    value_format_name: usd
    
  - measure: total_revenue
    type: sum
    sql: ${revenue}
    value_format_name: usd
    
  - measure: total_requests
    type: sum
    sql: ${requests}
    value_format_name: decimal_0
    
  - measure: total_conversions
    type: sum
    sql: ${conversions}
    value_format_name: decimal_0
    
  - measure: total_impressions
    type: sum
    sql: ${impressions}
    drill_fields: [campaign_id, total_impressions, total_conversions]
    value_format_name: decimal_0
    
  - measure: total_profit
    type: number
    sql: ${total_revenue}-${total_cost}
    value_format_name: usd
    
  - measure: cpa
    label: CPA
    type: number
    sql: ${total_conversions}/${total_revenue}
    value_format_name: decimal_2
    
  - measure: ctr
    label: CTR
    type: number
    sql: ${total_clicks}/${total_impressions}
    value_format_name: percent_2
    
  - measure: ecpm 
    label: eCPM
    type: number
    sql: 1000 * ${total_revenue}/${total_impressions}
    value_format: '"$"#,##0.0000'
    
  - measure: ecpc
    label: eCPC
    type: number
    sql: 1000 * ${total_revenue}/${total_clicks}
    value_format: '"$"#,##0.0000'
  
  

    
    
    
    
    
    