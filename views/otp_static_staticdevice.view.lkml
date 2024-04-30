view: otp_static_staticdevice {
  sql_table_name: public.otp_static_staticdevice ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: confirmed {
    type: yesno
    sql: ${TABLE}."confirmed" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  dimension: throttling_failure_count {
    type: number
    sql: ${TABLE}."throttling_failure_count" ;;
  }
  dimension_group: throttling_failure_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."throttling_failure_timestamp" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
