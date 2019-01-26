From node:alpine as Compiler
Workdir '/app'
Copy package.json .
Run npm install
Copy . .
Run npm run build

From nginx
Copy --from=Compiler /app/build /usr/share/nginx/html
