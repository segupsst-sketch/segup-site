// Configuração pública do site Seg-Up.
// A chave "anon" do Supabase é pública por natureza: a proteção dos dados é feita
// pelas políticas RLS da tabela "leads" (somente inserção, sem leitura pública).
// Deixe em branco para o formulário funcionar só pelo WhatsApp.
window.SEGUP_CONFIG = {
  supabaseUrl: "https://xrohlduonrmeccpzuouj.supabase.co",
  supabaseAnonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhyb2hsZHVvbnJtZWNjcHp1b3VqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTQ1Nzk0ODMsImV4cCI6MjExMDE1NTQ4M30.UmsVdt5KfmQKuY95BDCF78wE05DaYM3ztmS_QOEoVi8"
};
