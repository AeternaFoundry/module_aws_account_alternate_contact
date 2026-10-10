output "account_alternate_contacts_id" {
  description = "Map of id values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_alternate_contacts_account_id" {
  description = "Map of account_id values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_alternate_contacts_alternate_contact_type" {
  description = "Map of alternate_contact_type values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.alternate_contact_type if v.alternate_contact_type != null && length(v.alternate_contact_type) > 0 }
}
output "account_alternate_contacts_email_address" {
  description = "Map of email_address values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.email_address if v.email_address != null && length(v.email_address) > 0 }
}
output "account_alternate_contacts_name" {
  description = "Map of name values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "account_alternate_contacts_phone_number" {
  description = "Map of phone_number values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.phone_number if v.phone_number != null && length(v.phone_number) > 0 }
}
output "account_alternate_contacts_title" {
  description = "Map of title values across all account_alternate_contacts, keyed the same as var.account_alternate_contacts"
  value       = { for k, v in aws_account_alternate_contact.account_alternate_contacts : k => v.title if v.title != null && length(v.title) > 0 }
}

