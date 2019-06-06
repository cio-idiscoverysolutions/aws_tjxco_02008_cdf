view: legacy_tjx_non_ca_asm_listing_asm_non_ca_since_jan_2012_041923_182535 {
  sql_table_name: dbo.Legacy_TJX_Non_CA_ASM_Listing_ASM_Non_CA_since_Jan_2012_041923_182535 ;;

  dimension: addr_city {
    type: string
    sql: ${TABLE}.Addr_City ;;
  }

  dimension: addr_state {
    type: string
    sql: ${TABLE}.Addr_State ;;
  }

  dimension: addr_zip {
    type: string
    sql: ${TABLE}.Addr_Zip ;;
  }

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.Address_Line1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.Address_Line2 ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.Employee_Number ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.Full_Name ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.Group_Name ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}.Home_Phone ;;
  }

  dimension: ids_asm_merc {
    type: string
    sql: ${TABLE}.IDS_Asm_Merc ;;
  }

  dimension: ids_employee_id {
    type: string
    sql: ${TABLE}.IDS_EmployeeID ;;
  }

  dimension: ids_notes {
    type: string
    sql: ${TABLE}.IDS_Notes ;;
  }

  dimension: ids_store_number {
    type: string
    sql: ${TABLE}.IDS_StoreNumber ;;
  }

  dimension: intermed_parent_division {
    type: string
    sql: ${TABLE}.Intermed_Parent_Division ;;
  }

  dimension: isd_production_id {
    type: string
    sql: ${TABLE}.ISD_Production_ID ;;
  }

  dimension: job_cost_center_name {
    type: string
    sql: ${TABLE}.Job_Cost_Center_Name ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.Job_Name ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.Job_Number ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: latest_hire_date {
    type: string
    sql: ${TABLE}.Latest_Hire_Date ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.Location_State ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.Mobile_Phone ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.Organization_Name ;;
  }

  dimension: original_date_of_hire {
    type: string
    sql: ${TABLE}.Original_Date_Of_Hire ;;
  }

  dimension: parent_division {
    type: string
    sql: ${TABLE}.Parent_Division ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      full_name,
      first_name,
      last_name,
      job_name,
      job_cost_center_name,
      organization_name,
      location_name,
      group_name
    ]
  }
}
