view: homes {
  sql_table_name: public.homes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: community_id {
    type: number
    sql: ${TABLE}.community_id ;;
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

  dimension: floor_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.floor_plan_id ;;
  }

  dimension_group: funded_on_dts {
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
    sql: ${TABLE}.funded_on_dts ;;
  }

  dimension: home_batch_id {
    type: number
    sql: ${TABLE}.home_batch_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: street_line_1 {
    type: string
    sql: ${TABLE}.street_line_1 ;;
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
  measure: countdistinct {
    type: count_distinct
    drill_fields: [detail*]
    sql:  ${id} ;;
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      floor_plans.id,
      floor_plans.name,
      allocated_donations.count,
      collection_homes.count,
      families.count
    ]
  }
}
