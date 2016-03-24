FROM nginx:1.9


RUN sed \
-i '/location \/ {/a if ($request_uri ~ ^.?\.(eot)|(ttf)|(woff)|(woff2)|(otf)$) {\nadd_header Access-Control-Allow-Origin *;\n}' \
/etc/nginx/conf.d/default.conf
