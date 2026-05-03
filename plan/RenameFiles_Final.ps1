$map = @{
"01_end_the_tax_trap.md" = "01_tax_trap.md"
"02_fairtax_state_and_local_revenue_sharing_framework.md" = "02_revenue_sharing.md"
"03_restoring_constitutional_money.md" = "03_constitutional_money.md"
"04_social_security_gold_lockbox.md" = "04_social_security_gold.md"
"05.1_alexander_hamilton_power_of_72.md" = "05_1_power_72.md"
"05.2_taxpayer_supremacy_and_the_automatic_clawback_of_unconstitutional_spending.md" = "05_2_clawback.md"
"05.3_the_enumerated_credit_act.md" = "05_3_credit_act.md"
"06_labor_sovereignty_and_wage_restoration_under_constitutional_authority.md" = "06_labor_sovereignty.md"
"07_no_cbdc_full_blockchain_accountability.md" = "07_no_cbdc.md"
"08_national_jury_reform_amendment.md" = "08_jury_reform.md"
"09_ending_the_national_debt_and_the_three_part_intergenerational_wealth_plan.md" = "09_national_debt.md"
"10_the_american_health_freedom_plan.md" = "10_health_plan.md"
}

foreach ($old in $map.Keys) {
    if (Test-Path $old) {
        Rename-Item $old $map[$old]
    }
}