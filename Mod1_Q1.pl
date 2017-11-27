##DESCRIPTION
## Part of Chapter 2: Conversion of unit and sig. fig.
##ENDDESCRIPTION

##KEYWORDS('unit conversion','flow rates','volume','mass', 'moles')

## DBsubject('CHBE 241 Material and Energy Balances')
## DBchapter('Chapter 3')
## DBsection('Unit Conversion')
## Date('10/09/2017')
## Author('J. Verrett,jonathan.verrett@ubc.ca')
## Institution('University of British Columbia')
## TitleText1('Elementary Principles of Chemical Processes')
## EditionText1('3')
## AuthorText1('Felder, Rousseau')
## Section1('3.2')
## Problem1('')

########################################################################

DOCUMENT();      

loadMacros(
   "PGstandard.pl",     # Standard macros for PG language
   "MathObjects.pl",
   "PGML.pl",
   "parserPopUp.pl",
   "weightedGrader.pl"
   #"source.pl",        # allows code to be displayed on certain sites.
   #"PGcourse.pl",      # Customization file for the course
);

# Print problem number and point value (weight) for the problem
TEXT(beginproblem());

# Show which answers are correct and which ones are incorrect
$showPartialCorrectAnswers = 1;

##############################################################
#
#  Setup
#
#
Context("Numeric"); # Or Context("Complex");
Context()->flags->set(tolerance => .02);

#---- Random variables for this problem ---------------------
$D = Real(random(850,950,5));
$W = Real(random(300,500,5));

#---- Formulas to compute answers ---------------------------
$a_kgday = 1500*159/1000*$D; 
$a_moles = 1500*159/1000*$D*1000/$W; 

#---- Answers to the problem --------------------------------
$ans1 = Real($a_kgday);
$ans2 = Real($a_moles);

##############################################################
#
#  PGML Area
#
#
BEGIN_PGML
Parrafin wax is a mixture of long chain hydrocarbons used in a variety of applications such as candle making or electrical insulation. Most paraffin is derived from petroleum refining. Paraffin is produced in Canada at an average rate of 1500 barrels per day according to the American Fuel and Petroleum Manufacturers. This measure refers to an oil barrel, which is roughly 159 litres. If The average density of paraffin is [$D] [``kg/m^3``] and the average molecular weight is [$W] g/mol, what is the flow of paraffin from the plant in kg and moles per day?



* Flow in kg/day...... :* [______] [``kg/day``]
* Flow in moles/day...... :* [______] [``mol/day``]

Make sure to use the capital "E" for scientific notation. 

END_PGML

WEIGHTED_ANS($ans1->cmp(),50);
WEIGHTED_ANS($ans2->cmp(),50);

##############################################################

ENDDOCUMENT();       

