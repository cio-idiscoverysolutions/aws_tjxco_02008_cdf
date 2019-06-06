view: cdf_job_cert_master {
  sql_table_name: dbo.CDF_Job_Cert_Master ;;

  dimension_group: form_completed_on {
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
    sql: ${TABLE}."Form Completed On Date" ;;
  }

  dimension: form_title {
    type: string
    sql: ${TABLE}."Form Title" ;;
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

  dimension_group: last_modified {
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
    sql: ${TABLE}."Last Modified Date" ;;
  }

  dimension_group: last_routed_on {
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
    sql: ${TABLE}."Last Routed On Date" ;;
  }

  dimension_group: signed {
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
    sql: ${TABLE}."Signed Date" ;;
  }

  dimension: signer_name {
    type: string
    sql: ${TABLE}."Signer Name" ;;
  }

  dimension: subject_department {
    type: string
    sql: ${TABLE}."Subject Department" ;;
  }

  dimension: subject_district {
    type: string
    sql: ${TABLE}."Subject District" ;;
  }

  dimension: subject_first_name {
    type: string
    sql: ${TABLE}."Subject First Name" ;;
  }

  dimension: subject_last_name {
    type: string
    sql: ${TABLE}."Subject Last Name" ;;
  }

  dimension: subject_region {
    type: string
    sql: ${TABLE}."Subject Region" ;;
  }

  dimension: subject_user_id {
    type: string
    sql: ${TABLE}."Subject User ID" ;;
  }

  dimension: subject_zone {
    type: string
    sql: ${TABLE}."Subject Zone" ;;
  }

  dimension: user_status {
    type: string
    sql: ${TABLE}."User Status" ;;
  }

  measure: count {
    type: count
    drill_fields: [subject_last_name, subject_first_name, signer_name]
  }
}
