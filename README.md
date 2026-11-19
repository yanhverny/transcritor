# Transcritor de Vídeo

Transforma vídeo ou áudio em texto, de graça, direto no navegador. Usa o modelo
[Whisper](https://github.com/openai/whisper) através da biblioteca
[Transformers.js](https://github.com/huggingface/transformers.js).

O arquivo **não é enviado para nenhum servidor**: a transcrição acontece no computador
de quem usa, aproveitando a placa de vídeo (WebGPU) quando disponível.

## Recursos

- Arraste um vídeo ou áudio (MP4, MOV, WEBM, MP3, WAV, M4A…)
- Três níveis de qualidade: Rápido (~200 MB), Equilibrado (~600 MB) e Máxima (~1 GB, precisa de GPU)
- Português, inglês, espanhol, francês ou detecção automática
- Texto em parágrafos ou com o tempo de cada trecho
- Copiar texto, baixar `.txt` ou legenda `.srt`

O modelo é baixado só na primeira vez e fica salvo no navegador.

## Como usar

**No Windows, sem instalar nada:** clique duas vezes em `Abrir Transcritor.bat`.
Ele abre a página em `http://localhost:8765/`. Deixe a janela preta aberta enquanto usa.

**Online:** https://yanhverny.github.io/transcritor/ (publicado automaticamente pelo
GitHub Pages a cada `git push` na branch `main`; o `index.html` da raiz só redireciona
para o `transcritor.html`).

**Em outra hospedagem:** a pasta `site/` tem o `index.html` pronto para publicar em
qualquer hospedagem estática (Netlify, Cloudflare Pages).

Use Chrome ou Edge para aproveitar a placa de vídeo.

## Arquivos

| Arquivo | O que é |
| --- | --- |
| `transcritor.html` | O transcritor completo (interface + motor de transcrição) |
| `Abrir Transcritor.bat` | Mini-servidor local para abrir no Windows |
| `site/index.html` | Cópia do transcritor para publicar como site |
