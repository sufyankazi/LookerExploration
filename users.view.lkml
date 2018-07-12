view: users {
  sql_table_name: public.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auth_token {
    type: string
    sql: ${TABLE}.auth_token ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.birthdate ;;
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

  dimension_group: current_sign_in {
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
    sql: ${TABLE}.current_sign_in_at ;;
  }

  dimension: current_sign_in_ip {
    type: string
    sql: ${TABLE}.current_sign_in_ip ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.encrypted_password ;;
  }

  dimension: estimated_gift_capacity_max {
    type: number
    sql: ${TABLE}.estimated_gift_capacity_max ;;
  }

  dimension: estimated_gift_capacity_min {
    type: number
    sql: ${TABLE}.estimated_gift_capacity_min ;;
  }

  dimension: estimated_income_max {
    type: number
    sql: ${TABLE}.estimated_income_max ;;
  }

  dimension: estimated_income_min {
    type: number
    sql: ${TABLE}.estimated_income_min ;;
  }

  dimension: estimated_net_worth_max {
    type: number
    sql: ${TABLE}.estimated_net_worth_max ;;
  }

  dimension: estimated_net_worth_min {
    type: number
    sql: ${TABLE}.estimated_net_worth_min ;;
  }

  dimension: estimated_real_estate_max {
    type: number
    sql: ${TABLE}.estimated_real_estate_max ;;
  }

  dimension: estimated_real_estate_min {
    type: number
    sql: ${TABLE}.estimated_real_estate_min ;;
  }

  dimension: feature_image_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.feature_image_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: first_visit_dts {
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
    sql: ${TABLE}.first_visit_dts ;;
  }

  dimension: has_system_access {
    type: yesno
    sql: ${TABLE}.has_system_access ;;
  }

  dimension: is_demo_mode {
    type: yesno
    sql: ${TABLE}.is_demo_mode ;;
  }

  dimension_group: last_full_contact_fetch_dts {
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
    sql: ${TABLE}.last_full_contact_fetch_dts ;;
  }

  dimension_group: last_funraise_sync {
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
    sql: ${TABLE}.last_funraise_sync_at ;;
  }

  dimension_group: last_mailchimp_sync {
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
    sql: ${TABLE}.last_mailchimp_sync_at ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension_group: last_sign_in {
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
    sql: ${TABLE}.last_sign_in_at ;;
  }

  dimension: last_sign_in_ip {
    type: string
    sql: ${TABLE}.last_sign_in_ip ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacy_id ;;
  }

  dimension: mailchimp_id {
    type: string
    sql: ${TABLE}.mailchimp_id ;;
  }

  dimension: mailing_address_id {
    type: number
    sql: ${TABLE}.mailing_address_id ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: native_language {
    type: string
    sql: ${TABLE}.native_language ;;
  }

  dimension: p2g_score {
    type: string
    sql: ${TABLE}.p2g_score ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: profile_photo {
    type: string
    sql: ${TABLE}.profile_photo ;;
  }

  dimension_group: remember_created {
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
    sql: ${TABLE}.remember_created_at ;;
  }

  dimension_group: reset_password_sent {
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
    sql: ${TABLE}.reset_password_sent_at ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}.reset_password_token ;;
  }

  dimension: roles_mask {
    type: number
    sql: ${TABLE}.roles_mask ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}.sign_in_count ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: stripe_customer_id {
    type: string
    sql: ${TABLE}.stripe_customer_id ;;
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

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      middle_name,
      last_name,
      feature_images.name,
      feature_images.id,
      activities.count,
      campaigns.count,
      construction_milestone_log_entries.count,
      employments.count,
      impressions.count,
      messages.count,
      notes.count,
      pg_stat_statements.count,
      quick_links.count
    ]
  }
}
