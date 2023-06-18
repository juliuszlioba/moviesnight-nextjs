<img src="./public/img/svg/movieNight_logo.svg" width="200" height="200"/>

# moviesNight website

moviesNight Website with Next.js using App Router

Live website > [movies.juliuszlioba.com](https://movies.juliuszlioba.com/)

## Installation

Download and install with npm
```bash
git clone https://github.com/juliuszlioba/moviesnight-nextjs.git
cd moviesnight-nextjs
npm install
```

Before starting development <br>
1. start database <br> (Database contains migration file and dummy data to play with)
```bash
npx supabase start
```

2. fill in enviroment variables
```bash
cp .env.example .env
```

Start developing or poking around!
```bash
npm run dev
```

_!! Don't forget to shutdown database after development <br> otherwise it will keep running in the background using computer resources_
```bash
npx supabase stop
```

## Other notices
```bash
# if database was created empty, apply migration file with command:
npx supabase migration up

# generate typescript types if there are database changes:
npx supabase gen types typescript --local > ./src/types/database.types.ts
```

## ❗ Known bugs

- [ ] supabase started to return Anime list weirdly sorted by id. I sitll need inverstigate the problem. Need new solution?

## 📑 still TO-DO

- [ ] API post/delete: check if post is in some top list and delete from it

## Documentation

[Nets.js Docs](https://nextjs.org/docs)

[Supabase Docs](https://supabase.com/docs)

[Supabase Nextjs inplamentation Docs](https://supabase.com/docs/guides/auth/auth-helpers/nextjs)

[Supabase official example](https://github.com/supabase/supabase/tree/master/examples/auth/nextjs)