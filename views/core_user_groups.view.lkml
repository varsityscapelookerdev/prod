view: core_user_groups {
  sql_table_name: public.core_user_groups ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: group_id {
    type: number
    sql: ${TABLE}."group_id" ;;
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
