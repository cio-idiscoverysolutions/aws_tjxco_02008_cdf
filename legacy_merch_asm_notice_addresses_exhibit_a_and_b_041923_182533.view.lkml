view: legacy_merch_asm_notice_addresses_exhibit_a_and_b_041923_182533 {
  sql_table_name: dbo.Legacy_Merch_ASM_Notice_Addresses_Exhibit_A_and_B_041923_182533 ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.Address_Line1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.Address_Line2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: excluded_by_date {
    type: string
    sql: ${TABLE}.Excluded_By_Date ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.Full_Name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: max_spread_sheet_date {
    type: string
    sql: ${TABLE}.MaxSpreadSheetDate ;;
  }

  dimension: min_spread_sheet_date {
    type: string
    sql: ${TABLE}.MinSpreadSheetDate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tracking_no_ {
    type: string
    sql: ${TABLE}.Tracking_No_ ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name, last_name, first_name]
  }
}
