view: django_celery_results_taskresult {
  sql_table_name: public.django_celery_results_taskresult ;;
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
  dimension: meta {
    type: string
    sql: ${TABLE}."meta" ;;
  }
  dimension: periodic_task_name {
    type: string
    sql: ${TABLE}."periodic_task_name" ;;
  }
  dimension: result {
    type: string
    sql: ${TABLE}."result" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  dimension: task_args {
    type: string
    sql: ${TABLE}."task_args" ;;
  }
  dimension: task_id {
    type: string
    sql: ${TABLE}."task_id" ;;
  }
  dimension: task_kwargs {
    type: string
    sql: ${TABLE}."task_kwargs" ;;
  }
  dimension: task_name {
    type: string
    sql: ${TABLE}."task_name" ;;
  }
  dimension: traceback {
    type: string
    sql: ${TABLE}."traceback" ;;
  }
  dimension: worker {
    type: string
    sql: ${TABLE}."worker" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, periodic_task_name, task_name]
  }
}
