#example pulling drink data from XML using xpathSApply
xpathExample <- xmlTreeParse("example.xml",useInternal=T)

# assign the root node in the xml to the rootNode variable
rootNode <- xmlRoot(xpathExample)

# output the rootnode name
xmlName(rootNode)

# get a list of all drinks using xpathSApply
# // indicates an element anywhere in the document
drinks <- xpathSApply(rootNode, "//drink", xmlValue)

# output the list of drinks
drinks