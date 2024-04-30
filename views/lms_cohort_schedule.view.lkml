view: lms_cohort_schedule {
  sql_table_name: public.lms_cohort_schedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: cohort_id {
    type: string
    sql: ${TABLE}."cohort_id" ;;
  }
  dimension: schedule_id {
    type: string
    sql: ${TABLE}."schedule_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
