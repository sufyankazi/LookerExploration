view: move_in_dates_in_leveque {
  derived_table: {
    sql: select id, movein_at from families where intake_community_id = 1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: movein_at {
    type: time
    sql: ${TABLE}.movein_at ;;
  }

  set: detail {
    fields: [id, movein_at_time]
  }
}
