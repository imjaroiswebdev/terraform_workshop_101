/* 
  PagerDuty User Definition
  Ref: https://www.terraform.io/docs/providers/pagerduty/r/user.html
*/

/* 
  Operations
*/
resource "pagerduty_user" "cersei_lannister" {
  name  = "Cersei Lannister"
  email = "cersei_lannister@example.com"
  role  = "limited_user"
}

resource "pagerduty_user" "jamie_lannister" {
  name  = "Jaime Lannister"
  email = "jamie_lannister@example.com"
  role  = "limited_user"
}

/* 
  IT Management
*/
resource "pagerduty_user" "daenerys_targaryen" {
  name  = "Daenerys Targaryen"
  email = "daenerys_targaryen@example.com"
  role  = "admin"
}

/* 
  Executive Stakeholders
*/
resource "pagerduty_user" "tormund_giantsbane" {
  name  = "Tormund Giantsbane"
  email = "tormund_giantsbane@example.com"
  role  = "restricted_access"
}
