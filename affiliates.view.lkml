view: affiliates {
  sql_table_name: public.affiliates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaigns_feature_video_id {
    type: string
    sql: ${TABLE}.campaigns_feature_video_id ;;
  }

  dimension: campaigns_welcome_video_id {
    type: string
    sql: ${TABLE}.campaigns_welcome_video_id ;;
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

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: mailchimp_id {
    type: string
    sql: ${TABLE}.mailchimp_id ;;
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

  dimension: send_donation_allocation_mailer {
    type: yesno
    sql: ${TABLE}.send_donation_allocation_mailer ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: subdomain {
    type: string
    sql: ${TABLE}.subdomain ;;
  }

  dimension: support_contact_email {
    type: string
    sql: ${TABLE}.support_contact_email ;;
  }

  dimension: support_contact_name {
    type: string
    sql: ${TABLE}.support_contact_name ;;
  }

  dimension: support_contact_url {
    type: string
    sql: ${TABLE}.support_contact_url ;;
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
    drill_fields: [id, support_contact_name, organizations.id, organizations.name, collections.count]
  }
}
