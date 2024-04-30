view: lms_coursedetails_schedule {
  sql_table_name: public.lms_coursedetails_schedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: coursedetails_id {
    type: string
    sql: ${TABLE}."coursedetails_id" ;;
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
