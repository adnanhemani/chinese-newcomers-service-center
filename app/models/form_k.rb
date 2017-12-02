class FormK < ActiveRecord::Base
    belongs_to :item

    def self.fields
        return [:K_1A, :K_1B, :K_1C, :K_1D, :K_1E, :K_2A, :K_2B, :K_2C, :K_2D, 
                :K_2E, :K_2F, :K_2G, :K_2H, :K_2I, :K_2J, :K_2K, :K_2L, :K_2M, 
                :K_2N, :K_2O, :K_2P, :K_2Q, :K_2R, :K_2S, :K_2T, :K_2U, :K_2V, 
                :K_2W, :K_2X, :K_2Y, :K_2Z, :K_2AA, :K_total, :K_3, :K_4, :K_5, 
                :K_6, :K_7, :K_8, :K_9, :K_10, :K_12, :K_13, :K_14, :K_15A, 
                :K_15B, :K_15C, :K_15D]
    end

    self.fields.each do |field|
        attr_accessor field
    end
    
    def self.inventory
        return ["1A. Beginning case inventory(the number of cases that were worked in the previous year that remained open as of the first day of the reporting period)",
                "1B. New cases opened during the reporting period",
                "1C. Total number of cases worked during the reporting period (add lines 1A and 1B)",
                "1D. Cases closed during the reporting period",
                "1E. Ending case inventory (the number of cases that remained open as of the last day of the reporting period (subtract line 1D from line 1C))"]
    end

    def self.accounts
        return ["2A. Return Processing",
                "2B. Penalty Abatement",
                "2C. Injured Spouse",
                "2D. Backup Withholding"]
    end
    
    def self.exams
        return ["2E. Correspondence Exam",
                "2F. Office or Field Exam",
                "2G. Automated Underreporter (AUR)",
                "2H. Automated Substitute-for-Return (ASFR)",
                "2I. Audit Reconsideration"]
    end

    def self.collection
        return ["2J. Automated Collection System (ACS)",
                "2K. Field Collection (RO)",
                "2L. Offer-In-Compromise (OIC)",
                "2M. Lien Unit",
                "2N. Bankruptcy"]
    end
    
    def self.appeals
        return ["2O. Exam Appeals",
                "2P. Collection Due Process (CDP)",
                "2Q. Collection Appeals Process (CAP)",
                "2R. OIC Appeals",
                "2S. Penalty Abatement Appeals",
                "2T. Other Appeals"]
    end
    
    def self.litigation
        return ["2U. U.S. Tax Court",
                "2V. Other Federal Courts"]
    end
     
    def self.miscellaneous
        return ["2W. Identity Protection Specialized Unit (IPSU)",
                "2X. Innocent Spouse Unit",
                "2Y. SS-8 Unit",
                "2Z. ITIN Unit",
                "2AA. Trust Fund Recovery Penalty"]
    end
    
    def self.total
        return ["TOTAL (add items 2A through 2AA) (Must equal value in line 1C)"]
    end
    
    def self.additional
        return ["3. The amount in controversy exceeds $50,000 per tax period. (for cases reported on line 3, include an explanation for each in the Program Narrative, Item 2.vii)",
                "4. The taxpayer's income exceeds 250% of the federal poverty guidelines",
                "5. Matters worked in more than on IRS function or U.S. court",
                "6. More than one tax year",
                "7. Representation of ESL taxpayers",
                "8. Joint representation of taxpayers",
                "9. Representation by volunteers",
                "10. State tax matters"]
    end
    
    def self.tax_court
        return ["12. Number of U.S. Tax Court cases worked during the reporting period in which an appearance was entered pursuant to Tax Court Rule 24",
                "13. Number of U.S. Tax Court cases worked during the reporting period in which the clinic represented the taxpayer, but no appearance was entered",
                "14. Number of informal consultations in the U.S. Tax Court during the reporting period in which the clinic provided advice to a taxpayer, but not representation"]
    end
    
    def self.closed
        return ["15A. Number of cases in which the taxpayer was brought into filing compliance",
                "15B. Number of cases in which the taxpayer was brought into collection compliance",
                "15C. Total amount of dollars refunded in cash to taxpayers",
                "15D. Total decrease in corrected tax liabilities, penalties, and interest (but not below zero for any taxpayer)"]         
    end
    
    def self.headings
        return (self.inventory + self.accounts + self.exams + self.collection + 
               self.appeals + self.litigation + self.miscellaneous + 
               self.total + self.additional + self.tax_court + self.closed)
    end
    
    def self.headings_names_and_fields
        return [["Case Inventory", self.inventory, 
                    [:K_1A, :K_1B, :K_1C, :K_1D, :K_1E], "text_field"], 
                ["Accounts Management", self.accounts, 
                    [:K_2A, :K_2B, :K_2C, :K_2D], "check_box_tag"], 
                ["Exams", self.exams, 
                    [:K_2E, :K_2F, :K_2G, :K_2H, :K_2I], "check_box_tag"],
                ["Collection", self.collection, 
                    [:K_2J, :K_2K, :K_2L, :K_2M, :K_2N], "check_box_tag"],
                ["Appeals", self.appeals,
                    [:K_2O, :K_2P, :K_2Q, :K_2R, :K_2S, :K_2T], "check_box_tag"], 
                ["Litigation", self.litigation, 
                    [:K_2U, :K_2V], "check_box_tag"],
                ["Miscellaneous", self.miscellaneous,
                    [:K_2W, :K_2X, :K_2Y, :K_2Z, :K_2AA], "check_box_tag"],
                ["Total", self.total, [:K_total], "text_field"],    
                ["Additional Case Information", self.additional, 
                    [:K_3, :K_4, :K_5, :K_6, :K_7, :K_8, :K_9, :K_10], "text_field"],
                ["U.S. Tax Court Activities", self.tax_court,
                    [:K_12, :K_13, :K_14], "text_field"],
                ["Closed Case Outcomes", self.closed, 
                    [:K_15A, :K_15B, :K_15C, :K_15D], "text_field"]]
    end
end
