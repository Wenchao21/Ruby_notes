a = ["ab","cd","ef","gh"]
d = Bignum.new
e = String.new
while d < a.length
	e = e + a[d]
	p e
	d = d + 1
end
