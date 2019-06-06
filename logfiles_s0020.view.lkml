view: logfiles_s0020 {
  sql_table_name: dbo.logfiles_S0020 ;;

  dimension: filesize {
    type: string
    sql: ${TABLE}.filesize ;;
  }

  dimension: folderpath {
    type: string
    sql: ${TABLE}.folderpath ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
