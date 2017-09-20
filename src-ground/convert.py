import csv
import simplekml
import math

def is_number(s):
	try:
		x = float(s)
		return not math.isnan(x)
	except ValueError:
		return False

def fromnmea(x):
	integral = float(x) // 100
	frac = (float(x) - integral*100) / 60
	retval = integral + frac
	return retval

inputfile = csv.reader(open('2017-07-06T14-51-57/GRANUM_telemetry_slow.csv','r'))
kml=simplekml.Kml()
ls = kml.newlinestring(name="Journey path")
ls.altitudemode = simplekml.AltitudeMode.absolute


for row in inputfile:
		#ls.coords.addcoordinates([(row[10],row[9])])
		#print(ls.coords)
		#continue
		if is_number(row[7]) and is_number(row[8]) and is_number(row[9]):
			lon, lat= [fromnmea(x) for x in (row[7], row[8])]
			alt = float(row[9])

			print(round(lat*10), round(lon*10))
			if not (round(lat*10) == 377 and round(lon*10) == 567):
				continue
				
			print(lat, lon, alt)
			print(lat < 37.710470, lat < 37.716952, lon < 56.723028, lon > 56.724731)
			if lat < 37.710470 or lat > 37.716952 \
			or lon < 56.723028 or lon > 56.724731:
				pass #continue
			
			ls.coords.addcoordinates([(lat, lon, alt,)])

			print(lat, lon, alt)
kml.save('fooline.kml');