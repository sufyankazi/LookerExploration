view: survey_requests {
  sql_table_name: public.survey_requests ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension: completing_surveyor_id {
    type: number
    sql: ${TABLE}.completing_surveyor_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.due_at ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_id ;;
  }

  dimension: surveyable_id {
    type: number
    sql: ${TABLE}.surveyable_id ;;
  }

  dimension: surveyable_type {
    type: string
    sql: ${TABLE}.surveyable_type ;;
  }

  dimension: surveyed_family_id {
    type: number
    sql: ${TABLE}.surveyed_family_id ;;
  }

  dimension: surveyor_id {
    type: number
    sql: ${TABLE}.surveyor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, surveys.name, surveys.id]
  }
}
