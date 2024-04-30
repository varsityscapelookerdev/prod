view: academy_academy {
  sql_table_name: public.academy_academy ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: chose_plan {
    type: yesno
    sql: ${TABLE}."chose_plan" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: created_by_id {
    type: string
    sql: ${TABLE}."created_by_id" ;;
  }
  dimension: home_slug {
    type: string
    sql: ${TABLE}."home_slug" ;;
  }
  dimension: join_token {
    type: string
    sql: ${TABLE}."join_token" ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}."logo" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  dimension: theme_color {
    type: string
    sql: ${TABLE}."theme_color" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
