. functions.sh

title "Lets make all the things!"
echo

center "Emilis Dambauskas, PriceOn"
center "emilis.d@gmail.com"
center "2012"
    

slide   "K.I.S.S. leads to L.O.V.E."
echo -e "\
    The return is the function of the Tao.\n\
    Responding is the way of the Tao.\n\
    \n\
    All things begin as source code.\n\
    Source code begins with an empty file.\n\
    \n\
        Tao Te Chip\n"
point   "What is the simplest and smallest program?"
runcmd  "ls -l prog0.sh"
demo    prog0.sh
runsh   "if ./prog0.sh; then echo 'TRUE'; else echo 'FALSE'; fi"


slide   "Hello World!"
point   "Lets write Hello World:"
demo    prog1.sh
slide   "GNU make Hello World:"
demo    prog2.mk
point   "Lets add NAME parameter:"
diff    prog2.mk prog2a.mk
runsh   "./prog2a.mk"
runsh   "./prog2a.mk NAME=VilniusJS"

slide   "Foo →  Bar, Baz → Quux"
point   "Lets write a program that prints\n\
    'bar', when we input 'foo'\n\
    'quux', when we input 'baz':"
runsh   "cat prog3.mk"
runsh   "./prog3.mk foo"
runsh   "./prog3.mk baz"
point   "Without arguments:"
runsh   "./prog3.mk"
point   "The first target gets executed. Lets add help for it:"
diff    prog3.mk prog3a.mk
runsh   ./prog3a.mk
point   "Actually lets print both 'bar' and 'quux' for no input:"
diff    prog3a.mk prog3b.mk
runsh   ./prog3b.mk
runsh   "./prog3b.mk help"

slide   "Grep Delfi"
point   "Lets count the number of JS includes in main news portals:"
demo    prog4.mk
runsh   "./prog4.mk QUERY=Vilni"
runsh   "./prog4.mk QUERY=Kaun"
point   "Lets reduce code repetition:"
diff    prog4.mk prog4a.mk
runsh   ./prog4a.mk
echo
point   "Lets use the full power of make macros:"
diff    prog4a.mk prog4b.mk
demo    prog4b.mk
echo
point   "Lets run the tasks in paralell:"
runsh   "time make -sf prog4b.mk"
runsh   "time make -j 4 -sf prog4b.mk"
runsh   "make -j 4 -sf prog4b.mk"
point   "Lets always show Delfi first and Alfa last:"
diff    prog4b.mk prog4c.mk
runsh   "make -j 4 -sf prog4c.mk"
runsh   "make -j 4 -sf prog4c.mk"

slide   "The uses for make:"
point   "Compile scripts"
point   "Project tasks"
point   "Small programs"
point   "Complex paralelization"
slide   "Cons of make:"
point   "Branching is difficult"
point   "Looping is limited"
point   "Probably not useful for CGI-BIN programs :-)"

slide   "Some examples:"
point   "Project tasks:"
view    /home/www/vilniusjs.lt/Makefile
point   "Small programs:"
view    ~/work/priceon/priceon-index-workbench/Makefile
point   "Generating PNGs from SVG:"
runsh   "inkscape /home/www/mspec.priceon.lt/files/src/ios.svg"
view    /home/www/mspec.priceon.lt/files/ios/Makefile

slide   "What about JavaScript?"
point   "Some libraries available:"
point   "https://github.com/caolan/async#auto"
point   "https://github.com/mde/jake#tasks"
point   "https://github.com/emilis/good-job/"

slide   "Jakefile example"
view    /home/www/static.priceon.lt/Jakefile.js

slide   "Good-job example"
point   "Useful for asynchronous Controllers:"
view    /home/www/m.priceon.lt/node_modules/pricenode-mobile-products/pricenode-mobile-products.js

slide   "Summary"
point   "make is a very useful and powerful program for:"
point   "   runing project tasks"
point   "   writing small programs"
point   "   building projects"
point   "make pattern can be used in JavaScript for:"
point   "   making your code readable"
point   "   running project tasks"
point   "   building projects"
point   "   writng async code (esp. controllers)"


slide   "The End"
center  "Ačiū už dėmesį!"
echo
center   "Klausimai?"
echo
