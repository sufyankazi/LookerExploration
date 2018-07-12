view: reports {
  sql_table_name: public.reports ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaigns_ended_count {
    type: number
    sql: ${TABLE}.campaigns_ended_count ;;
  }

  dimension: campaigns_funded_count {
    type: number
    sql: ${TABLE}.campaigns_funded_count ;;
  }

  dimension: campaigns_started_count {
    type: number
    sql: ${TABLE}.campaigns_started_count ;;
  }

  dimension: collections_ended_count {
    type: number
    sql: ${TABLE}.collections_ended_count ;;
  }

  dimension: collections_funded_count {
    type: number
    sql: ${TABLE}.collections_funded_count ;;
  }

  dimension: collections_started_count {
    type: number
    sql: ${TABLE}.collections_started_count ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.end_at ;;
  }

  dimension: homes_funded_count {
    type: number
    sql: ${TABLE}.homes_funded_count ;;
  }

  dimension: invitations_sent_count {
    type: number
    sql: ${TABLE}.invitations_sent_count ;;
  }

  dimension: pledges_count {
    type: number
    sql: ${TABLE}.pledges_count ;;
  }

  dimension: report_type {
    type: number
    sql: ${TABLE}.report_type ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_at ;;
  }

  dimension: supporters_created_count {
    type: number
    sql: ${TABLE}.supporters_created_count ;;
  }

  dimension: total_funds_donated {
    type: number
    sql: ${TABLE}.total_funds_donated ;;
  }

  dimension: total_funds_pledged {
    type: number
    sql: ${TABLE}.total_funds_pledged ;;
  }

  dimension: total_net_new_funds {
    type: number
    sql: ${TABLE}.total_net_new_funds ;;
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
    drill_fields: [id]
  }
  measure: sum_total_funds_donated {
    type: sum
    sql:  ${total_funds_donated} ;;
  }
  parameter: field2sum {
    type: unquoted
    allowed_value: {
      label: "donated"
      value: "total_funds_donated"
    }
    allowed_value: {
      label: "pledged"
      value: "total_funds_pledged"
    }
  }

  measure: dynamic_sum {
    description: "Use with the field2sum filter"
    type:  sum
    sql: ${TABLE}.{% parameter reports.field2sum %};;
  }
}
