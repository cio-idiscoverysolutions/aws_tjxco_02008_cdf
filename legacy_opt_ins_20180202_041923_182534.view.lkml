view: legacy_opt_ins_20180202_041923_182534 {
  sql_table_name: dbo.Legacy_OptIns_20180202_041923_182534 ;;

  dimension: address__1 {
    type: string
    sql: ${TABLE}.Address__1 ;;
  }

  dimension: address__2 {
    type: string
    sql: ${TABLE}.Address__2 ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: consent_id {
    type: string
    sql: ${TABLE}.Consent_ID ;;
  }

  dimension: count {
    type: string
    sql: ${TABLE}.Count ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: current_former_ee {
    type: string
    sql: ${TABLE}.Current_Former_EE ;;
  }

  dimension: date_consent_filed {
    type: string
    sql: ${TABLE}.Date_Consent_Filed ;;
  }

  dimension: date_consent_signed {
    type: string
    sql: ${TABLE}.Date_Consent_Signed ;;
  }

  dimension: docket__ {
    type: string
    sql: ${TABLE}.Docket__ ;;
  }

  dimension: employee__ {
    type: string
    sql: ${TABLE}.Employee__ ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: latest_hire_date {
    type: string
    sql: ${TABLE}.Latest_Hire_Date ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.Location_State ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.Middle_Name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: original_hire_date {
    type: string
    sql: ${TABLE}.Original_Hire_Date ;;
  }

  dimension: signature_type {
    type: string
    sql: ${TABLE}.Signature_Type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: store_assignment {
    type: string
    sql: ${TABLE}.Store_Assignment ;;
  }

  dimension: week__ {
    type: string
    sql: ${TABLE}.Week__ ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: cnt {
    type: count
    drill_fields: [first_name, middle_name, last_name]
  }
}
