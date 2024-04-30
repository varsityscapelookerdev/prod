view: payment_plansetting {
  sql_table_name: public.payment_plansetting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: amount_to_pay {
    type: number
    sql: ${TABLE}."amount_to_pay" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: number_of_courses {
    type: number
    sql: ${TABLE}."number_of_courses" ;;
  }
  dimension: number_of_instructors {
    type: number
    sql: ${TABLE}."number_of_instructors" ;;
  }
  dimension: number_of_monthly_minutes {
    type: number
    sql: ${TABLE}."number_of_monthly_minutes" ;;
  }
  dimension: number_of_students_per_cohort {
    type: number
    sql: ${TABLE}."number_of_students_per_cohort" ;;
  }
  dimension: plan_id {
    type: string
    sql: ${TABLE}."plan_id" ;;
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
