view: recipients {
  sql_table_name: public.recipients ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: currently_attending_school {
    type: yesno
    sql: ${TABLE}.currently_attending_school ;;
  }

  dimension: days_worked_in_a_week {
    type: number
    sql: ${TABLE}.days_worked_in_a_week ;;
  }

  dimension: family_id {
    type: number
    sql: ${TABLE}.family_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: household_role {
    type: string
    sql: ${TABLE}.household_role ;;
  }

  dimension: household_role_other {
    type: string
    sql: ${TABLE}.household_role_other ;;
  }

  dimension: is_head_of_household {
    type: yesno
    sql: ${TABLE}.is_head_of_household ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  dimension: occupation_original {
    hidden: yes
    type: number
    sql: ${TABLE}.occupation ;;
  }
  dimension:  occupation{
    type:  string
    case: {
      when: {
        sql: ${occupation_original} = 0 ;;
        label: "none"
      }
      when: {
        sql: ${occupation_original} = 1 ;;
        label: "student"
      }
      when: {
        sql: ${occupation_original} = 2 ;;
        label: "agriculture or fish"
      }
      when: {
        sql: ${occupation_original} = 3 ;;
        label: "vendor"
      }
      when: {
        sql: ${occupation_original} = 4 ;;
        label: "contracted worker"
      }
      when: {
        sql: ${occupation_original} = 5 ;;
        label: "paid consistent job"
      }
      when: {
        sql: ${occupation_original} = 6 ;;
        label: "other"
      }
    }
#     sql:  ${occupation} ;;
  }
  dimension: occupation_comments {
    type: string
    sql: ${TABLE}.occupation_comments ;;
  }

  dimension: occupation_other {
    type: string
    sql: ${TABLE}.occupation_other ;;
  }

  dimension: phone_primary {
    type: string
    sql: ${TABLE}.phone_primary ;;
  }

  dimension: phone_secondary {
    type: string
    sql: ${TABLE}.phone_secondary ;;
  }

  dimension: photo_id {
    type: string
    sql: ${TABLE}.photo_id ;;
  }

  dimension: photo_id_image {
    type: string
    sql: ${TABLE}.photo_id_image ;;
  }

  dimension: reason_not_in_school {
    type: string
    sql: ${TABLE}.reason_not_in_school ;;
  }

  dimension: reason_not_in_school_other {
    type: string
    sql: ${TABLE}.reason_not_in_school_other ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }

  dimension: school_section {
    type: string
    sql: ${TABLE}.school_section ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.school_year ;;
  }

  dimension: secure_id {
    type: number
    sql: ${TABLE}.secure_id ;;
  }

  dimension: sex_original {
    type: string
    sql:  ${TABLE}.sex ;;
  }

 dimension: sex {
    type: string
    case: {
      when: {
        sql: ${sex_original} = 0 ;;
        label: "Male"
      }
      when: {
        sql: ${sex_original} = 1 ;;
        label: "Female"
      }
#       when: {
#         sql: ${sex_original} = NULL
#         label: "None";;
#       }
    }
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
    drill_fields: [id, first_name, school_name, last_name, nickname]
  }
}
