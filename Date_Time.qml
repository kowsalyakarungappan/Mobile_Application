import QtQuick 2.0
import "..///Settings"
import Cpp_video_playlist 1.0
import QtQml 2.13
Item {
    id:dateandtime
    Video_list
    {
        id:video_song

    }
    Timer
    {
    id:hrs_timer
    running: true
    repeat: true
    interval: 1000
    onTriggered:
    {
    if(video_song.mode=="12hours")
    {
        normal_time.text=video_song.hou
            // normal_time.text=new Date().toLocaleString(Qt.locale(),"hh:mm AP");
            normal_time.visible=true
          time24.visible=false
          hello.visible=false
          console.log("datetime timer 12")

    }
    else  if(video_song.mode=="24hours")
    {
        time24.text= video_song.hou
        hello.visible=false
        time24.visible=true
        normal_time.visible=false
        console.log("datetime timer 24")

    }

    }

    }

    /**************date******************/
    Timer{
        id:date_timer
        running: true
        repeat: true
        interval: 1000
        onTriggered:
        {
        if(video_song.datemode=="dmy")
        {
         date_dmy.text=video_song.dat
          date_dmy.visible=true
          default_date.visible=false
          date_ymd.visible=false
            date_mdy.visible=false
         console.log("date DMY visible in qml")
        }
        else if(video_song.datemode=="ymd")
        {
           date_ymd.text=video_song.dat
             date_ymd.visible=true
           default_date.visible=false
           date_dmy.visible=false
            date_mdy.visible=false
          console.log("date YMD visible in qml")


        }
        else if(video_song.datemode=="mdy")
        {
           date_mdy.text=video_song.dat
             date_mdy.visible=true
           default_date.visible=false
           date_dmy.visible=false
            date_ymd.visible=false
          console.log("date mdy visible in qml")


        }

    }
    }

    Text
    {
        id:hello
        x:162
        y:13
        width: 63
        height: 29
        text:new Date().toLocaleString(Qt.locale(),"hh:mm AP");
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible:true
    }

    Text
    {
        id:normal_time
        x:162
        y:13
        width: 63
        height: 29
        text:""
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible:true

    }

    Text
    {
        id:time24
        x:162
        y:0
        width: 63
        height: 29
        text: ""
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible: true

    }


    Text {
        id: default_date
        x:8
        y:13
        width: 118
        height: 29
        text: new Date().toLocaleString(Qt.locale(),"dd-MMM-yyyy");
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize:22
        font.bold:true
        visible: true
    }


    Text
    {
        id:date_dmy
        x:19
        y:8
        width: 118
        height: 29
        text: ""
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible: true



    }

    Text
    {
        id:date_mdy
        x:13
        y:8
        width: 118
        height: 29
        text: ""
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible: true
    }

    Text
    {
        id:date_ymd
        x:19
        y:8
        width: 118
        height: 29
        text: ""
        color: 'orange'
        font.family:"Helvetica"
        font.pixelSize: 22
        font.bold:true
        visible: true

    }

}



