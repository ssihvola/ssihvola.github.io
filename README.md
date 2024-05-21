# samposihvola.com

The source code of my home page, which is currently an online archive of my artistic endeavors: music, poetry, videos. Audio & video content are hosted on Youtube and poetry content is mostly in .html files found in this repo. The site also has a contact form created with Formspree.

There's no fancy stuff; It's just plain and simple HTML & CSS with test automation done by Robot Framework to check that all the content is still online and the contact form is functioning as expected.

Since this is meant to be an online archive, I wanted to pick technologies that have proven the test of time (HTML & CSS). I also wanted the site to be very simple for me to update in the future. I just love the fact that I can do updates locally using my Linux terminal & VS Code and don't need to open any online dashboards, etc. Simple & efficient!

The site is hosted on Github Pages, Domain & DNS have been purchased elsewhere. It is possible that I will purchase some own storage in the future for the audio/video content, but right now I'm fine with Youtube. Also, the contact form will possibly need another approach if I decide to get my own backend solution at some point.

# Instructions

Install Robot Framework & youtube-dl & Google Chrome. 

Create backups with youtube-dl

```bash
cd scripts && bash backups.sh && cd ..
```

Run all tests

```bash
cd tests && robot links.robot && robot form.robot && cd ..
```

Remember to update tests and backups when adding new content!

# Note to self

Do not drink half a liter of coffee after lunch. Just don't do it.
