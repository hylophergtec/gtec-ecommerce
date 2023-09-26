view: entries {
  sql_table_name: testhaylen.entries ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category_code {
    type: string
    sql: ${TABLE}.category_code ;;
  }
  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }
  dimension_group: event_time {
    type: time
    datatype: datetime
    timeframes: [date,month,quarter,day_of_week,day_of_month]
    sql: ${TABLE}.event_time  ;;
   # sql:STR_TO_DATE(${TABLE}.event_time,'%Y%m%d %h%i%s') ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }
  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: user_session {
    type: string
    sql: ${TABLE}.user_session ;;
  }

  measure: count {
    type: count
  }
}
