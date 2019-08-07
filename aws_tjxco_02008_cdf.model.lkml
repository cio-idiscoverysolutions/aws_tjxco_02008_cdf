connection: "aws_tjxco_02008_cdf"

# include all the views
include: "*.view"

datagroup: aws_tjxco_02008_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_tjxco_02008_cdf_default_datagroup

explore: cdf_payroll_cognos_asm_sm_master {}

explore: cdf_payroll_oracle_asm_master {}

explore: cdf_asm_history_master {}

explore: cdf_asm_lk_record_master {}

explore: cdf_asm_manager_history_master {}

explore: cdf_asm_manager_lk_record_master {}

explore: tms_distinct_ains {}

explore: tms_pm_pdfs {}

explore: cdf_asm_merit_master {}

explore: cdf_asm_ratings_master {}

explore: cdf_catalog {}

explore: cdf_convert {}

explore: cdf_home_goods_store_list_master {}

explore: cdf_home_goods_super_store_list_master {}

explore: cdf_job_cert_master {}

explore: cdf_job_req_data_master {}

explore: cdf_job_req_default_master {}

explore: cdf_marshalls_store_list_master {}

explore: cdf_stats {}

explore: cdf_table_stats {}

explore: csv2_sql_log {}

explore: data_dictionary {}

explore: legacy_data_20170725 {}

explore: legacy_merch_asm_notice_addresses_exhibit_a_and_b_041923_182533 {}

explore: legacy_opt_ins_20180202_041923_182534 {}

explore: legacy_tjx_non_ca_asm_listing_asm_non_ca_since_jan_2012_041923_182535 {}

explore: log {}

explore: logfiles_s0020 {}

explore: src_dlvry {}

explore: src_files {}

explore: src_master {}
