/* 
  PagerDuty Team Membership (see teams.tf and users.tf)
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/team_membership.html 
*/

/* 
  Operations
*/
resource "pagerduty_team_membership" "cersei_lannister" {
  user_id = pagerduty_user.cersei_lannister.id
  team_id = pagerduty_team.operations.id
}

resource "pagerduty_team_membership" "jamie_lannister" {
  user_id = pagerduty_user.jamie_lannister.id
  team_id = pagerduty_team.operations.id
}

/* 
  IT Management
*/
resource "pagerduty_team_membership" "daenerys_targaryen" {
  user_id = pagerduty_user.daenerys_targaryen.id
  team_id = pagerduty_team.it_management.id
}

/* 
  Executive Stakeholders
*/
resource "pagerduty_team_membership" "tormund_giantsbane" {
  user_id = pagerduty_user.tormund_giantsbane.id
  team_id = pagerduty_team.executive.id
}

