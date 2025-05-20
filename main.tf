provider "google" {
  credentials = file("D:/Mywebsite/mywebpage-460319-031b57bb08ac.json")
  project     = "mywebpage-460319"
  region      = var.region
}

resource "google_storage_bucket" "static_site" {
  name          = "mywebpage-website"
  location      = var.region
  force_destroy = true
  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
}

resource "google_storage_bucket_object" "html" {
  name   = "index.html"
  bucket = google_storage_bucket.static_site.name
  source = "index.html"
  content_type = "text/html"
}

resource "google_storage_bucket_object" "image" {
  name   = "sanjaykumar.jpeg"               # Path in the bucket
  bucket = google_storage_bucket.static_site.name
  source = "sanjaykumar.jpeg"  # Local path to your image file
  content_type = "image/jpeg"
}

resource "google_storage_bucket_object" "css" {
  name   = "style.css"
  bucket = google_storage_bucket.static_site.name
  source = "style.css"
  content_type = "text/css"
}

resource "google_storage_bucket_iam_binding" "public_rule" {
  bucket = google_storage_bucket.static_site.name
  role   = "roles/storage.objectViewer"
  members = ["allUsers"]
}
