#!/bin/bash

# This is a script that will generate one of 25 random quotes from Socrates.
# It is a modified version of the "Fortune Cookie" example given this week.
# Quotes sourced from https://www.goodreads.com/author/quotes/275648.Socrates
# Author: George Maysack

# This line generates a random number between 1-25, and stores it in a variable
# called 'INTEGER', which will be mapped to the quotes in our array.
INTEGER=$(( $RANDOM%25+0 ))

# Stores the Authors name (Socrates, in this case) in a variable called 'AUTHOR'
# so that we may properly quote them, no matter which quote is generated.
AUTHOR="\t -Socrates."

# Storing quotes in an array with 25 entries. Numbers added to the beginning
# of the quotes to help visualize the random number generated. However, the
# actual index number from the array will be n-1 (n being the quote number)
QUOTEARRAY=( "1. The only true wisdom is in knowing you know nothing."
"2. The unexamined life is not worth living."
"3. I cannot teach anybody anything. I can only make them think."
"4. There is only one good, knowledge, and one evil, ignorance."
"5. Be kind, for everyone you meet is fighting a hard battle."
"6. Wonder is the beginning of wisdom.”"
"7. Strong minds discuss ideas, average minds discuss events, weak minds discuss people."
"8. To find yourself, think for yourself."
"9. Education is the kindling of a flame, not the filling of a vessel."
"10. By all means marry; if you get a good wife, you’ll become happy; if you get a bad one, you’ll become a philosopher."
"11. He who is not contented with what he has, would not be contented with what he would like to have."
"12. Be slow to fall into friendship, but when you are in, continue firm and constant."
"13. Prefer knowledge to wealth, for the one is transitory, the other perpetual."
"14. Sometimes you put walls up not to keep people out, but to see who cares enough to break them down."
"15. No man has the right to be an amateur in the matter of physical training. It is a shame for a man to grow old without seeing the beauty and strength of which his body is capable."
"16. The secret of happiness, you see, is not found in seeking more, but in developing the capacity to enjoy less."
"17. Know thyself."
"18. Let him who would move the world first move himself."
"19. Contentment is natural wealth, luxury is artificial poverty."
"20. Employ your time in improving yourself by other men's writings so that you shall come easily by what others have labored hard for."
"21. Death may be the greatest of all human blessings."
"22. The only good is knowledge and the only evil is ignorance."
"23. Do not do to others what angers you if done to you by others."
"24. Every action has its pleasures and its price."
"25. We cannot live better than in seeking to become better." )

# This is our output. First we have a line break. Then we are showing the
# result of running our random number variable 'INTEGER' and applying it
# to our array index. Since 'INTEGER' will always generate a random number
# from 1-25, it will always have a quote in the array (index 0-24) to "map" to.
echo
echo ${QUOTEARRAY[$INTEGER]}
echo -e "$AUTHOR"
echo

# If we wanted to select a specific quote, we could replace '$INTEGER'
# with the actual index number (n-1, as mentioned above) in the code below.

# As proof of concept, I selected my favorite quote #17 "Know thyself."
# By replacing the '$INTEGER' variable, with the index number from the array,
# (17-1, or 16, in this case) we can see my favorite quote every time
# we run the script, below a randomly generated quote.
echo -e "Favorite Quote:"
echo ${QUOTEARRAY[16]}
echo -e "$AUTHOR"
echo
