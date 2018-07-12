view: campaigns {
  sql_table_name: public.campaigns ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_token {
    type: string
    sql: ${TABLE}.access_token ;;
  }

  dimension: anonymize_donations {
    type: yesno
    sql: ${TABLE}.anonymize_donations ;;
  }

  dimension: campaign_type {
    type: number
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: campaignable_id {
    type: number
    sql: ${TABLE}.campaignable_id ;;
  }

  dimension: campaignable_type {
    type: string
    sql: ${TABLE}.campaignable_type ;;
  }

  dimension: collection_subsidiary {
    type: string
    sql: ${TABLE}.collection_subsidiary ;;
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

  dimension: custom_campaigner_name {
    type: string
    sql: ${TABLE}.custom_campaigner_name ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: donations_count {
    type: number
    sql: ${TABLE}.donations_count ;;
  }

  dimension_group: end_dts {
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
    sql: ${TABLE}.end_dts ;;
  }

  dimension: feature_image_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.feature_image_id ;;
  }

  dimension: financial_goal_in_dollars {
    type: number
    sql: ${TABLE}.financial_goal_in_dollars ;;
  }

  dimension: form_completion_speed_in_seconds {
    type: number
    sql: ${TABLE}.form_completion_speed_in_seconds ;;
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

  dimension: invitation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invitation_id ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacy_id ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: primary_color {
    type: string
    sql: ${TABLE}.primary_color ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension_group: start_dts {
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
    sql: ${TABLE}.start_dts ;;
  }

  dimension_group: start_reminder_sent_on_dts {
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
    sql: ${TABLE}.start_reminder_sent_on_dts ;;
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
      custom_campaigner_name,
      name,
      invitations.id,
      users.id,
      users.first_name,
      users.middle_name,
      users.last_name,
      feature_images.name,
      feature_images.id
    ]
  }
}
