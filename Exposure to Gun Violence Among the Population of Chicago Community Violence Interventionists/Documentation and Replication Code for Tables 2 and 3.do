*This file provides code and documentation for Stata file 2 of 2 accompanying our Science Advances Manuscript.
*Each of these files has been deidentified and have been intentionally constructed so as to prevent their merger or linkage.
*This do file accompanies the Stata data file "Subset of Data for Table 2 and 3 in Science Advances Manuscript". This do file serves as both documentation and replication code if run on the associated data file. 

*Table 2 Results:
*Panel A (Gun Violence Exposure)
*Row 1 (Shot AT, not hit)
summ Q112 Q112b Q114 Q114b

*Row 2 (Shot and Hit)
summ Q108 Q108b Q110 Q110b

*Panel B (Exposure to Scenes of Violence)
*Row 1 (Responded to scene of violence prior to emergency services)
summ Q135

*Row 2 (Provided first aid to shooting/stabbing victim)
summ Q136

*Row 3 (Come onto scene of violence and seen the body of deceased)
summ Q116 Q116b

*Row 4 (Came onto scene of a shooting and seen the victim)
summ Q106 Q106b

*Row 5 (Seen someone get killed as result of violence)
summ Q118 Q118b

*Panel C (Death Exposure)
*Row 1 (Knew someone shot, not killed)
summ Q124 Q124a

*Row 2 (Knew someone killed)
summ Q126 Q126a

*Row 3 (Knew someone suicide)
summ Q128 Q128a

*Row 4 (Experienced death of a client due to violence)
summ Q134

*Row 5 (Attended funerals for community member died from violence)
summ Q137

*Panel D (Threat and Attack Exposure)
*Row 1 (Seriously Threatened)
summ Q122 Q122b

*Row 2 (Attacked with a weapon like a knife or bat)
summ Q102 Q102a Q104 Q104b

*Row 3 (hit, slapped, punched, beaten up)
summ Q98 Q98a Q100 Q100a


*Table 3 Results:
*Panel A (Lifetime exposure item/topic)
*Row 1 (Shot AT, not hit)
tab Q112a if Q112a!=0
tab Q112a_4_TEXT

*Row 2 (Shot and hit)
tab Q108a if Q108a!=0
tab Q108a_4_TEXT

*Row 3 (Come onto scene of violence and seen the body of deceased)
tab Q116a if Q116a!=0
tab Q116a_4_TEXT

*Row 4 (Came onto scene of a shooting and seen the victim)
tab Q106a if Q106a!=0
tab Q106a_4_TEXT

*Row 5 (Seen someone get killed as result of violence)
tab Q118a if Q118a!=0
tab Q118a_4_TEXT

*Panel B (Past 12 months exposure item/topic)
*Row 1 (Shot AT, not hit)
tab Q112c if Q112c!=0
tab Q112c_4_TEXT

*Row 2 (Shot and hit)
tab Q108c if Q108c!=0
tab Q108c_4_TEXT

*Row 3 (Come onto scene of violence and seen the body of deceased)
tab Q116c if Q116c!=0
tab Q116c_4_TEXT

*Row 4 (Came onto scene of a shooting and seen the victim)
tab Q106c if Q106c!=0
tab Q106c_4_TEXT

*Row 5 (Seen someone get killed as result of violence)
tab Q118c if Q118c!=0
tab Q118c_4_TEXT

*Row 6 (Knew someone shot, not killed)
tab Q124b if Q124b!=0
tab Q124b_4_TEXT

*Row 7 (Knew someone killed)
tab Q126b if Q126b!=0
tab Q126b_4_TEXT

*Row 8 (Knew someone suicide)
tab Q128b if Q128b!=0
tab Q128b_4_TEXT

*Row 9 (Attacked with a weapon like a knife or bat)
tab Q102b if Q102b!=0
tab Q102b_4_TEXT

