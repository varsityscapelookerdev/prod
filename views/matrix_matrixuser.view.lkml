view: matrix_matrixuser {
  sql_table_name: public.matrix_matrixuser ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: device_id {
    type: string
    sql: ${TABLE}."device_id" ;;
  }
  dimension: pps {
    type: string
    sql: ${TABLE}."pps" ;;
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
  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, username]
  }
}
