connection: "varsityscape-prod"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vs_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vs_prod_default_datagroup

explore: academy_academy {}

explore: lms_application {
  label: "POC Dashboard Model"
  join: lms_cohort {
    type: left_outer
    relationship: many_to_one
    sql_on: ${lms_application.cohort_id} = ${lms_cohort.id};;
  }
  join: lms_course {
    type: left_outer
    relationship: many_to_one
    sql_on: ${lms_cohort.course_id} = ${lms_course.id} ;;
  }
  join: lms_meeting {
    type: left_outer
    relationship: many_to_one
    sql_on: ${lms_cohort.id} = ${lms_meeting.cohort_id} ;;
  }
  join: jitsi_jitsimeeting {
    type: left_outer
    relationship: many_to_one
    sql_on: ${lms_meeting.id} = ${jitsi_jitsimeeting.meeting_id} ;;
  }
}
