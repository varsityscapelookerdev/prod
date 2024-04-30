view: payment_studentcoursetransaction {
  sql_table_name: public.payment_studentcoursetransaction ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: academy_credited {
    type: yesno
    sql: ${TABLE}."academy_credited" ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }
  dimension: application_id {
    type: string
    sql: ${TABLE}."application_id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: payment_id {
    type: string
    sql: ${TABLE}."payment_id" ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
