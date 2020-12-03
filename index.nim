let names = readFile("names.txt")
echo "The names in the name file are currently:\n", names
echo "Would you like to add any more? (y/n)"
let yesorno = readLine(stdin)

if yesorno == "y":
    echo "What name would you like to add?"
    let addname = readLine(stdin)
    echo "OK I will add ", addname, " to the list"
    let allnames = names & "\n" & addname
    writeFile("names.txt", allnames)
else:
    echo "Ok, I won't add any names"
