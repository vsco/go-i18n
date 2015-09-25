go install
echo "// The goi18n command formats and merges translation files." > doc.go
echo "//" >> doc.go
echo "//     go get -u github.com/vsco/go-i18n/goi18n" >> doc.go
echo "//     goi18n -help" >> doc.go
echo "//" >> doc.go
echo "// Help documentation:" >> doc.go
echo "//" >> doc.go
goi18n -help | sed -e 's/^/\/\/     /' >> doc.go
echo "package main" >> doc.go
