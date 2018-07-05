#Subsetting lists 

list_parent <- list(SomeCharacter = "A", SomeNumber = 1, SomeVector = c(1,2,3) ,
                    SomeSome = c("A","B","C"))

list_parent[1]
list_parent[1:3]
list_parent[-2] #will display everything except the 2nd element

list_child <- list_parent[c("SomeCharacter","SomeSome")]
list_child[1:2]
list_child["SomeSome"]
