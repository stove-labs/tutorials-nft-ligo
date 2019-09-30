# Compile the LIGO transaction parameter into it's Michelson representation

# Mint
# ligo compile-parameter nft.ligo main 'Mint(record nftToMintId = 2n ; nftToMint = record owner = ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" : address); end; end)'
# (Right (Left (Pair "tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" 2)))

# Burn
# ligo compile-parameter nft.ligo main 'Burn(record nftToBurnId = 1n end)'
# (Left (Left 1))

# Transfer
# ligo compile-parameter nft.ligo main 'Transfer(record nftToTransfer = 1n ; destination = ("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" : address) end)'
# (Right (Right (Pair "tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx" 1)))

granary client - transfer 0 from bootstrap1 to nft --arg '"(Right (Left (Pair \"tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx\" 2)))"' --burn-cap 0.257 &
sleep 10
granary client - bake for bootstrap1