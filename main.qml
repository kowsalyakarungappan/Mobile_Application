import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.15

Window {
    width: 640
    height: 480
    visible: true
    Rectangle{
        id:outer
        width:200
        radius:20
        border.width: 10
        border.color: "#808080"
        anchors.centerIn: parent
        height:400
        Rectangle{
            id:inner
            anchors.centerIn: outer
            width:190
            radius:15
            height:390
            color:"#ffa500"
            border.width: 5
            border.color:"black"
            Image {
                id:pics
                width:100
                height:100
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectCrop
                source:"scooty.jpg"

                clip:true
            }

            Text{
                id:text1
                text: Qt.formatTime(new Date(),"hh:mm AP")
                font.bold: true
                y:100
                x:45
                //anchors.centerIn:parent
                color: "white"
                font.pixelSize: 24
            }

            Text {
                text:  new Date().toLocaleDateString()
                color: "white"
                x:5
                y:125
                font.pixelSize:15
            }
            SwipeView {
                id:pic
                anchors.fill:parent
                currentIndex:0
                clip:true

                Item {
                    id:first
                    Image{
                        id:pic1
                        source:"you.png"
                        x:25
                        y:250
                        MouseArea{
                            id:mouseArea
                            anchors.fill:parent
                            onClicked: {
                                console.log("Youtube app clicked")
                                source:Qt.openUrlExternally("https://www.youtube.com/" )                          }
                        }
                        states: State {
                            name: "pressed"
                            when: mouseArea.pressed
                            PropertyChanges { target: pic1; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }

                    }

                    Image {
                        id:pic2
                        source:"insta.png"
                        y:250
                        x:80
                        MouseArea{
                            id:mousearea11
                            anchors.fill:parent
                            onClicked:{
                                console.log("Instagram app clicked")
                                source:Qt.openUrlExternally("https://mail.one.com/mail/INBOX/1/")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea11.pressed
                            PropertyChanges { target: pic2; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }

                    }

                    Image{
                        id:pic3
                        source:"Tele.png"
                        y:250
                        x:135
                        MouseArea{
                            id:mousearea10
                            anchors.fill:parent
                            onClicked:{
                                console.log("Telegram app clicked")
                                source:Qt.openUrlExternally("scooty.jpg")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea10.pressed
                            PropertyChanges { target: pic3; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }
                }

                Item {
                    id:pic9
                    Image{
                        id:pic4
                        source:"Face.png"
                        y:250
                        x:25
                        MouseArea{
                            id:mousearea1
                            anchors.fill:parent
                            onClicked:{
                                console.log("Facebook app clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea1.pressed
                            PropertyChanges { target: pic4; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }

                    }
                    Image{
                        id:pic5
                        source:"mess.png"
                        y:250
                        x:80
                        MouseArea{
                            id:mousearea2
                            anchors.fill:parent
                            onClicked:{
                                console.log("Messenger app clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea2.pressed
                            PropertyChanges { target: pic5; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }
                    Image{
                        id:pic6
                        source:"link.png"
                        y:250
                        x:135
                        MouseArea{
                            id:mousearea3
                            anchors.fill:parent
                            onClicked:{
                                console.log("LinkedIn app Clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea3.pressed
                            PropertyChanges { target: pic6; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }
                }

                Item{
                    id:pic10
                    Image{
                        id:pic7
                        source:"twitt.png"
                        y:250
                        x:25
                        MouseArea{
                            id:mousearea4
                            anchors.fill:parent
                            onClicked:{
                                console.log("Twitter app Clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea4.pressed
                            PropertyChanges { target: pic7; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }

                    Image{
                        id:pic8
                        source:"snap.png"
                        y:250
                        x:80
                        MouseArea{
                            id:mousearea5
                            anchors.fill:parent
                            onClicked:{
                                console.log("Snapchat app clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea5.pressed
                            PropertyChanges { target: pic8; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }

                    Image{
                        id:pic0
                        source:"tik.png"
                        y:250
                        x:135
                        MouseArea{
                            id:mousearea6
                            anchors.fill:parent
                            onClicked:{
                                console.log("Tiktok app clicked")
                            }
                        }
                        states: State {
                            name: "pressed"
                            when: mousearea6.pressed
                            PropertyChanges { target: pic0; scale: 0.8 }
                        }
                        transitions: Transition {
                            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                        }
                    }
                }
            }
        }
    }

    PageIndicator {
        id: indicator
        count: pic.count
        currentIndex: pic.currentIndex
        y:500
        anchors.bottom: outer.bottom
        anchors.horizontalCenter: outer.horizontalCenter
    }

    Rectangle{
        id:lock
        width:5
        height:50
        x:217
        radius:5
        y:150
        color:"black"
        MouseArea{
            anchors.fill:parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onDoubleClicked:(mouse) => {
                                if(mouse.button === Qt.RightButton) {
                                    inner.color="#ffa500"
                                }
                            }

            onClicked: (mouse) =>{
                           if(mouse.button === Qt.LeftButton) {
                               inner.color="black"
                           }
                       }
        }
    }

    Slider{
        id:slide
        anchors.topMargin: 20
        rotation:270
        width:100
        height:300
        x:350
        y:30
        visible:false
        from:0
        to:10
        value:0
    }


    Rectangle{
        id:speaker
        width:5
        radius:5
        y:75
        x:418
        height:30
        color:"black"

        MouseArea{
            anchors.fill:parent
            onPressedChanged:{if(pressed){
                    slide.visible=true
                    slide.value+=1
                }
                else{
                    slide.visible=false
                }

            }
        }
    }

    Rectangle {
        id:speaker2
        width:5
        radius:5
        y:115
        x:418
        height:30
        color:"black"
        MouseArea{
            anchors.fill:parent
            onPressedChanged:{if(pressed){
                    slide.visible=true
                    slide.value-=1

                }
                else{
                    slide.visible=false
                }
            }
        }
    }
}
