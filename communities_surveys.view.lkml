view: communities_surveys {
  sql_table_name: public.communities_surveys ;;

  dimension: community_id {
    type: number
    sql: ${TABLE}.community_id ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.survey_id ;;
  }

  measure: count {
    type: count
    drill_fields: [surveys.name, surveys.id]
  }
}
