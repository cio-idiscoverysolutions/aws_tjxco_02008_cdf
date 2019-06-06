view: cdf_asm_merit_master {
  sql_table_name: dbo.CDF_ASM_Merit_Master ;;

  dimension: _adjustmentin_usd {
    type: string
    sql: ${TABLE}."$ Adjustment(in USD)" ;;
  }

  dimension: _annual_salaryin_usd {
    type: string
    sql: ${TABLE}."$ Annual Salary(in USD)" ;;
  }

  dimension: _merit_increasein_usd {
    type: string
    sql: ${TABLE}."$ Merit Increase(in USD)" ;;
  }

  dimension: _new_annual_salaryin_usd {
    type: string
    sql: ${TABLE}."$ New Annual Salary(in USD)" ;;
  }

  dimension: _new_pay_ratein_usd {
    type: string
    sql: ${TABLE}."$ New Pay Rate(in USD)" ;;
  }

  dimension: _pay_ratein_usd {
    type: string
    sql: ${TABLE}."$ Pay Rate(in USD)" ;;
  }

  dimension: _salary_range_minmidmaxin_usd {
    type: string
    sql: ${TABLE}."$ Salary Range Min-Mid-Max(in USD)" ;;
  }

  dimension: _total_increasein_usd {
    type: string
    sql: ${TABLE}."$ Total Increase(in USD)" ;;
  }

  dimension: adjustment {
    type: string
    sql: ${TABLE}.Adjustment ;;
  }

  dimension: pct_adjustment {
    type: string
    sql: ${TABLE}."%Adjustment" ;;
  }

  dimension: ain {
    type: string
    sql: ${TABLE}.AIN ;;
  }

  dimension: annual_salary {
    type: string
    sql: ${TABLE}."Annual Salary" ;;
  }

  dimension: assignment_number {
    type: string
    sql: ${TABLE}."Assignment Number" ;;
  }

  dimension: business_group_id {
    type: string
    sql: ${TABLE}."Business Group ID" ;;
  }

  dimension: comment_for_adjustment {
    type: string
    sql: ${TABLE}."Comment for Adjustment" ;;
  }

  dimension: comment_for_merit_increase {
    type: string
    sql: ${TABLE}."Comment for Merit Increase" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: current_performance_rating {
    type: string
    sql: ${TABLE}."Current Performance Rating" ;;
  }

  dimension: current_position_in_range {
    type: string
    sql: ${TABLE}."%Current Position in Range" ;;
  }

  dimension: date_of_hire {
    type: string
    sql: ${TABLE}."Date of Hire" ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}."Effective Date" ;;
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

  dimension: job_title {
    type: string
    sql: ${TABLE}."Job Title" ;;
  }

  dimension: local_currency_code {
    type: string
    sql: ${TABLE}."Local Currency Code" ;;
  }

  dimension: merit_increase {
    type: string
    sql: ${TABLE}."Merit Increase" ;;
  }

  dimension: pct_merit_increase {
    type: string
    sql: ${TABLE}."%Merit Increase" ;;
  }

  dimension: merit_range_guidelines {
    type: string
    sql: ${TABLE}."Merit Range Guidelines" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: new_annual_salary {
    type: string
    sql: ${TABLE}."New Annual Salary" ;;
  }

  dimension: new_pay_rate {
    type: string
    sql: ${TABLE}."New Pay Rate" ;;
  }

  dimension: new_position_in_range {
    type: string
    sql: ${TABLE}."%New Position in Range" ;;
  }

  dimension: pay_rate {
    type: string
    sql: ${TABLE}."Pay Rate" ;;
  }

  dimension: salary_grade {
    type: string
    sql: ${TABLE}."Salary Grade" ;;
  }

  dimension: salary_range_minmidmax {
    type: string
    sql: ${TABLE}."Salary Range Min-Mid-Max" ;;
  }

  dimension: total_increase {
    type: string
    sql: ${TABLE}."Total Increase" ;;
  }

  dimension: pct_total_increase {
    type: string
    sql: ${TABLE}."%Total Increase" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
