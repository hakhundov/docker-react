build dev:
	docker build -f Dockerfile.dev .

run:
	docker run -it -p 3000:3000 d82e0dc94d85
	docker run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app bb5ee1173608
	docker run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app bb5ee1173608
	