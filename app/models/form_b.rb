class Form_B < ActiveRecord::Base
    belongs_to :Item

    def self.fields
        return [:B_1, :B_2, :B_3, :B_4, :B_5, :B_6, :B_7, :B_8, :B_9, :B_10, 
                :B_11, :B_12, :B_13, :B_14, :B_15, :B_16, :B_17, :B_18, :B_19, 
                :B_20, :B_21, :B_22, :B_23, :B_24, :B_25, :B_26, :B_27, :B_28, 
                :B_29, :B_30, :B_31, :B_32, :B_33, :B_34, :B_35, :B_36, :B_37, 
                :B_38, :B_39, :B_40, :B_41, :B_42, :B_43, :B_44, :B_45, :B_46, 
                :B_47, :B_48, :B_49, :B_50, :B_51, :B_52, :B_53, :B_54, :B_55, 
                :B_56, :B_57, :B_58, :B_59, :B_60, :B_61, :B_62, :B_total]
    end
    
    self.fields.each do |field|
        attr_accessor field
    end
    
    def self.income_issues
        return ["1. Wages", 
                "2. Interest / Dividends (Schedule B)", 
                "3. Business Income (Schedule C)",
                "4. Capital Gain or Loss (Schedule D)", 
                "5. IRA / Pension",
                "6. Social Security Benefits",
                "7. Alimony",
                "8. Rental, Royalty, Partnership, S Corp (Schedule E)",
                "9. Farming Income (Schedule F)",
                "10. Unemployment",
                "11. Gambling Winnings",
                "12. Cancellation of Debt",
                "13. Settlement Proceeds",
                "14. Other"]
    end
    
    def self.deduction_issues
        return ["15. Alimony",
                "16. Education Expenses (Including student loan interest)",
                "17. Moving Expenses",
                "18. IRA Deduction",
                "19. Medical and Dental Expenses",
                "20. State and Local Taxes",
                "21. Home Mortgage Interest",
                "22. Other Interest Expenses",
                "23. Charitable Contributions",
                "24. Casualty and Theft Losses",
                "25. Unreimbursed Employee Business Expenses",
                "26. Other Itemized Deductions",
                "27. Business Expenses (Schedule C)"]
    end
    
    def self.credit_issues
        return ["28. Child and Dependent Care Credit",
                "29. Education Credits",
                "30. Child Tax Credit / Additional Child Tax Credit",
                "31. Earned Income Tax Credit",
                "32. First-Time Homebuyer Credit",
                "33. Premium Tax Credit",
                "34. Other Credits"]
    end
    
    def self.status_issues
        return ["35. SSN / TIN",
                "36. ITIN",
                "37. Filing Status",
                "38. Personal / Dependency Exemptions",
                "39. Injured Spouse",
                "40. Innocent Spouse",
                "41. Employment-Related Identity Theft",
                "42. Refund-Related Identity Theft",
                "43. Nonfiler",
                "44. Worker Classification"]
    end
    
    def self.tax_refund_return_statue_limitations_issues
        return ["45. Self-Employment Tax",
                "46. Suspected Return Preparer Fraud",
                "47. Estimated Tax Payments",
                "48. Withholdings",
                "49. Refund",
                "50. Assessment Statute of Limitations",
                "51. Collection Statute of Limitations",
                "52. Refund Statute of Limitations"]
    end
    
    def self.penalty_addition_tax_issues
        return ["53. Trust Fund Recovery Penalty",
                "54. Other Civil Penalties",
                "55. Additional Tax on Distributions from Qualified Retirement Plans",
                "56. Individual Shared Responsibility Payment"]
    end
    
    def self.collection_issues
        return ["57. Payments",
                "58. Installment Payment Agreement (IPA)",
                "59. Offer In Compromise (OIC)",
                "60. Currently Not Collectible (CNC)",
                "61. Liens",
                "62. Levies (Including Federal Payment Levy Program)"]
    end
    
    def self.total
        return ["Total Case Issues Worked (add lines 1 through 62)"]
    end
    
    def self.headings
        return (self.income_issues + self.deduction_issues + self.credit_issues + 
        self.status_issues + self.tax_refund_return_statue_limitations_issues + self.penalty_addition_tax_issues +
        self.collection_issues + "")
    end
    
    def self.headings_names_and_fields
        return [["Income Issues", self.income_issues, 
                    [:B_1, :B_2, :B_3, :B_4, :B_5, :B_6, :B_7, :B_8, :B_9, :B_10,
                     :B_11, :B_12, :B_13, :B_14], "check_box_tag"], 
                ["Deduction Issues", self.deduction_issues, 
                    [:B_15, :B_16, :B_17, :B_18, :B_19, :B_20, :B_21, :B_22, 
                     :B_23, :B_24, :B_25, :B_26, :B_27], "check_box_tag"], 
                ["Credit Issues", self.credit_issues, 
                    [:B_28, :B_29, :B_30, :B_31, :B_32, :B_33, :B_34], "check_box_tag"],
                ["Status Issues", self.status_issues, 
                    [:B_35, :B_36, :B_37, :B_38, :B_39, :B_40, :B_41, :B_42, 
                     :B_43, :B_44], "check_box_tag"],
                ["Tax Issues", self.tax_refund_return_statue_limitations_issues,
                    [:B_45, :B_46, :B_47, :B_48, :B_49, :B_50, :B_51, :B_52], "check_box_tag"], 
                ["Penalty Issues", self.penalty_addition_tax_issues, 
                    [:B_53, :B_54, :B_55, :B_56], "check_box_tag"],
                ["Collection Issues", self.collection_issues,
                    [:B_57, :B_58, :B_59, :B_60, :B_61, :B_62], "check_box_tag"],
                ["Total Case Issues Worked", self.total, [:B_total], "text_field"]]
    end

end
