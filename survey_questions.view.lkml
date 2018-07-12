view: survey_questions {
  sql_table_name: public.survey_questions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: display_rule_condition {
    type: number
    sql: ${TABLE}.display_rule_condition ;;
  }

  dimension: display_rule_parent_id {
    type: number
    sql: ${TABLE}.display_rule_parent_id ;;
  }

  dimension: display_rule_value {
    type: string
    sql: ${TABLE}.display_rule_value ;;
  }

  dimension: field_type {
    type: number
    sql: ${TABLE}.field_type ;;
  }

  dimension: hint {
    type: string
    sql: ${TABLE}.hint ;;
  }

  dimension: is_required {
    type: yesno
    sql: ${TABLE}.is_required ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.options ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_id ;;
  }

  dimension: survey_reference_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_reference_id ;;
  }

  dimension: title_english {
    type: string
    sql: ${TABLE}.title_english ;;
  }

  dimension: title_native {
    type: string
    sql: ${TABLE}.title_native ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      surveys.name,
      surveys.id,
      survey_references.id,
      survey_references.name,
      survey_answers.count
    ]
  }
}
