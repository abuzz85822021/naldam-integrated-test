-- Supabase > SQL Editor > New query > Run (one-time setup)
create table if not exists public.naldam_daily_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.naldam_daily_state enable row level security;
revoke all on public.naldam_daily_state from anon;
grant select, insert, update on public.naldam_daily_state to authenticated;
drop policy if exists "daily_state_select_own" on public.naldam_daily_state;
create policy "daily_state_select_own" on public.naldam_daily_state for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "daily_state_insert_own" on public.naldam_daily_state;
create policy "daily_state_insert_own" on public.naldam_daily_state for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "daily_state_update_own" on public.naldam_daily_state;
create policy "daily_state_update_own" on public.naldam_daily_state for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
