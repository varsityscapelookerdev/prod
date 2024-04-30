view: core_user {
  sql_table_name: public.core_user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
  dimension: account_status {
    type: string
    sql: ${TABLE}."account_status" ;;
  }
  dimension: apple_user {
    type: yesno
    sql: ${TABLE}."apple_user" ;;
  }
  dimension: credits {
    type: number
    sql: ${TABLE}."credits" ;;
  }
  dimension: current_academy_id {
    type: string
    sql: ${TABLE}."current_academy_id" ;;
  }
  dimension_group: date_of_birth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."dateOfBirth" ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }
  dimension: firebase_id {
    type: string
    sql: ${TABLE}."firebase_id" ;;
  }
  dimension: firstname {
    type: string
    sql: ${TABLE}."firstname" ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }
  dimension: google_user {
    type: yesno
    sql: ${TABLE}."google_user" ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}."image" ;;
  }
  dimension: is_active {
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }
  dimension: is_staff {
    type: yesno
    sql: ${TABLE}."is_staff" ;;
  }
  dimension: is_superuser {
    type: yesno
    sql: ${TABLE}."is_superuser" ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_login" ;;
  }
  dimension: lastname {
    type: string
    sql: ${TABLE}."lastname" ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}."phoneNumber" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."start_date" ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, firstname, lastname, username]
  }
}
