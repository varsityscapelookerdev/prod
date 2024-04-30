view: matrix_matrixroom {
  sql_table_name: public.matrix_matrixroom ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: cohort_id {
    type: string
    sql: ${TABLE}."cohort_id" ;;
  }
  dimension: course_id {
    type: string
    sql: ${TABLE}."course_id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: room_id {
    type: string
    sql: ${TABLE}."room_id" ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}."room_type" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
