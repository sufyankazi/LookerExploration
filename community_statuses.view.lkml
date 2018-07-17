view: community_statuses {
  derived_table: {
    sql: select community_name, intake_community_id, count (distinct family_id) Number_of_Families, count(distinct recipient_id) Number_of_Recipients, count(distinct survey_id) survey_phases_completed, count(distinct survey_families) Surveys_completed
      from (
        select r.id recipient_id, r.first_name, r.last_name, r.birthdate, r.sex, r.household_role, r.occupation, r.school_name, r.school_year, r.school_section, r.currently_attending_school, r.phone_primary, a.content_english, d.id family_id, b.survey_id, c.survey_phase_id, a.family_id survey_families, a.survey_question_id, b.survey_reference_id, b.title_english, d.name, d.secure_id, d.child_count, d.adult_count, d.intake_community_id, e.floor_plan_id, f.name community_name
        from families d
        left outer join recipients r on r.family_id = d.id
        left outer join survey_answers a on r.family_id = a.family_id
        left outer join survey_questions b on a.survey_question_id = b.id
        left outer join surveys c on b.survey_id = c.id
        inner join homes e on d.intake_community_id = e.community_id
        left outer join communities f on e.community_id = f.id
      ) z
      group by community_name, intake_community_id
      order by z.intake_community_id asc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: community_name {
    type: string
    sql: ${TABLE}.community_name ;;
  }

  dimension: intake_community_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.intake_community_id ;;
  }

  dimension: number_of_families {
    type: number
    sql: ${TABLE}.number_of_families ;;
  }

  dimension: number_of_recipients {
    type: number
    sql: ${TABLE}.number_of_recipients ;;
  }

  dimension: survey_phases_completed {
    type: number
    sql: ${TABLE}.survey_phases_completed ;;
  }

  dimension: surveys_completed {
    type: number
    sql: ${TABLE}.surveys_completed ;;
  }

  set: detail {
    fields: [
      community_name,
      intake_community_id,
      number_of_families,
      number_of_recipients,
      survey_phases_completed,
      surveys_completed
    ]
  }
}
