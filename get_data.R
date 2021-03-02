library(tidyverse)

ledger <- read_csv("data/Open_Checkbook_Ledger_Dataset.csv", 
                   col_types = cols(
                     `Fiscal Year` = col_integer(),
                     Fiscal_Period = col_integer(),
                     `Check Date` = col_date(format = "%m/%d/%Y"),
                     Fund_Type = col_character(),
                     Fund = col_character(),
                     Department = col_character(),
                     Division = col_character(),
                     Account = col_character(),
                     Expense_Category = col_character(),
                     Project = col_character(),
                     `Invoice Description` = col_character(),
                     Amount = col_double(),
                     `Vendor Name` = col_character(),
                     `Vendor Id` = col_character(),
                     `Payment Id` = col_character(),
                     `Payment Method` = col_character(),
                     Payment_Status = col_character(),
                     Payment_Check_Num = col_character()
                   ))
names(ledger) <- tolower(str_replace_all(names(ledger), " ", "_"))
attr(ledger, "spec") <- NULL

vendors <- read_csv("data/Open_Checkbook_Vendor_Dataset.csv", 
                    col_types = cols(
                      VENDOR_NAME = col_character(),
                      VENDOR_ID = col_character(),
                      VENDOR_DESCRIPTION = col_character(),
                      VENDOR_ADDRESS1 = col_character(),
                      VENDOR_ADDRESS2 = col_character(),
                      VENDOR_CITY = col_character(),
                      VENDOR_ZIP = col_character(),
                      MINORITY_GROUP = col_character(),
                      WOMEN_OWNED_FLAG = col_character(),
                      SMALL_BUSINESS_FLAG = col_character(),
                      `New Georeferenced Column` = col_character()
                    ))
names(vendors) <- tolower(str_replace_all(names(vendors), " ", "_"))
attr(vendors, "spec") <- NULL

vendor_attributes <- vendors %>% select(
  vendor_id, vendor_name, vendor_description,
  minority_group, women_owned_flag, small_business_flag
) %>% distinct()
vendor_locations <- vendors %>% 
  select(-vendor_description, -vendor_name, 
         -minority_group, -women_owned_flag, -small_business_flag)