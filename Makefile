install: fortune.pb.go goinstall

fortune.pb.go :  fortune.proto ;  sleep 10 && protoc --go_out=plugins=grpc:. -I. fortune.proto

goinstall:
	go install .
