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
  default = ["heroku/nodejs", "heroku/ruby", "heroku-community/apt"]
  description = "Buildpack names or URLs for the application."
}

variable "heroku_addon_database_name" {
  type = string
  default = "heroku-postgresql"
  description = "Name of the database addon to be created."
}

variable "heroku_addon_database_plan_name" {
  type = string
  default = "hobby-dev"
  description = "Name of the database billing plan to use."
}

variable "heroku_addon_redis_name" {
  type = string
  default = "heroku-redis"
  description = "Name of the redis addon to be created."
}

variable "heroku_addon_redis_plan_name" {
  type = string
  default = "hobby-dev"
  description = "Name of the redis billing plan to use."
}