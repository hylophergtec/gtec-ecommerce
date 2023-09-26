connection: "cloud-sql-test-haylen"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ecomerce-example_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecomerce-example_default_datagroup

explore: entries {}

