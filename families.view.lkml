view: families {
  sql_table_name: public.families ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_photo_1 {
    type: string
    sql: ${TABLE}.additional_photo_1 ;;
  }

  dimension: additional_photo_2 {
    type: string
    sql: ${TABLE}.additional_photo_2 ;;
  }

  dimension: additional_photo_3 {
    type: string
    sql: ${TABLE}.additional_photo_3 ;;
  }

  dimension: adult_count {
    type: string
    sql: ${TABLE}.adult_count ;;
  }

  dimension: child_count {
    type: string
    sql: ${TABLE}.child_count ;;
  }

  dimension: close_up_photo {
    type: string
    sql: ${TABLE}.close_up_photo ;;
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

  dimension: custom_mailer_text_1 {
    type: string
    sql: ${TABLE}.custom_mailer_text_1 ;;
  }

  dimension: custom_mailer_text_2 {
    type: string
    sql: ${TABLE}.custom_mailer_text_2 ;;
  }

  dimension: custom_mailer_text_3 {
    type: string
    sql: ${TABLE}.custom_mailer_text_3 ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: disqualified {
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
    sql: ${TABLE}.disqualified_at ;;
  }

  dimension: dropbox_url {
    type: string
    sql: ${TABLE}.dropbox_url ;;
  }

  dimension: family_member_count {
    type: number
    sql: ${TABLE}.family_member_count ;;
  }

  dimension: family_photo {
    type: string
    sql: ${TABLE}.family_photo ;;
  }

  dimension: featured_image {
    type: string
    sql: ${TABLE}.featured_image ;;
  }

  dimension: home_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.home_id ;;
  }

  dimension: intake_community_id {
    type: number
    sql: ${TABLE}.intake_community_id ;;
  }
  dimension: intake_community_id_string {
    type: string
    case: {
      when: {
        sql: ${intake_community_id} = 1 ;;
        label: "Leveque"
      }
      when: {
        sql: ${intake_community_id} = 2 ;;
        label: "Nuevo Cuscátlan"
      }
      when: {
        sql: ${intake_community_id} = 3 ;;
        label: "Mizque"
      }
      when: {
        sql: ${intake_community_id} = 4 ;;
        label: "Ahuachapan"
      }
      when: {
        sql: ${intake_community_id} = 5 ;;
        label: "Minoterie"
      }
      when: {
        sql: ${intake_community_id} = 6 ;;
        label: "Labodrie"
      }
      when: {
        sql: ${intake_community_id} = 7 ;;
        label: "Gonaives"
      }
      when: {
        sql: ${intake_community_id} = 8 ;;
        label: "Jeremie"
      }
      when: {
        sql: ${intake_community_id} = 9 ;;
        label: "Bonbon"
      }
      when: {
        sql: ${intake_community_id} = 10 ;;
        label: "Tijuana"
      }
      when: {
        sql: ${intake_community_id} = 11 ;;
        label: "Les Anglais"
      }
      when: {
        sql: ${intake_community_id} = 12 ;;
        label: "Titanyen"
      }
      when: {
        sql: ${intake_community_id} = 13 ;;
        label: "Ahuachapan 2"
      }
      when: {
        sql: ${intake_community_id} = 14 ;;
        label: "Jeremie JPHRO"
      }
      when: {
        sql: ${intake_community_id} = 15 ;;
        label: "La Herradura"
      }
      when: {
        sql: ${intake_community_id} = 16 ;;
        label: "Nuevo Cuscatlan 2"
      }
      when: {
        sql: ${intake_community_id} = 16 ;;
        label: "Tenosique"
      }
      when: {
        sql: ${intake_community_id} = 16 ;;
        label: "3D Community"
      }

    }
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}.legacy_id ;;
  }

  dimension: lottery_number_id {
    type: string
    sql: ${TABLE}.lottery_number_id ;;
  }

  dimension_group: movein {
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
    sql: ${TABLE}.movein_at ;;
  }

  dimension: movein_gif {
    type: string
    sql: ${TABLE}.movein_gif ;;
  }

  dimension: movein_image {
    type: string
    sql: ${TABLE}.movein_image ;;
  }

  dimension: movein_story {
    type: string
    sql: ${TABLE}.movein_story ;;
  }

  dimension: movein_video_id {
    type: string
    sql: ${TABLE}.movein_video_id ;;
  }

  dimension_group: movein_video_sent {
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
    sql: ${TABLE}.movein_video_sent_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_home_photo {
    type: string
    sql: ${TABLE}.new_home_photo ;;
  }

  dimension: partner_family_id {
    type: string
    sql: ${TABLE}.partner_family_id ;;
  }

  dimension: public_name {
    type: string
    sql: ${TABLE}.public_name ;;
  }

  dimension_group: qualified {
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
    sql: ${TABLE}.qualified_at ;;
  }

  dimension: remote_image_data_cache {
    type: string
    sql: ${TABLE}.remote_image_data_cache ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tent_photo {
    type: string
    sql: ${TABLE}.tent_photo ;;
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
    drill_fields: [id, public_name, name, homes.id]
  }
}
