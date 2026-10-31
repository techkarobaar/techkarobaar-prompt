TECHKAROBAAR AI PROMPT WEBSITE — FREE SETUP

Included: index.html (public site), admin.html (private admin login), config.js, supabase_setup.sql.
There are NO sample prompts. The public site starts empty.

FREE SETUP
1. Create a free project at https://supabase.com/
2. In Supabase > SQL Editor, paste and run all of supabase_setup.sql.
3. In Supabase Project Settings > API, copy Project URL and the public anon/publishable key.
4. Edit config.js and replace YOUR_SUPABASE_PROJECT_URL and YOUR_SUPABASE_ANON_KEY. Never use a service_role/secret key.
5. Create a public GitHub repository named techkarobaar-prompts at https://github.com/
6. Upload all four files to the repository root.
7. GitHub repository > Settings > Pages > Deploy from a branch > main > /(root) > Save.
8. Your site URL will be https://YOUR-GITHUB-USERNAME.github.io/techkarobaar-prompts/
9. Open https://YOUR-GITHUB-USERNAME.github.io/techkarobaar-prompts/admin.html
10. Create account with your email/password. Then Supabase > Authentication > Users > copy your account UUID.
11. Back in Supabase > SQL Editor, run:
    insert into public.admin_users(user_id) values('PASTE-YOUR-UUID-HERE');
12. Return to admin.html and log in. Now add title, category, prompt and the matching public Instagram Reel URL.

INSTAGRAM
Each prompt displays its matching Instagram Reel embed and a Watch Reel link. Instagram may restrict embeds; Watch Reel still opens the Reel. Follow buttons open https://www.instagram.com/techkarobaar/.

SHARING
Each prompt card has an anchor ID. Once published, share the website link plus #p-SLUG (slug can be viewed in the browser URL after opening the card; a direct copy-link feature can be added later).

COST
GitHub Pages and Supabase offer free tiers; free-plan limits and policies can change. No custom paid domain or paid hosting is required. This setup uses Instagram Reel URLs, not video file uploads.
