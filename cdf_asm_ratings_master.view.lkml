view: cdf_asm_ratings_master {
  sql_table_name: dbo.CDF_ASM_Ratings_Master ;;

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

  dimension: manager_first_name {
    type: string
    sql: ${TABLE}."Manager First Name" ;;
  }

  dimension: manager_last_name {
    type: string
    sql: ${TABLE}."Manager Last Name" ;;
  }

  dimension: manager_user_id {
    type: string
    sql: ${TABLE}."Manager User ID" ;;
  }

  dimension: objective_comment {
    type: string
    sql: ${TABLE}."Objective Comment" ;;
  }

  dimension: objective_comment_owner_user_id {
    type: string
    sql: ${TABLE}."Objective Comment Owner User ID" ;;
  }

  dimension: objective_custom_field_name {
    type: string
    sql: ${TABLE}."Objective Custom Field Name" ;;
  }

  dimension: objective_custom_field_value {
    type: string
    sql: ${TABLE}."Objective Custom Field Value" ;;
  }

  dimension: objective_id {
    type: string
    sql: ${TABLE}."Objective ID" ;;
  }

  dimension: objective_name {
    type: string
    sql: ${TABLE}."Objective Name" ;;
  }

  dimension: objective_weight {
    type: string
    sql: ${TABLE}."Objective Weight" ;;
  }

  dimension: overall_performance_rating {
    type: string
    sql: ${TABLE}."Overall Performance Rating" ;;
  }

  dimension: overall_performance_rating_description {
    type: string
    sql: ${TABLE}."Overall Performance Rating Description" ;;
  }

  dimension: subject_associate_title {
    type: string
    sql: ${TABLE}."Subject Associate Title" ;;
  }

  dimension: subject_department {
    type: string
    sql: ${TABLE}."Subject Department" ;;
  }

  dimension: subject_district {
    type: string
    sql: ${TABLE}."Subject District" ;;
  }

  dimension: subject_division {
    type: string
    sql: ${TABLE}."Subject Division" ;;
  }

  dimension: subject_first_name {
    type: string
    sql: ${TABLE}."Subject First Name" ;;
  }

  dimension: subject_functional_area {
    type: string
    sql: ${TABLE}."Subject Functional Area" ;;
  }

  dimension: subject_last_name {
    type: string
    sql: ${TABLE}."Subject Last Name" ;;
  }

  dimension: subject_organization_type {
    type: string
    sql: ${TABLE}."Subject Organization Type" ;;
  }

  dimension: subject_region {
    type: string
    sql: ${TABLE}."Subject Region" ;;
  }

  dimension: subject_username {
    type: string
    sql: ${TABLE}."Subject Username" ;;
  }

  dimension: subject_zone {
    type: string
    sql: ${TABLE}."Subject Zone" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      subject_username,
      subject_first_name,
      subject_last_name,
      objective_name,
      objective_custom_field_name,
      manager_first_name,
      manager_last_name
    ]
  }
}
