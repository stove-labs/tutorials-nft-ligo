DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ligo compile-contract $DIR/nft.ligo main > $DIR/nft_tmp.tz

# please note that OS X introduces a line break incompatiblity when saving a file
# hence the following correction for UNIX systems
tr -d '\r' < $DIR/nft_tmp.tz > $DIR/nft.tz
rm $DIR/nft_tmp.tz