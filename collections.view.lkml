view: collections {
  sql_table_name: public.collections ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: affiliate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: anonymize_donations {
    type: yesno
    sql: ${TABLE}.anonymize_donations ;;
  }

  dimension: campaigns_count {
    type: number
    sql: ${TABLE}.campaigns_count ;;
  }

  dimension: collection_subsidiary_input_hint {
    type: string
    sql: ${TABLE}.collection_subsidiary_input_hint ;;
  }

  dimension: collection_subsidiary_input_label {
    type: string
    sql: ${TABLE}.collection_subsidiary_input_label ;;
  }

  dimension: collection_subsidiary_input_placeholder {
    type: string
    sql: ${TABLE}.collection_subsidiary_input_placeholder ;;
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

  dimension: default_campaign_description {
    type: string
    sql: ${TABLE}.default_campaign_description ;;
  }

  dimension: default_campaign_name {
    type: string
    sql: ${TABLE}.default_campaign_name ;;
  }

  dimension: default_campaign_overview {
    type: string
    sql: ${TABLE}.default_campaign_overview ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: display_campaign_search {
    type: yesno
    sql: ${TABLE}.display_campaign_search ;;
  }

  dimension: display_collection_subsidiary_input {
    type: yesno
    sql: ${TABLE}.display_collection_subsidiary_input ;;
  }

  dimension: display_families {
    type: yesno
    sql: ${TABLE}.display_families ;;
  }

  dimension: display_leaderboard {
    type: yesno
    sql: ${TABLE}.display_leaderboard ;;
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

  dimension: feature_video_id {
    type: string
    sql: ${TABLE}.feature_video_id ;;
  }

  dimension: feature_video_thumbnail_id {
    type: number
    sql: ${TABLE}.feature_video_thumbnail_id ;;
  }

  dimension: featured_video_content {
    type: string
    sql: ${TABLE}.featured_video_content ;;
  }

  dimension: featured_video_title {
    type: string
    sql: ${TABLE}.featured_video_title ;;
  }

  dimension: financial_goal_in_dollars {
    type: number
    sql: ${TABLE}.financial_goal_in_dollars ;;
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

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: mailchimp_id {
    type: string
    sql: ${TABLE}.mailchimp_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: primary_color {
    type: string
    sql: ${TABLE}.primary_color ;;
  }

  dimension: promo_section_1_content {
    type: string
    sql: ${TABLE}.promo_section_1_content ;;
  }

  dimension: promo_section_1_feature_image {
    type: string
    sql: ${TABLE}.promo_section_1_feature_image ;;
  }

  dimension: promo_section_1_title {
    type: string
    sql: ${TABLE}.promo_section_1_title ;;
  }

  dimension: promo_section_1_video_id {
    type: string
    sql: ${TABLE}.promo_section_1_video_id ;;
  }

  dimension: promo_section_2_content {
    type: string
    sql: ${TABLE}.promo_section_2_content ;;
  }

  dimension: promo_section_2_feature_image {
    type: string
    sql: ${TABLE}.promo_section_2_feature_image ;;
  }

  dimension: promo_section_2_title {
    type: string
    sql: ${TABLE}.promo_section_2_title ;;
  }

  dimension: promo_section_2_video_id {
    type: string
    sql: ${TABLE}.promo_section_2_video_id ;;
  }

  dimension: promo_section_3_content {
    type: string
    sql: ${TABLE}.promo_section_3_content ;;
  }

  dimension: promo_section_3_feature_image {
    type: string
    sql: ${TABLE}.promo_section_3_feature_image ;;
  }

  dimension: promo_section_3_title {
    type: string
    sql: ${TABLE}.promo_section_3_title ;;
  }

  dimension: promo_section_3_video_id {
    type: string
    sql: ${TABLE}.promo_section_3_video_id ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: shareable_linkedin_content {
    type: string
    sql: ${TABLE}.shareable_linkedin_content ;;
  }

  dimension: shareable_mailto_url {
    type: string
    sql: ${TABLE}.shareable_mailto_url ;;
  }

  dimension: shareable_twitter_content {
    type: string
    sql: ${TABLE}.shareable_twitter_content ;;
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

  dimension: terms_and_conditions {
    type: string
    sql: ${TABLE}.terms_and_conditions ;;
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
      name,
      default_campaign_name,
      floor_plans.id,
      floor_plans.name,
      affiliates.support_contact_name,
      affiliates.id,
      organizations.id,
      organizations.name,
      feature_images.name,
      feature_images.id,
      collection_homes.count
    ]
  }
}
