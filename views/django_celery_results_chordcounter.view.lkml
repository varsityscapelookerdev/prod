view: django_celery_results_chordcounter {
  sql_table_name: public.django_celery_results_chordcounter ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: count_django_celery_results_chordcounter {
    type: number
    sql: ${TABLE}."count" ;;
  }
  dimension: group_id {
    type: string
    sql: ${TABLE}."group_id" ;;
  }
  dimension: sub_tasks {
    type: string
    sql: ${TABLE}."sub_tasks" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
