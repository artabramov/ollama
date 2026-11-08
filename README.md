# ollama

Check for GPU:

```sh
nvidia-smi && docker exec ollama ollama ps
```

Usage example:

```sh
docker exec -it ollama ollama run qwen2.5:3b "who are you?"
```