# SED Commands for Defanging IOCs
# These commands render malicious indicators harmless by modifying them
# so they cannot be accidentally clicked or executed

# Replace dots/periods with [.]
s/\./[.]/g

# Replace @ with [@]
s/@/[@]/g

# Replace http with hxxp (case-insensitive)
s/http/hxxp/g
s/HTTP/HXXP/g

# Replace :// with [://]
s/:\/\/\/[:\\/]/g

# Combined command (all in one line):
# s/\./[.]/g; s/@/[@]/g; s/http/hxxp/g; s/:\/\/\/[:\\/]/g
