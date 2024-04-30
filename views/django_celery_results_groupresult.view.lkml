view: django_celery_results_groupresult {
  sql_table_name: public.django_celery_results_groupresult ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: content_encoding {
    type: string
    sql: ${TABLE}."content_encoding" ;;
  }
  dimension: content_type {
    type: string
    sql: ${TABLE}."content_type" ;;
  }
  dimension_group: date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_created" ;;
  }
  dimension_group: date_done {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_done" ;;
  }
  dimension: group_id {
    type: string
    sql: ${TABLE}."group_id" ;;
  }
  dimension: result {
    type: string
    sql: ${TABLE}."result" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
