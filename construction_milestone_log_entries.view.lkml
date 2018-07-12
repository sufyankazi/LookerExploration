view: construction_milestone_log_entries {
  sql_table_name: public.construction_milestone_log_entries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: construction_milestone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.construction_milestone_id ;;
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

  dimension_group: donor_emails_sent {
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
    sql: ${TABLE}.donor_emails_sent_at ;;
  }

  dimension: image_urls {
    type: string
    sql: ${TABLE}.image_urls ;;
  }

  dimension: loggable_id {
    type: number
    sql: ${TABLE}.loggable_id ;;
  }

  dimension: loggable_type {
    type: string
    sql: ${TABLE}.loggable_type ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension_group: occurred {
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
    sql: ${TABLE}.occurred_at ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.first_name,
      users.middle_name,
      users.last_name,
      construction_milestones.name,
      construction_milestones.id
    ]
  }
}
