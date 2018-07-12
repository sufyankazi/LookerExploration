view: communities {
  sql_table_name: public.communities ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: electricity_solution {
    type: string
    sql: ${TABLE}.electricity_solution ;;
  }

  dimension: estimated_home_count {
    type: number
    sql: ${TABLE}.estimated_home_count ;;
  }

  dimension: featured_image {
    type: string
    sql: ${TABLE}.featured_image ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: legacy_country {
    type: string
    sql: ${TABLE}.legacy_country ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: mailchimp_id {
    type: string
    sql: ${TABLE}.mailchimp_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: secure_id {
    type: string
    sql: ${TABLE}.secure_id ;;
  }

  dimension: sewage_solution {
    type: string
    sql: ${TABLE}.sewage_solution ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sponsor_id {
    type: number
    sql: ${TABLE}.sponsor_id ;;
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

  dimension: water_solution {
    type: string
    sql: ${TABLE}.water_solution ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
