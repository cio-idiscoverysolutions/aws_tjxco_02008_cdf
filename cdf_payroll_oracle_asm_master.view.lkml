view: cdf_payroll_oracle_asm_master {
  sql_table_name: dbo.CDF_Payroll_Oracle_ASM_Master ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: assignment_id {
    type: string
    sql: ${TABLE}.ASSIGNMENT_ID ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: earning_description {
    type: string
    sql: ${TABLE}.EARNING_DESCRIPTION ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}.ELEMENT ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.ELEMENT_NAME ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EMPLOYEE_NUMBER ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.GRADE ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}.HOURS ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LOCATION_CODE ;;
  }

  dimension: paid_date {
    type: string
    sql: ${TABLE}.PAID_DATE ;;
  }

  dimension: period_end_date {
    type: string
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_start_date {
    type: string
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.RATE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name, element_name]
  }
}
