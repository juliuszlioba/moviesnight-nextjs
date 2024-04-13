drop policy "Enable all methods for authenticated users only" on "public"."ganres";

drop policy "Enable all methods for authenticated users only" on "public"."list_anime_top";

drop policy "Enable all methods for authenticated users only" on "public"."list_movies_top";

drop policy "Enable all methods for authenticated users only" on "public"."list_series_top";

drop policy "Enable all methods for authenticated users only" on "public"."posts";

drop policy "Enable all methods for authenticated users only" on "public"."posts_ganres";

create policy "Enable all methods for my email only"
on "public"."ganres"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));


create policy "Enable all methods for my email only"
on "public"."list_anime_top"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));


create policy "Enable all methods for my email only"
on "public"."list_movies_top"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));


create policy "Enable all methods for my email only"
on "public"."list_series_top"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));


create policy "Enable all methods for my email only"
on "public"."posts"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));


create policy "Enable all methods for my email only"
on "public"."posts_ganres"
as permissive
for all
to authenticated
using (((auth.jwt() ->> 'email'::text) = 'julius.zlioba@gmail.com'::text));



