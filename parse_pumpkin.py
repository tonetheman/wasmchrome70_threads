
data = open("pumpkin_OBJ.obj").readlines()
import string
data = map(string.strip,data)

count = 0
for line in data:
	ldata = line.split()
	if len(ldata) ==0:
		continue

	if ldata[0] == "v":

		a = float(ldata[1])
		b = float(ldata[2])
		c = float(ldata[3])

		print("spheres.push_back(Sphere(Vec3f({0},{1},{2}),1,Vec3f(0.90, 0.76, 0.46), 1, 0.0));".format(a,b,c))
		
		
		count = count + 1


