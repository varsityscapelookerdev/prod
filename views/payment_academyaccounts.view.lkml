view: payment_academyaccounts {
  sql_table_name: public.payment_academyaccounts ;;
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
  dimension: available_balance {
    type: number
    sql: ${TABLE}."available_balance" ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }
  dimension: payout_account_id {
    type: string
    sql: ${TABLE}."payout_account_id" ;;
  }
  dimension: payout_method {
    type: string
    sql: ${TABLE}."payout_method" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }
  dimension: total_earnings {
    type: number
    sql: ${TABLE}."total_earnings" ;;
  }
  dimension: total_payout {
    type: number
    sql: ${TABLE}."total_payout" ;;
  }
  dimension: wallet_balance {
    type: number
    sql: ${TABLE}."wallet_balance" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
