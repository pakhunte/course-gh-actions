terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Generate a random, memorable pet name with a prefix.
resource "random_pet" "server_name" {
  prefix = "app-server"
  length = 2
}

# Generate a random UUID.
resource "random_uuid" "my_uuid" {}

# Use the randomly generated values in an output.
output "server_pet_name" {
  value = random_pet.server_name.id
}

output "generated_uuid" {
  value = random_uuid.my_uuid.result
}

