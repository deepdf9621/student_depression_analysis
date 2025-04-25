#Level 5: Creating New Insights

#=========================================
# 15: Add a new column "Depression_Status"
#=========================================

student_depression <- student_depression %>%
  mutate(Depression_Status = ifelse(Depression == 1, "Depressed", "No Depression"))
View(student_depression)

#===================================
# 16: Create a "Total_Stress" column
#===================================

student_depression <- student_depression %>%
  mutate(Total_Stress = `Academic Pressure` + `Financial Stress`)
View(student_depression)
