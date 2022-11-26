import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!

   \qmltype MessiPage
   \brief First section that shows in the HomePage with a button to go to another page

  this the the MessiPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: messiCountryImage
                width: 50
                height: 50
                source: "../../assets/argentina.png"
                fillMode: Image.PreserveAspectCrop
            }

   \endqml


   \section2 Creating ToopTip for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-apptooltip/}{Felgo ToolTip} )

   we use some Felgo components like ToolTip here:

   \qml
            AppToolTip {
               id: messiMathcesTooltip
               target: messiMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: messiModel
                MessiModel{}
            }
   \endqml

*/

Page {
    id: messiPage
    title: "Football Goat"
    backgroundColor: "#151414"

    // messi Image
    Image {
        id: messiImage
        height: 243
        source: "../../assets/messi.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: messiDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            // messi country image
            Image {
                id: messiCountryImage
                width: 50
                height: 50
                source: "../../assets/argentina.png"
                fillMode: Image.PreserveAspectCrop
            }

            // messi name
            Text {
                id: messiName
                color: "#fbf6f6"
                text: qsTr("Lionel Messi")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // messi birthdate
                Text {
                    id: messiBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1987")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // messi country
                Text {
                    id: messiCountry
                    x: 0
                    y: 34
                    color: "#f8f5f5"
                    text: qsTr("Argentina")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: -27
                }
            }
        }

        // card for messi details
        AppCard {
            id: messiDetailsCard
            width: parent.width
            anchors.verticalCenter: messiDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: messiDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Lionel Messi is the greatest football player of all time"
            }
        }

        // card for messi button details
        AppCard {
            id: messiDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: messiDetailsRow.verticalCenter
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

                    // button for show a tooltip for messi goals
                    AppButton {
                        id: messiGoalButton
                        text: "Goal"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: messiGoalTooltip.open()
                        radius: 10
                    }

                    //tooltip for messi goals
                    AppToolTip {
                        id: messiGoalTooltip
                        target: messiGoalButton
                        text: "787"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for messi assist
                    AppButton {
                        id: messiAssistButton
                        text: "Assist"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: messiAssistTooltip.open()
                        radius: 10

                    }

                    //tooltip for messi assist
                    AppToolTip {
                        id: messiAssistTooltip
                        target: messiAssistButton
                        text: "347"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for messi trophy
                    AppButton {
                        id: messiTrophyButton
                        text: "Trophy"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: messiTrophyTooltip.open()
                        radius: 10
                    }

                    //tooltip for messi trophy
                    AppToolTip {
                        id: messiTrophyTooltip
                        target: messiTrophyButton
                        text: "37"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for messi matches
                    AppButton {
                        id: messiMathcesButton
                        text: "Matches"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: messiMathcesTooltip.open()
                        radius: 10
                    }

                    //tooltip for messi matches
                    AppToolTip {
                        id: messiMathcesTooltip
                        target: messiMathcesButton
                        text: "997"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for messi freekicks
                    AppButton {
                        id: messiFreekicksButton
                        text: "Freekicks"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: messiFreekicksTooltip.open()
                        radius: 10
                    }

                    //tooltip for messi freekicks
                    AppToolTip {
                        id: messiFreekicksTooltip
                        target: messiFreekicksButton
                        text: "60"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for messi more details open with modal
                    AppButton {
                        id: messiMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: messiModal.open()
                        radius: 10

                        AppModal {
                            id: messiModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing messi model page
                            MessiModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: messiModal.close()
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

    // component for click a button to go to a specific page (MessiModel)
    Component {
        id: messiModel
        MessiModel{}
    }
}




