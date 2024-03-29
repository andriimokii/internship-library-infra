terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "5.0.2"
    }
  }

  backend "s3" { }
}

resource "heroku_app" "internship_library" {
  name = var.heroku_app_name
  region = var.heroku_app_region
  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_addon" "database" {
  app_id = heroku_app.internship_library.id
  plan   = format("%s:%s", var.heroku_addon_database_name, var.heroku_addon_database_plan_name)
}

resource "heroku_addon" "redis" {
  app_id = heroku_app.internship_library.id
  plan   = format("%s:%s", var.heroku_addon_redis_name, var.heroku_addon_redis_plan_name)
}
