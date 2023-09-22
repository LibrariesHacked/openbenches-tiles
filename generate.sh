wget "https://openbenches.org/api/benches?truncated=false&media=true" -O benches.json
rm -rf tiles
mkdir tiles
tippecanoe --no-tile-compression --output-to-directory tiles benches.json
