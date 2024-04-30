view: lms_lesson {
  sql_table_name: public.lms_lesson ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: content {
    type: string
    sql: ${TABLE}."content" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
  }
  dimension: module_id {
    type: string
    sql: ${TABLE}."module_id" ;;
  }
  dimension: short_desc {
    type: string
    sql: ${TABLE}."short_desc" ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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
