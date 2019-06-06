view: cdf_job_req_data_master {
  sql_table_name: dbo.CDF_Job_Req_Data_Master ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: external_title {
    type: string
    sql: ${TABLE}."External Title" ;;
  }

  dimension: functional_area {
    type: string
    sql: ${TABLE}."Functional Area" ;;
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

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: job_level {
    type: string
    sql: ${TABLE}."Job Level" ;;
  }

  dimension: job_req_id {
    type: number
    sql: ${TABLE}."Job Req ID" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}."Job Title" ;;
  }

  dimension_group: post_end {
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
    sql: ${TABLE}."Post End Date" ;;
  }

  dimension_group: post_start {
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
    sql: ${TABLE}."Post Start Date" ;;
  }

  dimension: posting_status {
    type: string
    sql: ${TABLE}."Posting Status" ;;
  }

  dimension: provincestate {
    type: string
    sql: ${TABLE}."Province/State" ;;
  }

  dimension: recruiter_first_name {
    type: string
    sql: ${TABLE}."Recruiter First Name" ;;
  }

  dimension: recruiter_last_name {
    type: string
    sql: ${TABLE}."Recruiter Last Name" ;;
  }

  measure: count {
    type: count
    drill_fields: [recruiter_last_name, recruiter_first_name]
  }
}
