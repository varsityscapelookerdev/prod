view: lms_course_moderators {
  sql_table_name: public.lms_course_moderators ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: course_id {
    type: string
    sql: ${TABLE}."course_id" ;;
  }
  dimension: subuser_id {
    type: string
    sql: ${TABLE}."subuser_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
