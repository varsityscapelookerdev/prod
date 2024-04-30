view: lms_coursedetails {
  sql_table_name: public.lms_coursedetails ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: about {
    type: string
    sql: ${TABLE}."about" ;;
  }
  dimension: achievements {
    type: string
    sql: ${TABLE}."achievements" ;;
  }
  dimension: course_id {
    type: string
    sql: ${TABLE}."course_id" ;;
  }
  dimension: cover {
    type: string
    sql: ${TABLE}."cover" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: prerequisite {
    type: string
    sql: ${TABLE}."prerequisite" ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }
  dimension: thumbnail {
    type: string
    sql: ${TABLE}."thumbnail" ;;
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
