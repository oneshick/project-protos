.PHONY: generate clean

generate:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/task/task.proto
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/user/user.proto

clean:
	del /s /q *.pb.go 2>nul
	del /s /q *.pb.gw.go 2>nul