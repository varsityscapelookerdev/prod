view: django_celery_beat_periodictasks {
  sql_table_name: public.django_celery_beat_periodictasks ;;

  dimension: ident {
    type: number
    sql: ${TABLE}."ident" ;;
  }
  dimension_group: last_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_update" ;;
  }
  measure: count {
    type: count
  }
}
