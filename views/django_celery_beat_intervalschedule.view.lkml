view: django_celery_beat_intervalschedule {
  sql_table_name: public.django_celery_beat_intervalschedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: every {
    type: number
    sql: ${TABLE}."every" ;;
  }
  dimension: period {
    type: string
    sql: ${TABLE}."period" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
