resource "google_storage_bucket" "mystoracctf" {
  
  name          = "mystoragewithtf1024"
  location      = "asia-south1"

}

resource "google_compute_network" "srkvpcnwtf" {
    project     =  "srkTestProject"
    name        = "myvpcnwwithtf1024"
    
  
}