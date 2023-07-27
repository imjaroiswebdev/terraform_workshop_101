/* 
  PagerDuty Schedules (see users.tf)
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/schedule.html
*/

/* 
  Operations: 24x7
*/
resource "pagerduty_schedule" "operations_level_1" {
  name      = "Operations Schedule (L1)"
  time_zone = "Europe/London"
  layer {
    name                         = "Weekly Rotation"
    start                        = "2020-06-21T00:00:00+00:00"
    rotation_virtual_start       = "2020-06-21T07:00:00+01:00"
    rotation_turn_length_seconds = 604800
    users = [
      pagerduty_user.cersei_lannister.id,
      pagerduty_user.jamie_lannister.id
    ]
  }
}

/* 
  IT Management: 24x7
*/
resource "pagerduty_schedule" "it_management" {
  name      = "IT Management Schedule"
  time_zone = "Europe/London"
  layer {
    name                         = "Daily Rotation"
    start                        = "2020-06-21T00:00:00+00:00"
    rotation_virtual_start       = "2020-06-21T07:00:00+01:00"
    rotation_turn_length_seconds = 86400
    users = [
      pagerduty_user.daenerys_targaryen.id,
    ]
  }
}
