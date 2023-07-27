/* 
  PagerDuty DataSources Definition
*/
/* 
  Priorities - This needs to be enabled in the domain these files are run against.
  - https://support.pagerduty.com/docs/incident-priority
  - https://www.terraform.io/docs/providers/pagerduty/d/priority.html
*/
data "pagerduty_priority" "p1" {
  name = "P1"
}

data "pagerduty_priority" "p2" {
  name = "P2"
}

data "pagerduty_priority" "p3" {
  name = "P3"
}

data "pagerduty_priority" "p4" {
  name = "P4"
}

data "pagerduty_priority" "p5" {
  name = "P5"
}
