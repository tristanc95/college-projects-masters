*Tristan Conde
*Assignment 02
*ADTA 5160 / Spring 2022

*The dataset being analyzed is a sample (N = 216) of NFL head coach (HC) employment spells from 1985 through the conclusion of the 2018 season. The data includes a variety of variables including demographic information on the HC, HC employment outcomes, information on the franchise he coached during the respective employment spell, and information on NFL league structure. 

*Examine the raw data and the variable descriptions. Produce summary statistics for the following variables: fired, winpcttenure, gamescoached, ageathire, yrsnflhcexpathire, playedinnfl, offcoach, black
*fired
.summarize fired1
*winpcttenure
.summarize winpcttenure
*gamescoached
.summarize gamescoached
*ageathire
.summarize ageathire
*yrsnflhcexpathire
.summarize yrsnflhcexpathire
*playedinnfl
.summarize playedinnfl
*offcoach
.summarize offcoach
*black
.summarize black

*alltogether
summarize fired1 winpcttenure gamescoached ageathire yrsnflhcexpathire playedinnfl offcoach black

*What percentage of employment spells in the sample come from white head coaches? How do you know this? Explain.
.tabulate nonblack
*Gets total of nonblack coaches (which is 190)
.tabulate hispanic
*Gets total of hispanic coaches (which is 3)
*Which does give us 187 white coaches, which can be verified with:
.tabulate white
*Out of 216 coaches, 187 are white (86.57%) 

*Create an interaction term between the variable that identifies whether or not the HC played quarterback as a player and the variable that represents the total number of years of NFL coaching experience for the HC at the time of hire.
.generate qbpluscchexp = qb * yrsnflhcexpathire

*Assume you are interested in identifying the determinants of whether or not a HC is fired to conclude his employment spell. First, decide what regression-based modeling approach is most appropriate to answer this question. The limitation is that you are only able to include six right-hand side predictor variables. Make sure you choose the six that you believe are the most appropriate in their expected relationship with a HC being fired. Estimate your selected model. In three sentences or less, explain why you selected this specific empirical approach. Then explain why you selected each of your six independent variables (in two sentences or less for each variable).

*logit regression I think is the way to go here since the dependent variable is a binary choice of 1 (meaning they got fired) or 0 (not fired) at the end of their employment spell.

.logit fired1 winpcttenure emptenureseasons atsfinalyr allnflexp teamwpcthire5 ageathire
.margins, dydx(*)

*Part 2 of Assignment

*Again, the dataset being analyzed is a sample (N = 216) of NFL head coach (HC) employment spells from 1985 through the conclusion of the 2018 season. The data includes a variety of variables including demographic information on the HC, HC employment outcomes, information on the franchise he coached during the respective employment spell, and information on NFL league structure. 

*Assume you are interested in identifying the determinants of team performance during NFL HC employment spells. First, decide what modeling approach is most appropriate to answer this question. Again, you are only able to include six right-hand side predictor variables. Make sure you choose the six that you believe are the most appropriate in their expected relationship with team performance during HC employment spells. Estimate your selected model. In three sentences or less, explain why you selected this specific empirical approach. Then explain why you selected each of your six independent variables (in two sentences or less for each variable).

*Fractional Regression since the dependent variable being used is bound between a 0 - 1 result

.fracreg logit winpcttenure emptenureseasons atsrecord gamescoached teamtenure incomeraw teamwpcthire5

*with matrix

.fracreg winpcttenure emptenureseasons atsrecord gamescoached teamtenure incomeraw teamwpcthire5 
.margins, dydx(*)