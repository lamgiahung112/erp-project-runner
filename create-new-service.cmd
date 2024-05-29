cd ../
mkdir %1
cd %1
git clone https://github.com/lamgiahung112/go-service-skeleton
mkdir grpc
move %cd%\go-service-skeleton\helpers.go %cd%\helpers.go
move %cd%\go-service-skeleton\main.go %cd%\main.go
move %cd%\go-service-skeleton\routes.go %cd%\routes.go

for /f %%a IN ('dir "%cd%\go-service-skeleton\grpc\" /b') do move "%cd%\go-service-skeleton\grpc\%%a" "%cd%\grpc\"

rmdir /s /q %cd%\go-service-skeleton
go mod init %1
go get github.com/go-chi/chi/v5
go get github.com/go-chi/chi/v5/middleware
go get github.com/go-chi/cors
go get google.golang.org/protobuf
go get google.golang.org/grpc
go mod tidy
git init