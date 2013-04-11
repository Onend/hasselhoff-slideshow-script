#!/usr/bin/sh

pictures="
http://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/David_Hasselhoff_2009.jpg/250px-David_Hasselhoff_2009.jpg
http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Hoff_Wiki.jpg/220px-Hoff_Wiki.jpg
https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ1C4UX5MlE0p5_zLrcQgDQWPm4zZeWRL7u_T3ZdYeB4vrnhFYYOA
"

_hasselhoff () {
    i=0;
    for david in $pictures;
    do
        wget -O /tmp/david$i $david;
        gsettings set org.gnome.desktop.background picture-uri file:///tmp/david$i;
        i=`expr $i + 1`
        
        sleep 10;
    done
    
    _hasselhoff;
}

_hasselhoff;

