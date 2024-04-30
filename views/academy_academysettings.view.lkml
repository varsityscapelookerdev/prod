view: academy_academysettings {
  sql_table_name: public.academy_academysettings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: academy_access {
    type: string
    sql: ${TABLE}."academy_access" ;;
  }
  dimension: academy_id {
    type: string
    sql: ${TABLE}."academy_id" ;;
  }
  dimension: auto_join {
    type: yesno
    sql: ${TABLE}."auto_join" ;;
  }
  dimension: create_faculty {
    type: yesno
    sql: ${TABLE}."create_faculty" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension: instructor_can_create_course {
    type: yesno
    sql: ${TABLE}."instructor_can_create_course" ;;
  }
  dimension: invite_instructor_or_admin {
    type: yesno
    sql: ${TABLE}."invite_instructor_or_admin" ;;
  }
  dimension: owner_id {
    type: string
    sql: ${TABLE}."owner_id" ;;
  }
  dimension: privacy_policy_link {
    type: string
    sql: ${TABLE}."privacy_policy_link" ;;
  }
  dimension: term_of_service_link {
    type: string
    sql: ${TABLE}."term_of_service_link" ;;
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
