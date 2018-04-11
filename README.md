# James Hart's Resume

## How to publish your resume!

npm install -g resume-cli
resume export --theme flat resume.html
cp resume.html resume.json resume.pdf ../hjhart.com/middleman/source/resumes/

docker-compose build
docker-compose run --rm resume resume export --theme flat resume.html


## To install ALL themes to export them ALL!

docker-compose build --build-arg NODE_ENV=development resume
docker-compose run --rm resume ./export_all_themes.sh

## How to update

Use this script to replace json themes:

Navigate to http://npmsearch.com/?q=jsonresume-theme and execute this in the console

```
javascript:(function() {
    function l(u, i) {
        var d = document;
        if (!d.getElementById(i)) {
            var s = d.createElement('script');
            s.src = u;
            s.id = i;
            d.body.appendChild(s);
        }
    }
    l('//code.jquery.com/jquery-3.2.1.min.js', 'jquery')
})();
array = []; $('.name .homepage').each(function() { array.push(this.innerHTML) }); array.join(' ')
```
put the result into the bash script.
