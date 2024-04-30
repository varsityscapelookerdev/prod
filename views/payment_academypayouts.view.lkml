view: payment_academypayouts {
  sql_table_name: public.payment_academypayouts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}."transaction_id" ;;
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
