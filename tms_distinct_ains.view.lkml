view: tms_distinct_ains {
  sql_table_name: dbo.TMS_Distinct_AINs ;;

  dimension: ain {
    type: string
    sql: ${TABLE}.ain ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
