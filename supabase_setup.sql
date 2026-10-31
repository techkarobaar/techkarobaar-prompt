create table public.admin_users(user_id uuid primary key references auth.users(id) on delete cascade);
create table public.prompts(id uuid primary key default gen_random_uuid(),title text not null,category text not null default 'AI',prompt text not null,reel_url text not null,slug text not null unique,published boolean not null default false,created_at timestamptz not null default now());
alter table public.admin_users enable row level security;
alter table public.prompts enable row level security;
create policy "admin reads own row" on public.admin_users for select to authenticated using(user_id=auth.uid());
create policy "public reads published or admin reads all" on public.prompts for select using(published=true or exists(select 1 from public.admin_users a where a.user_id=auth.uid()));
create policy "admin inserts" on public.prompts for insert to authenticated with check(exists(select 1 from public.admin_users a where a.user_id=auth.uid()));
create policy "admin updates" on public.prompts for update to authenticated using(exists(select 1 from public.admin_users a where a.user_id=auth.uid())) with check(exists(select 1 from public.admin_users a where a.user_id=auth.uid()));
create policy "admin deletes" on public.prompts for delete to authenticated using(exists(select 1 from public.admin_users a where a.user_id=auth.uid()));
-- After signing up in admin.html, copy your UUID from Authentication > Users and run:
-- insert into public.admin_users(user_id) values('YOUR-USER-UUID');
