pat = [plot(c*sin(x), (-pi,pi), color=Color(c,0,0), ymin = -1, ymax = 1) for c in sxrange(-1,1,0.2)]
a = animate(pat)
a.ffmpeg(savefile='./' + 'my_animation.gif')