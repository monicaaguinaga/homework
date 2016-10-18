cats = Array.new(100, true)

100.times do |i|
	# when i = 0, edit cats[0,1,2,3....99]
	# when i = 1, edit cats[0,2,4,6,...98]
	# when i = 2, edit cats[0,3,6,9,...99]
	i += 1

	# iterate over each index in cats array
	cats.each_index do |x|    

		# CATS[i] = 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
		# PASS   		t t t t t t t t t  t  t  t  t  t  t  t  t  t  t  t 
		# 1					f f f f f f f f f  f  f  f  f  f  f  f  f  f  f  f
		# 2           t   t   t   t    t     t     t     t     t     t
		# 3			   		  t     f     t        f        t        f      
		# 4               f       f          t           f           f
		# 5                 t          f              f              t   
		# 6                   t              f                 t     
		# 7                     t                  f                 
		# 8                       t                      t                         
		# 9                         f                          f
		# 10                           t
		# 11                              t
		# 12                                 t
		# for each cat, flip the boolean if (cat_index + 1) % i == 0
		cats[x] = !cats[x] if ((x+1) % i) == 0
		
	end

end

100.times do |x|
	if cats[x] == true
		puts "cat #{x+1} has a hat"
	elsif cats[x] == false
		puts "cat #{x+1} is hatless"
	end
end



