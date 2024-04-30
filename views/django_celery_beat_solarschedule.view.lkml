view: django_celery_beat_solarschedule {
  sql_table_name: public.django_celery_beat_solarschedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: event {
    type: string
    sql: ${TABLE}."event" ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
