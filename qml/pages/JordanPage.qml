import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!


   \qmltype JordanPage
   \brief ANOTHER section that shows in the HomePage with a button to go to another page

  this the the JordanPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: jordanCountryImage
                width: 50
                height: 50
                source: "../../assets/usa.png"
                fillMode: Image.PreserveAspectCrop
            }

   \endqml


   \section2 Creating ToopTip for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-apptooltip/}{Felgo ToolTip} )

   we use some Felgo components like ToolTip here:

   \qml
            AppToolTip {
               id: jordanMathcesTooltip
               target: jordanMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: jordanModel
                JordanModel{}
            }
   \endqml

*/

Page {
    id: jordanPage
    title: "Basketball Goat"
    backgroundColor: "#151414"

    // jordan Image
    Image {
        id: jordanImage
        height: 243
        source: "../../assets/jordan.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: jordanDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            //jordan country image
            Image {
                id: jordanCountryImage
                width: 50
                height: 50
                source: "../../assets/usa.png"
                fillMode: Image.PreserveAspectCrop
            }

            // jordan name
            Text {
                id: jordanName
                color: "#fbf6f6"
                text: qsTr("Michael Jordan")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // jordan birthdate
                Text {
                    id: jordanBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1963")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // jordan country
                Text {
                    id: jordanCountry
                    x: 0
                    y: 34
                    color: "#f8f5f5"
                    text: qsTr("United State")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: -27
                }
            }
        }

        // card for jordan details
        AppCard {
            id: jordanDetailsCard
            width: parent.width
            anchors.verticalCenter: jordanDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: jordanDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Michael Jordan is the greatest basketball player of all time"
            }
        }

        // card for jordan button details
        AppCard {
            id: jordanDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: jordanDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -20
            paper.radius: dp(5)

            content:
                Row{
                anchors.horizontalCenter: parent.horizontalCenter

                Column{

                    // button for show a tooltip for jordan Points
                    AppButton {
                        id: jordanPointsButton
                        text: "Points"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: jordanPointsTooltip.open()
                        radius: 10
                    }

                    //tooltip for jordan goals
                    AppToolTip {
                        id: jordanPointsTooltip
                        target: jordanPointsButton
                        text: "32292"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for jordan assist
                    AppButton {
                        id: jordanAssistButton
                        text: "Assist"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: jordanAssistTooltip.open()
                        radius: 10

                    }

                    //tooltip for jordan assist
                    AppToolTip {
                        id: jordanAssistTooltip
                        target: jordanAssistButton
                        text: "5633"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for jordan trophy
                    AppButton {
                        id: jordanTrophyButton
                        text: "Trophy"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: jordanTrophyTooltip.open()
                        radius: 10
                    }

                    //tooltip for jordan trophy
                    AppToolTip {
                        id: jordanTrophyTooltip
                        target: jordanTrophyButton
                        text: "6"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for jordan matches
                    AppButton {
                        id: jordanMathcesButton
                        text: "Matches"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: jordanMathcesTooltip.open()
                        radius: 10
                    }

                    //tooltip for jordan matches
                    AppToolTip {
                        id: jordanMathcesTooltip
                        target: jordanMathcesButton
                        text: "1072"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for jordan Rebound
                    AppButton {
                        id: jordanReboundButton
                        text: "Rebound"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: jordanReboundTooltip.open()
                        radius: 10
                    }

                    //tooltip for jordan Rebound
                    AppToolTip {
                        id: jordanReboundTooltip
                        target: jordanReboundButton
                        text: "6672"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for jordan more details open with modal
                    AppButton {
                        id: jordanMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: jordanModal.open()
                        radius: 10

                        AppModal {
                            id: jordanModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing jordan model page
                            JordanModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: jordanModal.close()
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.bottom: name.bottom
                                anchors.bottomMargin: -80
                            }
                        }
                    }
                }
            }
        }
    }

    // component for click a button to go to a specific page (JordanModel)
    Component {
        id: jordanModel
        JordanModel{}
    }
}




