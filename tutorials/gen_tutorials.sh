#!/bin/bash

for f in tutorial_introduction_stub.html $@
do

echo $f

bf=$(basename $f)
if [ $bf = tutorial_introduction_stub.html ]
then
h="tutorial_introduction.html"
else
h=tutorial_${bf/cpp/html}
fi

cat >$h <<EOF
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<title>
EOF
if [ $bf = tutorial_introduction_stub.html ]
then
echo Introduction >> $h
else
head -n1 $f | sed "s/.*://" >> $h
fi
cat >>$h <<EOF
</title>
<link rel="stylesheet" type="text/css" href="../assets/css/highlight.css">
<style>

a:visited {
color: #000000;
}

a:link {
color: #000000;
}

a:hover {
color: #aa0000;
}

</style>
</head>
<body class="hl" style="background-color: #444444; font-family: Helvetica, Arial, sans-serif;">

<div>
<style scoped>
@import "../assets/css/bootstrap.css";
</style>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="/index.html">Halide</a>
      <div class="nav-collapse">
        <ul class="nav">
          <li class="active"><a href="/index.html#overview">Overview</a></li>
          <li><a href="/index.html#gettingstarted">Getting Started</a></li>
          <li><a href="/index.html#publications">Publications</a></li>
          <li><a href="/index.html#resources">Resources</a></li>
          <li class="divider-vertical"></li>
          <li><a href="/docs">Docs</a></li>
          <li><a href="http://github.com/halide/Halide/issues">Bugs</a></li>
          <li><a href="http://github.com/halide/Halide/wiki">Wiki</a></li>
          <li class="divider-vertical"></li>
          <li><a href="http://stackoverflow.com/questions/tagged/halide"><i class="fa fa-stack-overflow"></i>/#halide</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>

<div style="position:relative; width: 100%; top:60px;">
<div style="width:200px; float:left; ">
<a href="tutorial_introduction.html" style="text-decoration:none;" ><span style="width:100%; height:100%; top:0; left:0;">
<div style="width:200px; padding:20px;
EOF

if [ $h = tutorial_introduction.html ]
then
echo 'padding-right:40px; color: #000000; background-color: #ffffff; ' >> $h
else
echo 'background-color: #dddddd; ' >> $h
fi

cat >>$h <<EOF
text-align: left; ">
<b>
00
&nbsp</b>
Introduction
</div>
</span>
</a>
EOF

for f2 in $@
do
bf2=$(basename $f2)
h2=tutorial_${bf2/cpp/html}

echo '<div style="width:200px; height:20px;"></div>' >> $h
echo '<a href=' >> $h
echo $h2 >> $h
echo ' style="text-decoration:none;"><span style="width:100%; height:100%; top:0; left:0;">' >> $h

if [ "$f" = "$f2" ]; then
echo '<div style="width:200px; padding:20px; padding-right:40px; background-color: #ffffff; color: #000000; text-align: left; ">' >> $h
else
echo '<div style="width:200px; padding:20px; background-color: #dddddd; text-align: left; ">' >> $h
fi

echo '<b>' >> $h
echo $bf2 | cut -d'_' -f2 >> $h
echo '&nbsp</b>' >> $h
head -n1 $f2 | sed "s/.*://" >> $h
echo '</div></span></a>' >> $h

done

cat >>$h <<EOF
</div>
<div style="position:relative; margin-left:260px; padding:20px; background-color: #ffffff;">
EOF

if [ $h = tutorial_introduction.html ]
then
cat $f >> $h
else
echo '<pre class="hl">' >> $h
highlight -k monospace -K 12 --config-file=Halide.theme -s Halide -f $f >> $h
echo '</pre>' >> $h
fi

echo '</div></body></html>' >> $h

# Inline the figures
IFS=''
NEXT_FIG=""
mv $h tmp.html
cat tmp.html | while read LINE; do
if [[ "$LINE" == *figures/lesson* ]]
then
# Remember this figure and place it on the next empty line
NEXT_FIG=$(echo $LINE | sed "s/^.*\(figures.lesson[^ ]*\).*$/\1/")
# Also remember the current indentation level
SPACES=$(echo $LINE | sed "s/^\( *\).*$/\1/")
echo "$LINE" | sed "s/figure[^ ]*/below/" >> $h
elif [[ "$LINE" == "" ]]
then
if [[ "$NEXT_FIG" != "" ]]
then
# Go grab the figure
mkdir -p figures
cp $(dirname $f)/$NEXT_FIG figures/
echo >> $h
if [[ $NEXT_FIG == *gif ]]
then
# It's an animated gif
echo "${SPACES}" '<span><img src=' ${NEXT_FIG} '></span>' >> $h
else
# Assume it's a video
echo "${SPACES}" '<span><video autoplay loop><source src=' ${NEXT_FIG} ' />Your browser does not support the video tag :(</video></span>' >> $h
fi
echo >> $h
NEXT_FIG=""
else
echo >> $h
fi
else
echo "$LINE" >> $h
fi
done

done
