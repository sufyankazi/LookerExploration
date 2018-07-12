view: allocated_donations {
  sql_table_name: public.allocated_donations ;;

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

  dimension: donation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.donation_id ;;
  }

  dimension: home_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.home_id ;;
  }

  dimension: total_in_dollars {
    type: number
    sql: ${TABLE}.total_in_dollars ;;
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
    drill_fields: [id, donations.id, homes.id]
  }
}
