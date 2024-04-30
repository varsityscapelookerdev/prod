view: academy_academyinvite {
  sql_table_name: public.academy_academyinvite ;;
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
  dimension: course_id {
    type: string
    sql: ${TABLE}."course_id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }
  dimension: fee_waiver {
    type: yesno
    sql: ${TABLE}."fee_waiver" ;;
  }
  dimension: invite_slug {
    type: string
    sql: ${TABLE}."invite_slug" ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}."role" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
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
