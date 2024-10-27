wget "https://openbenches.org/api/benches?truncated=false" -O benches.json
rm -rf tiles
mkdir tiles
tippecanoe --no-tile-compression --output-to-directory tiles benches.json
find . -name '*.pbf' -exec sh -c 'mv "$0" "${0%.pbf}.mvt"' {} \;
