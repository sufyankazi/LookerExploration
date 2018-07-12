view: impressions {
  sql_table_name: public.impressions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_name {
    type: string
    sql: ${TABLE}.action_name ;;
  }

  dimension: controller_name {
    type: string
    sql: ${TABLE}.controller_name ;;
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

  dimension: impressionable_id {
    type: number
    sql: ${TABLE}.impressionable_id ;;
  }

  dimension: impressionable_type {
    type: string
    sql: ${TABLE}.impressionable_type ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: params {
    type: string
    sql: ${TABLE}.params ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: request_hash {
    type: string
    sql: ${TABLE}.request_hash ;;
  }

  dimension: session_hash {
    type: string
    sql: ${TABLE}.session_hash ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      controller_name,
      action_name,
      view_name,
      users.id,
      users.first_name,
      users.middle_name,
      users.last_name
    ]
  }
}
