openssl pkcs12 -export -out Alias.pfx -inkey AliasKey.pem -in AliasCert.pem -certfile DeviceCA.pem -password pass:testcertificate
openssl x509 -outform der -in AliasCert.pem -out AliasCert.cer

openssl pkcs12 -export -out DeviceID.pfx -inkey DeviceIDPrivate.PEM -in DeviceCertChain.PEM -certfile DeviceCA.pem -password pass:testcertificate
openssl x509 -outform der -in DeviceCertChain.pem -out DeviceID.cer

openssl pkcs12 -export -out DeviceCA.pfx -inkey DeviceCAKey.pem -in DeviceCA.pem -password pass:testcertificate
openssl x509 -outform der -in DeviceCA.pem -out DeviceCA.cer

openssl crl2pkcs7 -nocrl -certfile DeviceCertChain.PEM -out DeviceChain.p7b
