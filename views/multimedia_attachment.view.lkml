view: multimedia_attachment {
  sql_table_name: public.multimedia_attachment ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: attachment {
    type: string
    sql: ${TABLE}."attachment" ;;
  }
  dimension: lesson_id {
    type: string
    sql: ${TABLE}."lesson_id" ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
