view: otp_totp_totpdevice {
  sql_table_name: public.otp_totp_totpdevice ;;
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
  dimension: digits {
    type: number
    sql: ${TABLE}."digits" ;;
  }
  dimension: drift {
    type: number
    sql: ${TABLE}."drift" ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}."key" ;;
  }
  dimension: last_t {
    type: number
    sql: ${TABLE}."last_t" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  dimension: step {
    type: number
    sql: ${TABLE}."step" ;;
  }
  dimension: t0 {
    type: number
    sql: ${TABLE}."t0" ;;
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
  dimension: tolerance {
    type: number
    sql: ${TABLE}."tolerance" ;;
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
