# Compile the LIGO storage initial values into a Michelson representation
# ligo compile-storage nft.ligo main 'record nfts = map 1n -> record owner = ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" : address); end; end; contractOwner = ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" : address) end'
# (Pair "tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" { Elt 1 "tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" })


granary client - originate contract nft for bootstrap1 transferring 0 from bootstrap1 running $PWD/contracts/nft.tz --init '"(Pair \"tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx\" { Elt 1 \"tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx\" })"' --burn-cap 7.131 --force & 
sleep 10
granary client - bake for bootstrap1