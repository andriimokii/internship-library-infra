variable "heroku_app_name" {
  type = string
  default = "internship-library"
  description = "The name of the application."
}

variable "heroku_app_region" {
  type = string
  default = "eu"
  description = "The region that the app should be deployed in."
}

variable "heroku_app_buildpacks" {
  type = list(string)
  default = ["heroku/ruby"]
  description = "Buildpack names or URLs for the application."
}

variable "heroku_addon_name" {
  type = string
  default = "heroku-postgresql"
  description = "Name of the Addon to be created."
}

variable "heroku_addon_plan_name" {
  type = string
  default = "hobby-dev"
  description = "Name of the billing plan to use."
}
