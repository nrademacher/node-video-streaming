FROM node:12.18.1-alpine              
WORKDIR /usr/src/app                  
COPY package*.json ./                 
RUN yarn --only=production     
COPY ./src ./src                      
COPY ./videos ./videos                
CMD yarn start                         
