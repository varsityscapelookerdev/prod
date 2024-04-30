view: lms_application {
  sql_table_name: public.lms_application ;;
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
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }
  dimension: sop {
    type: string
    sql: ${TABLE}."sop" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  dimension: subuser_id {
    type: string
    sql: ${TABLE}."subuser_id" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  dimension: visibility {
    type: yesno
    sql: ${TABLE}."visibility" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
