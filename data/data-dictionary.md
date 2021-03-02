# Data Dictionary

#### ledger

| column name | num unique values (excl missing) | description |
|---|---|---|
| fiscal_year | 5 | City of ATL Fiscal Calendar Year |
| fiscal_period | 12 | City of ATL Fiscal Calendar Month (1: July, 12: June) |
| check_date |  1141 | Date of check |
| fund_type | 10 | High level fund category, e.g. "CAPITAL PROJECTS FUNDS" |
| fund | 96 | Detailed fund name, e.g. "2013A-1 WATER & WASTEWATER BOND FUND" |
| department | 33 | City department, typically in format "DEPT OF \_\_\_ or "DEPARTMENT OF \_\_\_" |
| division | 612 | Sub-group of Department.  A department can have between 1 and 82 divisions |
| account | 177 | Expense category detail, e.g. "TRAINING / REGISTRATION" |
| expense_category | 15 | Expense category high lvl, e.g. "PURCHASED / CONTRACTED SERVICES" |
| project  | 951 | Specific project the expense is tied to.  If none, it's marked as "NON-PROJECT" |
| invoice_description | 58818 | Description, free text (can contain PO #, acct #, or just text) |
| amount | 173665 | Amount of check |
| vendor_name | 16030 | Vendor Name (also in vendors table) |
| vendor_id  | 16334 | Vendor ID (also in vendors table) |
| payment_id | 162737 | Numeric ID of payment |
| payment_method | 10 | Check, Credit Card, etc (some are all caps, some are Proper Case) |
| payment_status | 0 | all blank values |
| payment_check_num | 168753 | Check Number |

#### vendor_attributes

| column name |
|---|
| vendor_id |
| vendor_name |
| vendor_description |
| minority_group |
| women_owned_flag |
| small_business_flag |

#### vendor_locations

| column name |
|---|
| vendor_id |
| vendor_address1 |
| vendor_address2 |
| vendor_city |
| vendor_zip |
| new_georeferenced_column |
