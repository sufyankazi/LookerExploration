view: survey_answers {
  sql_table_name: public.survey_answers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: author_id {
    type: number
    sql: ${TABLE}.author_id ;;
  }

  dimension: content_english {
    type: string
    sql: ${TABLE}.content_english ;;
  }

  dimension: content_native {
    type: string
    sql: ${TABLE}.content_native ;;
  }
  dimension: content_native_num{
    type: number
    sql: ${TABLE}.content_native ;;
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

  dimension: family_id {
    type: number
    sql: ${TABLE}.family_id ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.media_url ;;
  }

  dimension: survey_question_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_question_id ;;
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
    drill_fields: [id, survey_questions.id]
  }
}
