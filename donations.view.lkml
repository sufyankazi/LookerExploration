view: donations {
  sql_table_name: public.donations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address_id {
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension_group: charged {
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
    sql: ${TABLE}.charged_at ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: donatable_id {
    type: number
    sql: ${TABLE}.donatable_id ;;
  }

  dimension: donatable_type {
    type: string
    sql: ${TABLE}.donatable_type ;;
  }

  dimension: donation_total_in_dollars {
    type: number
    sql: ${TABLE}.donation_total_in_dollars ;;
  }

  dimension: donor_id {
    type: number
    sql: ${TABLE}.donor_id ;;
  }

  dimension_group: finalize_reminder_sent {
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
    sql: ${TABLE}.finalize_reminder_sent_at ;;
  }

  dimension: form_completion_speed_in_seconds {
    type: number
    sql: ${TABLE}.form_completion_speed_in_seconds ;;
  }

  dimension_group: fully_allocated {
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
    sql: ${TABLE}.fully_allocated_at ;;
  }

  dimension_group: gratitude_sent {
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
    sql: ${TABLE}.gratitude_sent_at ;;
  }

  dimension: gratitude_sent_by_id {
    type: number
    sql: ${TABLE}.gratitude_sent_by_id ;;
  }

  dimension: honoree_id {
    type: number
    sql: ${TABLE}.honoree_id ;;
  }

  dimension: honoree_message {
    type: string
    sql: ${TABLE}.honoree_message ;;
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

  dimension: legacy_campaign_id {
    type: number
    sql: ${TABLE}.legacy_campaign_id ;;
  }

  dimension: legacy_family_id {
    type: number
    sql: ${TABLE}.legacy_family_id ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacy_id ;;
  }

  dimension: payment_method {
    type: number
    sql: ${TABLE}.payment_method ;;
  }

  dimension: pledge_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.pledge_id ;;
  }

  dimension: reference_id {
    type: string
    sql: ${TABLE}.reference_id ;;
  }

  dimension: refund_amount_in_dollars {
    type: number
    sql: ${TABLE}.refund_amount_in_dollars ;;
  }

  dimension: refund_reference_id {
    type: string
    sql: ${TABLE}.refund_reference_id ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: send_new_donation_mailer {
    type: yesno
    sql: ${TABLE}.send_new_donation_mailer ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: stripe_balance_transaction_id {
    type: string
    sql: ${TABLE}.stripe_balance_transaction_id ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: transaction_fee_in_dollars {
    type: number
    sql: ${TABLE}.transaction_fee_in_dollars ;;
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
    drill_fields: [id, invitations.id, pledges.id, allocated_donations.count]
  }
}
