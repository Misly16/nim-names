let names = readFile("names.txt")
echo "The names in the name file are currently:\n", names
echo "Would you like to add any more? (y/n)"
let yesorno = readLine(stdin)

if yesorno == "y":
    echo "What name would you like to add?"
    let addname = readLine(stdin)
    echo "OK I will add ", addname, " to the list"
    # This will overwrite anything in the names.txt file as im not sure yet on how to prevent that
    writeFile("names.txt", addname)
else:
    echo "Ok, I won't add any names"
