view: django_celery_beat_clockedschedule {
  sql_table_name: public.django_celery_beat_clockedschedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension_group: clocked {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."clocked_time" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
