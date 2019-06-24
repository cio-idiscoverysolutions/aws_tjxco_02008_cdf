view: cdf_asm_history_master {
  sql_table_name: dbo.CDF_ASM_History_Master ;;

  dimension: actual_termination_date {
    type: string
    sql: ${TABLE}.ACTUAL_TERMINATION_DATE ;;
  }

  dimension: consolidated_ethnic_origin {
    type: string
    sql: ${TABLE}.CONSOLIDATED_ETHNIC_ORIGIN ;;
  }

  dimension: date_of_birth {
    type: string
    sql: ${TABLE}.DATE_OF_BIRTH ;;
  }

  dimension: effective_end_date {
    type: string
    sql: ${TABLE}.EFFECTIVE_END_DATE ;;
  }

  dimension: effective_start_date {
    type: string
    sql: ${TABLE}.EFFECTIVE_START_DATE ;;
  }

  dimension: effective_start_date_dt {
    type: date
    sql: ${TABLE}.EFFECTIVE_START_DATE ;;
  }


  dimension: employee_number {
    type: string
    sql: ${TABLE}.EMPLOYEE_NUMBER ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.EMPLOYMENT_STATUS ;;
  }

  dimension: exempt_status {
    type: string
    sql: ${TABLE}.EXEMPT_STATUS ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: fullname_firstlast {
    type: string
    sql: ${TABLE}.FULLNAME_FIRSTLAST ;;
  }

  dimension: fullname_lastfirst {
    type: string
    sql: ${TABLE}.FULLNAME_LASTFIRST ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: job_code {
    type: string
    sql: ${TABLE}.JOB_CODE ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.JOB_TITLE ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: latest_hire_date {
    type: string
    sql: ${TABLE}.LATEST_HIRE_DATE ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.LOCATION_CITY ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LOCATION_CODE ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.LOCATION_STATE ;;
  }

  dimension: middle_names {
    type: string
    sql: ${TABLE}.MIDDLE_NAMES ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.NATIONALITY ;;
  }

  dimension: original_date_of_hire {
    type: string
    sql: ${TABLE}.ORIGINAL_DATE_OF_HIRE ;;
  }

  dimension: salary_hourly {
    type: string
    sql: ${TABLE}.SALARY_HOURLY ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.SUFFIX ;;
  }

  dimension: supervisor {
    type: string
    sql: ${TABLE}.SUPERVISOR ;;
  }

  dimension: supervisor_employee_id {
    type: string
    sql: ${TABLE}.SUPERVISOR_EMPLOYEE_ID ;;
  }

  dimension: supervisor_ssn {
    type: string
    sql: ${TABLE}.SUPERVISOR_SSN ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
