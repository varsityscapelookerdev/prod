view: knox_authtoken {
  sql_table_name: public.knox_authtoken ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created" ;;
  }
  dimension: digest {
    type: string
    sql: ${TABLE}."digest" ;;
  }
  dimension_group: expiry {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."expiry" ;;
  }
  dimension: token_key {
    type: string
    sql: ${TABLE}."token_key" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
  }
}
