variable "account_alternate_contacts" {
  description = <<EOT
Map of account_alternate_contacts, attributes below
Required:
    - alternate_contact_type
    - email_address
    - name
    - phone_number
    - title
Optional:
    - account_id
EOT

  type = map(object({
    alternate_contact_type = string
    email_address          = string
    name                   = string
    phone_number           = string
    title                  = string
    account_id             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.account_alternate_contacts : (
        can(regex("[\\w+=,.-]+@[\\w.-]+\\.[\\w]+", v.email_address))
      )
    ])
    error_message = "must be a valid email address"
  }
  validation {
    condition = alltrue([
      for k, v in var.account_alternate_contacts : (
        can(regex("^[0-9\\s()+-]+$", v.phone_number))
      )
    ])
    error_message = "must be a valid phone number"
  }
  validation {
    condition = alltrue([
      for k, v in var.account_alternate_contacts : (
        length(v.title) >= 1 && length(v.title) <= 50
      )
    ])
    error_message = "must be between 1 and 50 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

