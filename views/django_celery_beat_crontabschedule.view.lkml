view: django_celery_beat_crontabschedule {
  sql_table_name: public.django_celery_beat_crontabschedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: day_of_month {
    type: string
    sql: ${TABLE}."day_of_month" ;;
  }
  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }
  dimension: hour {
    type: string
    sql: ${TABLE}."hour" ;;
  }
  dimension: minute {
    type: string
    sql: ${TABLE}."minute" ;;
  }
  dimension: month_of_year {
    type: string
    sql: ${TABLE}."month_of_year" ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}."timezone" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
