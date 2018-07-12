connection: "monolith_follower"

# include all the views
include: "*.view"

# include all the dashboards

include: "exploration.model"

datagroup: exploration_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: exploration_default_datagroup

explore: activities {
  join: users {
    type: left_outer
    sql_on: ${activities.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: addresses {}

explore: affiliates {
  join: organizations {
    type: left_outer
    sql_on: ${affiliates.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${organizations.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: allocated_donations {
  join: donations {
    type: left_outer
    sql_on: ${allocated_donations.donation_id} = ${donations.id} ;;
    relationship: many_to_one
  }

  join: homes {
    type: left_outer
    sql_on: ${allocated_donations.home_id} = ${homes.id} ;;
    relationship: many_to_one
  }

  join: invitations {
    type: left_outer
    sql_on: ${donations.invitation_id} = ${invitations.id} ;;
    relationship: many_to_one
  }

  join: pledges {
    type: left_outer
    sql_on: ${donations.pledge_id} = ${pledges.id} ;;
    relationship: many_to_one
  }

  join: floor_plans {
    type: left_outer
    sql_on: ${homes.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }
}

explore: api_keys {}

explore: ar_internal_metadata {}

explore: campaigns {
  join: invitations {
    type: left_outer
    sql_on: ${campaigns.invitation_id} = ${invitations.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${campaigns.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${campaigns.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: collection_homes {
  join: homes {
    type: left_outer
    sql_on: ${collection_homes.home_id} = ${homes.id} ;;
    relationship: many_to_one
  }

  join: collections {
    type: left_outer
    sql_on: ${collection_homes.collection_id} = ${collections.id} ;;
    relationship: many_to_one
  }

  join: floor_plans {
    type: left_outer
    sql_on: ${homes.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${collections.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${collections.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${collections.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: collections {
  join: floor_plans {
    type: left_outer
    sql_on: ${collections.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }

  join: affiliates {
    type: left_outer
    sql_on: ${collections.affiliate_id} = ${affiliates.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${collections.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${collections.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: communities {}

explore: communities_surveys {
  join: surveys {
    type: left_outer
    sql_on: ${communities_surveys.survey_id} = ${surveys.id} ;;
    relationship: many_to_one
  }

  join: survey_phases {
    type: left_outer
    sql_on: ${surveys.survey_phase_id} = ${survey_phases.id} ;;
    relationship: many_to_one
  }
}

explore: construction_milestone_log_entries {
  join: users {
    type: left_outer
    sql_on: ${construction_milestone_log_entries.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: construction_milestones {
    type: left_outer
    sql_on: ${construction_milestone_log_entries.construction_milestone_id} = ${construction_milestones.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: construction_milestones {}

explore: countries {}

explore: designations {}

explore: donations {
  join: invitations {
    type: left_outer
    sql_on: ${donations.invitation_id} = ${invitations.id} ;;
    relationship: many_to_one
  }

  join: pledges {
    type: left_outer
    sql_on: ${donations.pledge_id} = ${pledges.id} ;;
    relationship: many_to_one
  }
}

explore: employments {
  join: users {
    type: left_outer
    sql_on: ${employments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${employments.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: families {
  join: homes {
    type: left_outer
    sql_on: ${families.home_id} = ${homes.id} ;;
    relationship: many_to_one
  }

  join: floor_plans {
    type: left_outer
    sql_on: ${homes.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }
}

explore: feature_images {}

explore: floor_plan_expenses {
  join: floor_plans {
    type: left_outer
    sql_on: ${floor_plan_expenses.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }
}

explore: floor_plans {}

explore: friendly_id_slugs {}

explore: home_batches {}

explore: homes {
  join: floor_plans {
    type: left_outer
    sql_on: ${homes.floor_plan_id} = ${floor_plans.id} ;;
    relationship: many_to_one
  }
}

explore: impressions {
  join: users {
    type: left_outer
    sql_on: ${impressions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: invitations {}

explore: messages {
  join: users {
    type: left_outer
    sql_on: ${messages.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: notes {
  join: users {
    type: left_outer
    sql_on: ${notes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: organizations {
  join: feature_images {
    type: left_outer
    sql_on: ${organizations.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: pg_stat_statements {
  join: users {
    type: left_outer
    sql_on: ${pg_stat_statements.userid} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: pledges {
  join: invitations {
    type: left_outer
    sql_on: ${pledges.invitation_id} = ${invitations.id} ;;
    relationship: many_to_one
  }
}

explore: quick_links {
  join: users {
    type: left_outer
    sql_on: ${quick_links.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: recipients {
  join: families {
    type: left_outer
    sql_on:  ${recipients.family_id} = ${families.id} ;;
    relationship: many_to_one
  }
}

explore: reports {}

explore: schema_migrations {}

explore: social_profiles {}

explore: survey_answers {
  join: survey_questions {
    type: left_outer
    sql_on: ${survey_answers.survey_question_id} = ${survey_questions.id} ;;
    relationship: many_to_one
  }
  join:  families{
    type:  left_outer
    sql_on:  ${survey_answers.family_id} = ${families.id} ;;
    relationship: many_to_one

  }
  join: surveys {
    type: left_outer
    sql_on: ${survey_questions.survey_id} = ${surveys.id} ;;
    relationship: many_to_one
  }

  join: survey_references {
    type: left_outer
    sql_on: ${survey_questions.survey_reference_id} = ${survey_references.id} ;;
    relationship: many_to_one
  }

  join: survey_phases {
    type: left_outer
    sql_on: ${surveys.survey_phase_id} = ${survey_phases.id} ;;
    relationship: many_to_one
  }
}

explore: survey_phases {}

explore: survey_questions {
  join: surveys {
    type: left_outer
    sql_on: ${survey_questions.survey_id} = ${surveys.id} ;;
    relationship: many_to_one
  }

  join: survey_references {
    type: left_outer
    sql_on: ${survey_questions.survey_reference_id} = ${survey_references.id} ;;
    relationship: many_to_one
  }

  join: survey_phases {
    type: left_outer
    sql_on: ${surveys.survey_phase_id} = ${survey_phases.id} ;;
    relationship: many_to_one
  }
}

explore: survey_references {}

explore: survey_requests {
  join: surveys {
    type: left_outer
    sql_on: ${survey_requests.survey_id} = ${surveys.id} ;;
    relationship: many_to_one
  }

  join: survey_phases {
    type: left_outer
    sql_on: ${surveys.survey_phase_id} = ${survey_phases.id} ;;
    relationship: many_to_one
  }
}

explore: surveys {
  join: survey_phases {
    type: left_outer
    sql_on: ${surveys.survey_phase_id} = ${survey_phases.id} ;;
    relationship: many_to_one
  }
}

explore: taggabilities {
  join: tags {
    type: left_outer
    sql_on: ${taggabilities.tag_id} = ${tags.id} ;;
    relationship: many_to_one
  }
}

explore: tags {}

explore: task_followers {
  join: tasks {
    type: left_outer
    sql_on: ${task_followers.task_id} = ${tasks.id} ;;
    relationship: many_to_one
  }

  join: task_templates {
    type: left_outer
    sql_on: ${tasks.task_template_id} = ${task_templates.id} ;;
    relationship: many_to_one
  }
}

explore: task_lists {}

explore: task_templates {}

explore: tasks {
  join: task_templates {
    type: left_outer
    sql_on: ${tasks.task_template_id} = ${task_templates.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  join: feature_images {
    type: left_outer
    sql_on: ${users.feature_image_id} = ${feature_images.id} ;;
    relationship: many_to_one
  }
}

explore: versions {}
