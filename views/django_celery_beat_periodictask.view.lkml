view: django_celery_beat_periodictask {
  sql_table_name: public.django_celery_beat_periodictask ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: args {
    type: string
    sql: ${TABLE}."args" ;;
  }
  dimension: clocked_id {
    type: number
    sql: ${TABLE}."clocked_id" ;;
  }
  dimension: crontab_id {
    type: number
    sql: ${TABLE}."crontab_id" ;;
  }
  dimension_group: date_changed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_changed" ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }
  dimension: enabled {
    type: yesno
    sql: ${TABLE}."enabled" ;;
  }
  dimension: exchange {
    type: string
    sql: ${TABLE}."exchange" ;;
  }
  dimension: expire_seconds {
    type: number
    sql: ${TABLE}."expire_seconds" ;;
  }
  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."expires" ;;
  }
  dimension: headers {
    type: string
    sql: ${TABLE}."headers" ;;
  }
  dimension: interval_id {
    type: number
    sql: ${TABLE}."interval_id" ;;
  }
  dimension: kwargs {
    type: string
    sql: ${TABLE}."kwargs" ;;
  }
  dimension_group: last_run {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_run_at" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  dimension: one_off {
    type: yesno
    sql: ${TABLE}."one_off" ;;
  }
  dimension: priority {
    type: number
    sql: ${TABLE}."priority" ;;
  }
  dimension: queue {
    type: string
    sql: ${TABLE}."queue" ;;
  }
  dimension: routing_key {
    type: string
    sql: ${TABLE}."routing_key" ;;
  }
  dimension: solar_id {
    type: number
    sql: ${TABLE}."solar_id" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."start_time" ;;
  }
  dimension: task {
    type: string
    sql: ${TABLE}."task" ;;
  }
  dimension: total_run_count {
    type: number
    sql: ${TABLE}."total_run_count" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
