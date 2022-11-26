import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!

   \qmltype RossiPage
   \brief ANOTHER section that shows in the HomePage with a button to go to another page

  this the the RossiPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: rossiCountryImage
                width: 50
                height: 50
                source: "../../assets/italy.png"
                fillMode: Image.PreserveAspectCrop
            }

   \endqml


   \section2 Creating ToopTip for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-apptooltip/}{Felgo ToolTip} )

   we use some Felgo components like ToolTip here:

   \qml
            AppToolTip {
               id: rossiMathcesTooltip
               target: rossiMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: rossiModel
                RossiModel{}
            }
   \endqml

*/

Page {
    id: rossiPage
    title: "MotoGP Goat"
    backgroundColor: "#151414"

    // rossi Image
    Image {
        id: rossiImage
        height: 243
        source: "../../assets/motogp.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: rossiDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            //rossi country image
            Image {
                id: rossiCountryImage
                width: 50
                height: 50
                source: "../../assets/italy.png"
                fillMode: Image.PreserveAspectCrop
            }

            // rossi name
            Text {
                id: rossiName
                color: "#fbf6f6"
                text: qsTr("Valentino Rossi")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // rossi birthdate
                Text {
                    id: rossiBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1979")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // rossi country
                Text {
                    id: rossiCountry
                    x: 0
                    y: 34
                    color: "#f8f5f5"
                    text: qsTr("Italy")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: -27
                }
            }
        }

        // card for rossi details
        AppCard {
            id: rossiDetailsCard
            width: parent.width
            anchors.verticalCenter: rossiDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: rossiDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Valentino Rossi is the greatest motogp rider of all time"
            }
        }

        // card for rossi button details
        AppCard {
            id: rossiDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: rossiDetailsRow.verticalCenter
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

                    // button for show a tooltip for rossi Champs
                    AppButton {
                        id: rossiChampsButton
                        text: "Champs"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: rossiChampsTooltip.open()
                        radius: 10
                    }

                    //tooltip for rossi Champs
                    AppToolTip {
                        id: rossiChampsTooltip
                        target: rossiChampsButton
                        text: "7"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for rossi Pole
                    AppButton {
                        id: rossiPoleButton
                        text: "Pole"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: rossiPoleTooltip.open()
                        radius: 10

                    }

                    //tooltip for rossi Pole
                    AppToolTip {
                        id: rossiPoleTooltip
                        target: rossiPoleButton
                        text: "55"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for rossi Podium
                    AppButton {
                        id: rossiPodiumButton
                        text: "Podium"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: rossiPodiumTooltip.open()
                        radius: 10
                    }

                    //tooltip for rossi Podium
                    AppToolTip {
                        id: rossiPodiumTooltip
                        target: rossiPodiumButton
                        text: "199"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for rossi matches
                    AppButton {
                        id: rossiMathcesButton
                        text: "Matches"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: rossiMathcesTooltip.open()
                        radius: 10
                    }

                    //tooltip for rossi matches
                    AppToolTip {
                        id: rossiMathcesTooltip
                        target: rossiMathcesButton
                        text: "372"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for rossi Wins
                    AppButton {
                        id: rossiWinsButton
                        text: "Wins"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: rossiWinsTooltip.open()
                        radius: 10
                    }

                    //tooltip for rossi Wins
                    AppToolTip {
                        id: rossiWinsTooltip
                        target: rossiWinsButton
                        text: "60"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for rossi more details open with modal
                    AppButton {
                        id: rossiMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: rossiModal.open()
                        radius: 10

                        AppModal {
                            id: rossiModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing rossi model page
                            RossiModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: rossiModal.close()
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

    // component for click a button to go to a specific page (RossiModel)
    Component {
        id: rossiModel
        RossiModel{}
    }
}




