view: legacy_data_20170725 {
  sql_table_name: dbo.Legacy_Data_20170725 ;;

  dimension: absolute_file_path {
    type: string
    sql: ${TABLE}.AbsoluteFilePath ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: date_logged {
    type: string
    sql: ${TABLE}.DateLogged ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.Employee_Name ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.Employee_Number ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.End_Date ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.File_Name ;;
  }

  dimension: ft_pt {
    type: string
    sql: ${TABLE}.FT_PT ;;
  }

  dimension: hire_date {
    type: string
    sql: ${TABLE}.Hire_Date ;;
  }

  dimension: ids_employee_name {
    type: string
    sql: ${TABLE}.IDS_EmployeeName ;;
  }

  dimension: ids_first_name {
    type: string
    sql: ${TABLE}.IDS_FirstName ;;
  }

  dimension: ids_last_name {
    type: string
    sql: ${TABLE}.IDS_LastName ;;
  }

  dimension: ids_store_number {
    type: string
    sql: ${TABLE}.IDS_StoreNumber ;;
  }

  dimension: idsid {
    type: string
    sql: ${TABLE}.IDSID ;;
  }

  dimension: spreadsheet_date {
    type: string
    sql: ${TABLE}.SpreadsheetDate ;;
  }

  dimension: spreadsheet_name {
    type: string
    sql: ${TABLE}.SpreadsheetName ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: store_location {
    type: string
    sql: ${TABLE}.Store_Location ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.Store_Name ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.Store_Number ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      file_name,
      employee_name,
      store_name,
      spreadsheet_name,
      ids_employee_name,
      ids_last_name,
      ids_first_name
    ]
  }
}
