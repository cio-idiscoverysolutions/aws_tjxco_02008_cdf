view: tms_pm_pdfs {
  sql_table_name: dbo.TMS_PM_PDFs ;;

  dimension: ain {
    type: string
    sql: ${TABLE}.AIN ;;
  }

  dimension: date_received {
    type: string
    sql: ${TABLE}.Date_Received ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.File_Name ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.Fiscal_Year ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name]
  }
}
