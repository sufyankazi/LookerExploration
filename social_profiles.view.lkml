view: social_profiles {
  sql_table_name: public.social_profiles ;;

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

  dimension: followers {
    type: number
    sql: ${TABLE}.followers ;;
  }

  dimension: following {
    type: number
    sql: ${TABLE}.following ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}.profile_id ;;
  }

  dimension: rss_url {
    type: string
    sql: ${TABLE}.rss_url ;;
  }

  dimension: sociable_id {
    type: number
    sql: ${TABLE}.sociable_id ;;
  }

  dimension: sociable_type {
    type: string
    sql: ${TABLE}.sociable_type ;;
  }

  dimension: type_id {
    type: string
    sql: ${TABLE}.type_id ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [id, username]
  }
}
