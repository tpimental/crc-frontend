# How to Update Your Site

All frequently-changed content lives in `src/content/`. Edit, commit, push to `main` — GitHub Actions rebuilds and deploys automatically. You never need to touch the components.

## Bio / About Me
Edit `src/content/bio.js` — name, title, location, badges, about text (HTML allowed), resume link text.

**Photo**: replace `src/assets/Biography/self.jpg` with a new image of the same name.

## Resume
1. Replace `public/files/tyler_pimental_resume.pdf` with the new PDF (keep the filename).
2. If the embedded preview uses a new Google Drive file, update `embedUrl` in `src/content/resume.js`.

## Certifications
Edit `src/content/certs.js`. Each cert is one object:

```js
{
  title: "Cert name",
  credlyId: "xxxx-xxxx-...",   // from the Credly embed/badge URL
  tags: [{ label: "Azure", color: "Green" }],
  description: `Your write-up. HTML links allowed.`,
},
```

Add, remove, or reorder entries — the Certs window renders whatever is in the list.

## Icons / new desktop windows
Window definitions (icons, titles, positions) are in `src/store/index.js` under `windows`. Icon images go in `src/assets/win95Icons/`.

## Publish
```
git add -A && git commit -m "content update" && git push
```
The Azure Static Web Apps workflow deploys it in ~2 minutes.
