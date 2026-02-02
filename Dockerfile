FROM public.ecr.aws/docker/library/node:18-alpine

WORKDIR /app

# copy package.json from app/ folder
COPY app/package*.json ./
RUN npm install --production

# copy the rest of the app
COPY app/ .

EXPOSE 3000
CMD ["npm", "start"]
