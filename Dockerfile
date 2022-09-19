# Development


FROM node:18 As development

WORKDIR /app

COPY --chown=node:node package*.json ./

RUN npm i 


COPY --chown=node:node . .
RUN npm run build

RUN npx prisma generate --schema=./prisma/schema.prisma

USER node

EXPOSE 3000

CMD [ "node", "dist/main.js" ]

# BUILD FOR PRODUCTION


FROM node:18-alpine As build

WORKDIR /app

COPY --chown=node:node package*.json ./

COPY --chown=node:node --from=development /app/node_modules ./node_modules

COPY --chown=node:node . .

RUN npm run build

ENV NODE_ENV production

RUN npm i --only=production && npm cache clean --force

RUN npx prisma generate --schema=./prisma/schema.prisma

USER node

EXPOSE 3000

# PRODUCTION


FROM node:18-alpine As production

COPY --chown=node:node --from=build /app/node_modules ./node_modules

COPY --chown=node:node --from=build /app/dist ./dist

EXPOSE 3000

CMD [ "node", "dist/main.js" ]