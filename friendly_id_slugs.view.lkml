view: friendly_id_slugs {
  sql_table_name: public.friendly_id_slugs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sluggable_id {
    type: number
    sql: ${TABLE}.sluggable_id ;;
  }

  dimension: sluggable_type {
    type: string
    sql: ${TABLE}.sluggable_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
