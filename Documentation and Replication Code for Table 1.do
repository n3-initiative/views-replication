*This file provides code and documentation for Stata file 1 of 2 accompanying our Science Advances Manuscript.
*Each of these files has been deidentified and have been intentionally constructed so as to prevent their merger or linkage.
*This do file accompanies the Stata data file "Subset of Data for Table 1 in Science Advances Manuscript". This do file serves as both documentation and replication code if run on the associated data file. 
*NOTE: This dataset has several values masked in the interest of protecting respondent confidentiality. As a result, not all values from Table 1 can be replicated with these data. However, all values that were not masked will replicate between Table 1 and these data. The only values that were masked were responses to categorical questions that reflected fewer than 25 respondents in the sample. All continuous data responses (e.g., age) and categorical value responses with greater than 25 respondents are retained in these data for replication purposes.

*Table 1 Results:
*Replicating Age Data
summ Q1

*Replicating Gender Data
tab Q2

*Replicating Race Data (Several values masked to protect respondent confidentiality)
*NOTE: masked values coded as -98 and should be viewed as part of the distribution for replicating percentages.
tab Q4_recode if Q4_recode!=-99

*Replicating Ethnicity Data
tab Q3_recode if Q3_recode!=-99

*Replicating Hours Worked Data
summ Q12 if Q12!=-99

*Replicating Highest Degree Earned Data
*NOTE: masked values coded as -98 and should be viewed as part of the distribution for replicating percentages.
tab Q51_recode if Q51_recode!=-99

*Replicating Marital Status Data
tab Q58_recode
