view: cdf_job_req_default_master {
  sql_table_name: dbo.CDF_Job_Req_Default_Master ;;

  dimension: add {
    type: string
    sql: ${TABLE}."ADD" ;;
  }

  dimension: default {
    type: string
    sql: ${TABLE}."DEFAULT" ;;
  }

  dimension_group: ids_date_loaded {
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
    sql: ${TABLE}.IDS_DateLoaded ;;
  }

  dimension: ids_dlvry_id {
    type: number
    sql: ${TABLE}.IDS_Dlvry_ID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: job_description {
    type: string
    sql: ${TABLE}."JOB DESCRIPTION" ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}."JOB ID" ;;
  }

  dimension: job_organization {
    type: string
    sql: ${TABLE}."JOB ORGANIZATION" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}."JOB TITLE" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.ROLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
