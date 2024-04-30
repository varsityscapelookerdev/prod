view: lms_coursesetting {
  sql_table_name: public.lms_coursesetting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: alumni_fee {
    type: number
    sql: ${TABLE}."alumni_fee" ;;
  }
  dimension: alumni_fee_plan {
    type: string
    sql: ${TABLE}."alumni_fee_plan" ;;
  }
  dimension: alumni_group {
    type: yesno
    sql: ${TABLE}."alumni_group" ;;
  }
  dimension: auto_accept {
    type: yesno
    sql: ${TABLE}."auto_accept" ;;
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
  dimension: reservation {
    type: yesno
    sql: ${TABLE}."reservation" ;;
  }
  dimension: show_recordings {
    type: yesno
    sql: ${TABLE}."show_recordings" ;;
  }
  dimension: sop {
    type: yesno
    sql: ${TABLE}."sop" ;;
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
