/* 
  PagerDuty Escalation Policies (see users.tf and schedules.tf)
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/escalation_policy.html
*/

/* 
  Operations: 3 level escalation path
*/
resource "pagerduty_escalation_policy" "operations" {
  name      = "Operations (EP)"
  num_loops = 3
  teams     = [pagerduty_team.operations.id]
  rule {
    escalation_delay_in_minutes = 15
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.operations_level_1.id
    }
  }
  rule {
    escalation_delay_in_minutes = 60
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.it_management.id
    }
  }
}

/* 
  IT Management: Singular escalation path
*/
resource "pagerduty_escalation_policy" "it_management" {
  name  = "IT Management (EP)"
  teams = [pagerduty_team.it_management.id]
  rule {
    escalation_delay_in_minutes = 15
    target {
      type = "schedule_reference"
      id   = pagerduty_schedule.it_management.id
    }
  }
}

