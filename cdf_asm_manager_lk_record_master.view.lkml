view: cdf_asm_manager_lk_record_master {
  sql_table_name: dbo.CDF_ASM_Manager_LK_Record_Master ;;

  dimension: consolidated_ethnic_origin {
    type: string
    sql: ${TABLE}.CONSOLIDATED_ETHNIC_ORIGIN ;;
  }

  dimension: date_of_birth {
    type: string
    sql: ${TABLE}.DATE_OF_BIRTH ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EMPLOYEE_NUMBER ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: latest_hire_date {
    type: string
    sql: ${TABLE}.LATEST_HIRE_DATE ;;
  }

  dimension: lk_department {
    type: string
    sql: ${TABLE}.LK_DEPARTMENT ;;
  }

  dimension: lk_employment_status {
    type: string
    sql: ${TABLE}.LK_EMPLOYMENT_STATUS ;;
  }

  dimension: lk_job_code {
    type: string
    sql: ${TABLE}.LK_JOB_CODE ;;
  }

  dimension: lk_job_title {
    type: string
    sql: ${TABLE}.LK_JOB_TITLE ;;
  }

  dimension: lk_location_city {
    type: string
    sql: ${TABLE}.LK_LOCATION_CITY ;;
  }

  dimension: lk_location_code {
    type: string
    sql: ${TABLE}.LK_LOCATION_CODE ;;
  }

  dimension: lk_location_country {
    type: string
    sql: ${TABLE}.LK_LOCATION_COUNTRY ;;
  }

  dimension: lk_location_state {
    type: string
    sql: ${TABLE}.LK_LOCATION_STATE ;;
  }

  dimension: lk_original_hire_date {
    type: string
    sql: ${TABLE}.LK_ORIGINAL_HIRE_DATE ;;
  }

  dimension: lk_personal_address1 {
    type: string
    sql: ${TABLE}.LK_PERSONAL_ADDRESS1 ;;
  }

  dimension: lk_personal_address2 {
    type: string
    sql: ${TABLE}.LK_PERSONAL_ADDRESS2 ;;
  }

  dimension: lk_personal_address_city {
    type: string
    sql: ${TABLE}.LK_PERSONAL_ADDRESS_CITY ;;
  }

  dimension: lk_personal_address_state {
    type: string
    sql: ${TABLE}.LK_PERSONAL_ADDRESS_STATE ;;
  }

  dimension: lk_personal_address_zip {
    type: string
    sql: ${TABLE}.LK_PERSONAL_ADDRESS_ZIP ;;
  }

  dimension: lk_personal_email {
    type: string
    sql: ${TABLE}.LK_PERSONAL_EMAIL ;;
  }

  dimension: lk_personal_phone {
    type: string
    sql: ${TABLE}.LK_PERSONAL_PHONE ;;
  }

  dimension: lk_supervisor {
    type: string
    sql: ${TABLE}.LK_SUPERVISOR ;;
  }

  dimension: lk_termination_date {
    type: string
    sql: ${TABLE}.LK_TERMINATION_DATE ;;
  }

  dimension: lk_work_email {
    type: string
    sql: ${TABLE}.LK_WORK_EMAIL ;;
  }

  dimension: middle_names {
    type: string
    sql: ${TABLE}.MIDDLE_NAMES ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.NATIONALITY ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.SUFFIX ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
