view: cdf_discovery_selections_store_map_master {
  sql_table_name: dbo.CDF_DiscoverySelections_StoreMap_Master ;;

  dimension: emp_name {
    type: string
    sql: ${TABLE}."Emp Name" ;;
  }

  dimension: emp_number {
    type: string
    sql: ${TABLE}.EmpNumber ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."End Date" ;;
  }


  dimension: Accuracy {
    type: number
    sql: ${TABLE}.Accuracy ;;
  }

dimension: coordinates {
  type:  location
  sql_latitude: ${lat} ;;
  sql_longitude: ${lon} ;;
}

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.Loc ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.Location_City ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.Location_Code ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.Location_State ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.Lon ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Start Date" ;;
  }

  measure: count {
    type: count
    drill_fields: [emp_name]
  }
}
