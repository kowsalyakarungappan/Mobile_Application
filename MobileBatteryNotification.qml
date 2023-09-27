import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQml 2.3
import QtQuick.Controls 2.5
//import QtGraphicalEffects 1.15

Rectangle   {
    //anchors.verticalCenter: parent.verticalCenter
    x:145
    y:2
    property int mobileBatteryNotification: 20
    property bool notificationBatteryChargingStatus: true
    property int  speedWidget_VALUE: 70
    width: 50
    height: 50
    color: "#00000000"
    Image   {
        width:10
        height:15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "NotificationBatteryIcon.svg"
    }
    Rectangle   {
        id: battery_Fill
        width: 1
        height: 29
        anchors.horizontalCenter: parent.horizontalCenter
        y: 8
        color: "#00000000"
        Rectangle   {
            width: 10
            height: battery_Fill.height * ((speedWidget_VALUE/2)/100)
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            color: "#ffffff"
        }
    }
}
