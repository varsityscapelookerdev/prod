view: core_subuser {
  sql_table_name: public.core_subuser ;;
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
  dimension: account_status {
    type: string
    sql: ${TABLE}."account_status" ;;
  }
  dimension: bio {
    type: string
    sql: ${TABLE}."bio" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: invited {
    type: yesno
    sql: ${TABLE}."invited" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
