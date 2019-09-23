view: cdf_discovery_map_master {
  sql_table_name: dbo.CDF_Discovery_Map_Master ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_state {
    type: string
    sql: ${TABLE}."City, State" ;;
  }

  dimension: employee_ {
    type: number
    sql: ${TABLE}."Employee #"
      ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}."Employee Name" ;;
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


dimension: coordinates {
  type:  location
  sql_latitude: ${lat} ;;
  sql_longitude: ${lon} ;;
}


  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.Lon ;;
  }

  dimension: salary {
    type: string
    sql: ${TABLE}.Salary ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_name]
  }
}
