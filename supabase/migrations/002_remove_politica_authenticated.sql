-- Remove a política que liberava leitura e edição dos leads para qualquer usuário "authenticated".
-- Por padrão o Supabase permite que qualquer pessoa crie conta usando a chave pública do site;
-- com essa conta ela leria todos os contatos. O painel do Supabase (Table Editor) usa papel
-- administrativo e ignora RLS, então você continua vendo e editando os leads normalmente.
drop policy if exists "equipe gerencia leads" on public.leads;
