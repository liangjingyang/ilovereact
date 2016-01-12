
.PHONY: server css clean

server:
	browser-sync start --server --files='index.html,bundle/app.css'

css:
	mkdir -p bundle
	postcss --watch --use autoprefixer --use postcss-import css/app.css --output bundle/app.css

clean:
	rm -rf bundle
