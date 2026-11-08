.PHONY: install

install:
	docker build -t ollama-local .
	docker rm -f ollama 2>/dev/null || true
	docker run -d \
		--name ollama \
		--restart unless-stopped \
		--gpus all \
		-p 11434:11434 \
		-v ollama:/root/.ollama \
		ollama-local
	docker exec ollama ollama pull qwen2.5:3b
