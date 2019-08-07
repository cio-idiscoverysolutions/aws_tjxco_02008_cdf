view: cdf_payroll_cognos_asm_sm_master {
  sql_table_name: dbo.CDF_Payroll_Cognos_ASM_SM_Master ;;

  dimension: ain {
    type: string
    sql: ${TABLE}.AIN ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: employeenumber {
    type: string
    sql: ${TABLE}.EMPLOYEENUMBER ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_Source_File ;;
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

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: m013_birth_date {
    type: string
    sql: ${TABLE}.M013_BIRTH_DATE ;;
  }

  dimension: m049_a_wk_equiv {
    type: string
    sql: ${TABLE}.M049A_WK_EQUIV ;;
  }

  dimension: m049_b_mo_equiv {
    type: string
    sql: ${TABLE}.M049B_MO_EQUIV ;;
  }

  dimension: m049_c_an_equiv {
    type: string
    sql: ${TABLE}.M049C_AN_EQUIV ;;
  }

  dimension: m190_supv_last_name {
    type: string
    sql: ${TABLE}.M190_SUPV_LAST_NAME ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.ORGANIZATION_NAME ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.STREET ;;
  }

  dimension: supervisor_ain {
    type: string
    sql: ${TABLE}.SUPERVISOR_AIN ;;
  }

  dimension: tx1_ptedd_earn_ded_desc {
    type: string
    sql: ${TABLE}.TX1PTEDD_EARN_DED_DESC ;;
  }

  dimension: we_check_date {
    type: string
    sql: ${TABLE}.WE_CHECK_DATE ;;
  }

  dimension: we_check_numb {
    type: string
    sql: ${TABLE}.WE_CHECK_NUMB ;;
  }

  dimension: we_dollars_amt {
    type: string
    sql: ${TABLE}.WE_DOLLARS_AMT ;;
  }

  dimension: we_gross {
    type: string
    sql: ${TABLE}.WE_GROSS ;;
  }

  dimension: we_net {
    type: string
    sql: ${TABLE}.WE_NET ;;
  }

  dimension: we_numb_hrs {
    type: string
    sql: ${TABLE}.WE_NUMB_HRS ;;
  }

  dimension: we_pay_rate_code {
    type: string
    sql: ${TABLE}.WE_PAY_RATE_CODE ;;
  }

  dimension: we_tot_hrs {
    type: string
    sql: ${TABLE}.WE_TOT_HRS ;;
  }

  dimension: we_week_ending_date {
    type: string
    sql: ${TABLE}.WE_WEEK_ENDING_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name, first_name, last_name, organization_name, m190_supv_last_name]
  }
}
