view: taggabilities {
  sql_table_name: public.taggabilities ;;

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

  dimension: tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tag_id ;;
  }

  dimension: taggable_id {
    type: number
    sql: ${TABLE}.taggable_id ;;
  }

  dimension: taggable_type {
    type: string
    sql: ${TABLE}.taggable_type ;;
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
    drill_fields: [id, tags.id, tags.name]
  }
}
