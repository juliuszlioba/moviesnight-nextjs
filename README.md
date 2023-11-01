<img src="./public/img/svg/movieNight_logo.svg" width="200" height="200"/>

# moviesNight website

moviesNight Website with Next.js using App Router

Live website > [movies.juliuszlioba.com](https://movies.juliuszlioba.com/)

## Installation

Download and install
```bash
git clone https://github.com/juliuszlioba/moviesnight-nextjs.git
cd moviesnight-nextjs
pnpm install
```

1. fill in enviroment variables
```bash
cp .env.example .env
```

Before starting development <br>
2. start database <br> (Database contains migration file and dummy data to play with)
```bash
pnpm supabase start
```

Start developing or poking around!
```bash
pnpm run dev
```

_!! Don't forget to shutdown database after development <br> otherwise it will keep running in the background using computer resources_
```bash
pnpm supabase stop
```

## Other notices
```bash
# if database was created empty, apply migration file with command:
pnpm supabase migration up

# generate typescript types if there are database changes:
pnpm supabase gen types typescript --local > ./lib/database.types.ts
```

<!-- ## 📑 still TO-DO -->

## Documentation

[Nets.js Docs](https://nextjs.org/docs)

[Supabase Docs](https://supabase.com/docs)

[Supabase Nextjs inplamentation Docs](https://supabase.com/docs/guides/auth/auth-helpers/nextjs)

[Supabase official example](https://github.com/supabase/supabase/tree/master/examples/auth/nextjs)