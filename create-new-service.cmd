cd ../
mkdir %1
cd %1
git clone https://github.com/lamgiahung112/go-service-skeleton
move %cd%\go-service-skeleton\helpers.go %cd%\helpers.go
move %cd%\go-service-skeleton\main.go %cd%\main.go
move %cd%\go-service-skeleton\routes.go %cd%\routes.go
rmdir /s /q %cd%\go-service-skeleton
go mod init %1
go get github.com/go-chi/chi/v5
go get github.com/go-chi/chi/v5/middleware
go get github.com/go-chi/cors