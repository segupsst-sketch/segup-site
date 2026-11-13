-- Contatos enviados pelo formulário do site Seg-Up
create table if not exists public.leads (
  id          bigint generated always as identity primary key,
  criado_em   timestamptz not null default now(),
  nome        text not null check (char_length(nome) between 2 and 120),
  empresa     text check (char_length(empresa) <= 160),
  telefone    text not null check (char_length(telefone) between 8 and 30),
  email       text check (char_length(email) <= 160),
  servico     text check (char_length(servico) <= 80),
  mensagem    text check (char_length(mensagem) <= 2000),
  status      text not null default 'novo' check (status in ('novo','em contato','proposta enviada','fechado','perdido'))
);

alter table public.leads enable row level security;

-- Visitantes do site (papel anon) só podem inserir, nunca ler, alterar ou apagar.
drop policy if exists "site insere leads" on public.leads;
create policy "site insere leads" on public.leads
  for insert to anon
  with check (status = 'novo');

-- Leitura e gestão ficam para usuários autenticados no painel do Supabase.
drop policy if exists "equipe gerencia leads" on public.leads;
create policy "equipe gerencia leads" on public.leads
  for all to authenticated
  using (true) with check (true);

create index if not exists leads_criado_em_idx on public.leads (criado_em desc);
