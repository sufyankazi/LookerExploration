view: designations {
  sql_table_name: public.designations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: designate_to_id {
    type: number
    sql: ${TABLE}.designate_to_id ;;
  }

  dimension: designate_to_type {
    type: string
    sql: ${TABLE}.designate_to_type ;;
  }

  dimension: designateable_id {
    type: number
    sql: ${TABLE}.designateable_id ;;
  }

  dimension: designateable_type {
    type: string
    sql: ${TABLE}.designateable_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
