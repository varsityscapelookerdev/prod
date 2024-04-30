view: lms_currentmonthstats {
  sql_table_name: public.lms_currentmonthstats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: academy_id {
    type: string
    sql: ${TABLE}."academy_id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: minutes_remaining {
    type: number
    sql: ${TABLE}."minutes_remaining" ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}."month" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
