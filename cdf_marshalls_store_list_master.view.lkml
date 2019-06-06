view: cdf_marshalls_store_list_master {
  sql_table_name: dbo.CDF_MarshallsStoreList_Master ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: dist {
    type: string
    sql: ${TABLE}."Dist#" ;;
  }

  dimension: dm_name {
    type: string
    sql: ${TABLE}."DM Name" ;;
  }

  dimension: hg_store_ {
    type: string
    sql: ${TABLE}."HG Store #"
      ;;
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

  dimension: mallshopping_ctr_name {
    type: string
    sql: ${TABLE}."Mall/Shopping Ctr# Name" ;;
  }

  dimension: mmx_store_ {
    type: string
    sql: ${TABLE}."MMX Store #"
      ;;
  }

  dimension: open_date {
    type: string
    sql: ${TABLE}."Open Date" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: reg {
    type: string
    sql: ${TABLE}."Reg#" ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  dimension: store_manager {
    type: string
    sql: ${TABLE}."Store Manager" ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}."Store Type" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."Zip Code" ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.Zone ;;
  }

  measure: count {
    type: count
    drill_fields: [mallshopping_ctr_name, dm_name]
  }
}
