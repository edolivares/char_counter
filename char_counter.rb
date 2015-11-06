#This is the string line
string="XgTrstENILOEzHXwrsnobDPWpGNsvtnBJTcmmgSDVwcnXmURcbDeOlILAbgGAHsahuHDIhIUoLdsMCqRuiTJswRpdNkgflsDcEuQYfmYiALRZCZwSzYfiyDSKFlHVWdKSNotITbrNJzCEbzeomrlxGwYgPRsaXoOnHtrHcHEqWilHAhjWdnADOrhmiXuYcYGKDvzIXH".downcase
chain=[]
chain=string.split ""
filter=[]
valores=[]

#Mapping chain and filtering the characters, leaving just one of each
chain.map { |a| if filter.include?(a)==false then filter+=[a] end} 
#Initializing a counter to get the number of repetitions of every character on the chain
a=0
#Mapping filter to get the number of a for every character on chain
filter.map { |x|
    (0).upto(chain.length-1) do |i| 
        if i==(chain.length-1) then 
             if chain[i] == x then 
                a+=1 
            end 
            valores+=[a]
            a=0
         else 
            if chain[i] == x then 
                a+=1 
            end 
        end 
       end
}
        
#I need to sort by number of repetitions, and then by alphabetic position, only the ones that have the same count 
filter.each do |i|
    puts i
end
            
valores.each do |i|
    puts i
end
