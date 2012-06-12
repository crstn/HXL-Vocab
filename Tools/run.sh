rapper -i turtle hxl.ttl -o rdfxml > hxl.rdf; 
rapper -i turtle hxl.ttl -o ntriples > hxl.n3; 
curl -o static.html http://localhost/HXL-Vocab/Tools/index.php; 
for file in *.dot; do
	dot $file -Tpng -O; 
	dot $file -Tsvg -O; 
done
curl -o static.html http://localhost/HXL-Vocab/Tools/index.php; 
open http://localhost/HXL-Vocab/Tools/index.php#sec-toc