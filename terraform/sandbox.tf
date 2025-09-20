module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shankarpresidio+sandbox1@gmail.com"
    AccountName               = "sandbox-1"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "shankarpresidio@gmail.com"
    SSOUserFirstName          = "Shankar"
    SSOUserLastName           = "Sandbox"
  }

  account_tags = {
       "Managed by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}