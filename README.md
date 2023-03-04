# James Hart's Resume

## How to publish your resume!

```bash
docker-compose build
docker-compose run --rm resume npm install
docker-compose run --rm resume ./node_modules/.bin/resume export --theme short resume.html
open resume.html
```

> NOTE: PDF saving is broken with this docker image. For now, it's easy enough to "Save as PDF" from the HTML

Print as PDF from Firefox to ~/workspaces/resumes/resume.pdf

```
cp resume.html resume.json resume.pdf ../hjhart.com/source/resumes/
```

## To install ALL themes to export them ALL!

```bash
docker-compose build --build-arg NODE_ENV=development resume
docker-compose run --rm resume bash ./scripts/export_all_themes.sh
```

## How to update which themes to install / export

Remove all devDependencies from package.json (this is where the theme depenedencies are managed)

Navigate to http://npmsearch.com/?q=jsonresume-theme and execute this in the console

```
javascript:(function(){function l(u,i){var d=document;if(!d.getElementById(i)){var s=d.createElement('script');s.src=u;s.id=i;d.body.appendChild(s)}}l('//code.jquery.com/jquery-3.2.1.min.js','jquery')})();
array = []; $('.name .homepage').each(function() { array.push(this.innerHTML).substr(17) }); array.join(' ')
```

put the result into the ./export_all_themes.sh and ./install_all_themes.sh bash scripts.
