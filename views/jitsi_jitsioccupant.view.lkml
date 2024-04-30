view: jitsi_jitsioccupant {
  sql_table_name: public.jitsi_jitsioccupant ;;
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
  dimension: jid {
    type: string
    sql: ${TABLE}."jid" ;;
  }
  dimension_group: joined {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."joined_at" ;;
  }
  dimension_group: left {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."left_at" ;;
  }
  dimension: meeting_id {
    type: string
    sql: ${TABLE}."meeting_id" ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
