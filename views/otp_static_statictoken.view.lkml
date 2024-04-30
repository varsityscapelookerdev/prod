view: otp_static_statictoken {
  sql_table_name: public.otp_static_statictoken ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: device_id {
    type: number
    sql: ${TABLE}."device_id" ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
