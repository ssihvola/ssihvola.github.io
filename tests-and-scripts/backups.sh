# Youtube-dl scripts for local backups

# Check links with Robot Framework
robot links.robot

# Check if all tests passed
if [ $? -eq 0 ]; then
    # If all the links work (videos are still online) proceed with yt-dlp scripts
    
    # Change directory to Desktop
    cd ~/Desktop || exit
    
    # Create directory for backups
    mkdir -p samposihvola.com-backups
    cd samposihvola.com-backups || exit
    
    # Execute yt-dlp scripts
    yt-dlp -f mp4 http://www.youtube.com/watch?v=0nocNhXxzyk &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=Sx6T6C8DdgM &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=jcMtjnSVI0Y &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=kxTdLzTTF98 &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=0KgNKj3tOfc &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=iN2JKc7796k &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=ZCtuxv3YMNU &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=5Vu8UAxvYLM &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=ol1lGW26Qsw &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=JDmpCIZAweI &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=n0TvZUr-UL8 &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=bTrI54mbbiw &&
    yt-dlp -f mp4 http://www.youtube.com/watch?v=vyaDLkEjuIk &&
    yt-dlp -f mp4 https://www.youtube.com/watch?v=n32QcCeb-hM &&
    yt-dlp -f mp4 https://www.youtube.com/watch?v=yG5pDGHPDf0
else
    echo "Some tests failed. Skipping yt-dlp scripts."
fi
