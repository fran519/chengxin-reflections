create table public.reflections (
  id uuid primary key default gen_random_uuid(),
  nickname text not null default '匿名',
  feeling text not null,
  tag text default '#聊完以後',
  status text not null default 'pending' check (status in ('pending','published')),
  created_at timestamptz not null default now()
);

alter table public.reflections enable row level security;

create policy "public can read published"
on public.reflections for select
to anon, authenticated
using (status = 'published');

create policy "public can submit pending"
on public.reflections for insert
to anon, authenticated
with check (status = 'pending');

create policy "authenticated admin can update"
on public.reflections for update
to authenticated
using (true)
with check (true);

create policy "authenticated admin can delete"
on public.reflections for delete
to authenticated
using (true);
