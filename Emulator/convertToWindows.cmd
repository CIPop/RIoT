openssl pkcs12 -export -out Alias.pfx -inkey AliasKey.pem -in AliasCert.pem -password pass:testcertificate
openssl pkcs12 -export -out R00t.pfx -inkey R00tKey.pem -in R00tCrt.pem -password pass:testcertificate
