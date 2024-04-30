view: lms_cohort {
  sql_table_name: public.lms_cohort ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
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
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."end_date" ;;
  }
  dimension: faculty_id {
    type: string
    sql: ${TABLE}."faculty_id" ;;
  }
  dimension: fee {
    type: number
    sql: ${TABLE}."fee" ;;
  }
  dimension: fee_plan {
    type: string
    sql: ${TABLE}."fee_plan" ;;
  }
  dimension: iteration {
    type: number
    sql: ${TABLE}."iteration" ;;
  }
  dimension_group: open {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."open_time" ;;
  }
  dimension: price_id {
    type: string
    sql: ${TABLE}."price_id" ;;
  }
  dimension: reserved {
    type: number
    sql: ${TABLE}."reserved" ;;
  }
  dimension: seats {
    type: number
    sql: ${TABLE}."seats" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start_date" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
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
