view: lms_meeting {
  sql_table_name: public.lms_meeting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: occupant_meeting_id {
    description: "To Populate data of Occupants(Who attends the meeting) for POC as lms_occupant table don't have any records"
    type: string
    sql: CASE
          WHEN ${TABLE}.id = 'cbb39e15-8e1c-4522-96b7-1775c0751b9d' then ${TABLE}.id
          WHEN ${TABLE}.id = 'eebbf508-c1ac-4ea4-9eb7-efdcb20637c7' then ${TABLE}.id
          WHEN ${TABLE}.id = 'b1ec6fdd-8e93-4f8b-ad6d-e9c3f9ab8fc8' then ${TABLE}.id
          ELSE 'N/A'
          END;;
  }
  dimension: cohort_id {
    type: string
    sql: ${TABLE}."cohort_id" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."end" ;;
  }
  dimension: link_id {
    type: string
    sql: ${TABLE}."link_id" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."start" ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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
