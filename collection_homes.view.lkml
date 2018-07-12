view: collection_homes {
  sql_table_name: public.collection_homes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collection_id ;;
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

  dimension: home_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.home_id ;;
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
    drill_fields: [id, homes.id, collections.id, collections.name, collections.default_campaign_name]
  }
}
