xpath_example
=============

This is a simple xpath example for the getting and cleaning data Coursera course.

Xpath vs index notation using XML in R
=======================================
When handling XML data, one of the most common ways of filtering is using the XSLT language. This was shown in the videos about parsing XML. 

As Thierry mentioned above, when you are using the [[1]] notation you are only getting that FIRST node. rootNode[[1]][[1]] will only get the first node of the first node etc.

Here is a quick example that doesn't use the xml from the assignment but should help explain it a bit more on how to use the xpathSApply() function to get more than one node.

```
 <meals>
  <meal>
    <time>09:30 A.M</time>
    <food>Cereal</food>
    <drink>Orange Juice</drink>
  </meal>
  <meal>
   <time>12:00 P.M</time>
   <food>Sandwich</food>
   <drink>Chocolate Milk</drink>
  </meal>
  <meal>
   <time>06:00 P.M</time>
   <food>Spaghetti</food>
   <drink>Milk</drink>
  </meal>
 </meals>
```

In the above example, the <meals/> tag is the rootNode.  If you used the syntax rootNode[[1]][[1]]  it would get the first element inside the <meals/> tag and then the first element inside that first element <meal/> and so would return everything inside the first <meal /> tag.

However, the index notation means you have to  know every index of every element in the entire structure. Instead you should look at the xsltSApply() function as it lets you get a list of elements or values. 

Using the XML above, lets say I wanted to get a list of all the drinks that I had for my meals. In xpathSApply() I can do the following:


<code>
  xpathSApply(rootNode, "//drink", xmlValue)
</code>