view: pledges {
  sql_table_name: public.pledges ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address_id {
    type: number
    sql: ${TABLE}.address_id ;;
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

  dimension_group: estimated_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.estimated_due_date ;;
  }

  dimension: form_completion_speed_in_seconds {
    type: number
    sql: ${TABLE}.form_completion_speed_in_seconds ;;
  }

  dimension: investment_total_in_dollars {
    type: number
    sql: ${TABLE}.investment_total_in_dollars ;;
  }

  dimension: invitation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invitation_id ;;
  }

  dimension: is_anonymous {
    type: yesno
    sql: ${TABLE}.is_anonymous ;;
  }

  dimension: pledgeable_id {
    type: number
    sql: ${TABLE}.pledgeable_id ;;
  }

  dimension: pledgeable_type {
    type: string
    sql: ${TABLE}.pledgeable_type ;;
  }

  dimension: pledger_id {
    type: number
    sql: ${TABLE}.pledger_id ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
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
    drill_fields: [id, invitations.id, donations.count]
  }
}
