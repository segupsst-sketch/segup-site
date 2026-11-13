# Site Seg-Up Segurança do Trabalho

Site institucional da **Seg-Up Consultoria e Atividades de Segurança do Trabalho Ltda** (CNPJ 54.478.734/0001-00).

Site estático (HTML, CSS e JavaScript puros), sem etapa de build.

## Estrutura

```
index.html                     página única do site
img/                           logomarca, ícone, favicon e imagem de compartilhamento
js/config.js                   chaves públicas do Supabase (opcional)
supabase/migrations/001_leads.sql   tabela de contatos do formulário
vercel.json                    cabeçalhos de segurança e cache
robots.txt
```

## Contatos usados no site

- WhatsApp: (73) 9 9908-6725 (variáveis `WHATSAPP` e `TELEFONE_TXT` no fim do `index.html`)
- E-mail: segup.sst@gmail.com
- Instagram: @segup.sst

## Formulário de contato

1. Abre o WhatsApp com a mensagem já escrita.
2. Se `js/config.js` tiver a URL e a chave anon do Supabase, grava o contato na tabela `leads`.
   Visitantes só conseguem inserir; a leitura é feita no painel do Supabase.

## Publicar na Vercel

1. Em vercel.com, **Add New → Project** e importe este repositório.
2. Framework Preset: **Other**. Build Command e Output Directory em branco.
3. Deploy. Depois, em **Settings → Domains**, adicione o domínio da empresa.

## Ativar a gravação de contatos no Supabase

1. Crie um projeto no Supabase.
2. Rode `supabase/migrations/001_leads.sql` no SQL Editor.
3. Copie a **Project URL** e a **anon public key** (Settings → API) para `js/config.js`.

## Visualizar localmente

```
python3 -m http.server 8000
```

Abra http://localhost:8000.
