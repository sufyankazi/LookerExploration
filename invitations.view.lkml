view: invitations {
  sql_table_name: public.invitations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaigns_count {
    type: number
    sql: ${TABLE}.campaigns_count ;;
  }

  dimension: click_count {
    type: number
    sql: ${TABLE}.click_count ;;
  }

  dimension_group: clicked_on_dts {
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
    sql: ${TABLE}.clicked_on_dts ;;
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

  dimension: donations_count {
    type: number
    sql: ${TABLE}.donations_count ;;
  }

  dimension: invitable_id {
    type: number
    sql: ${TABLE}.invitable_id ;;
  }

  dimension: invitable_type {
    type: string
    sql: ${TABLE}.invitable_type ;;
  }

  dimension: invitee_email {
    type: string
    sql: ${TABLE}.invitee_email ;;
  }

  dimension: invitee_id {
    type: number
    sql: ${TABLE}.invitee_id ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: sender_id {
    type: number
    sql: ${TABLE}.sender_id ;;
  }

  dimension_group: sent_on_dts {
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
    sql: ${TABLE}.sent_on_dts ;;
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
    drill_fields: [id, campaigns.count, donations.count, pledges.count]
  }
}
