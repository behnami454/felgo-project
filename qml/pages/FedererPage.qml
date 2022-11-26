import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!

   \qmltype FedererPage
   \brief ANOTHER section that shows in the HomePage with a button to go to another page

  this the the FedererPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: federerCountryImage
                width: 50
                height: 50
                source: "../../assets/swiss.png"
                fillMode: Image.PreserveAspectCrop
            }

   \endqml


   \section2 Creating ToopTip for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-apptooltip/}{Felgo ToolTip} )

   we use some Felgo components like ToolTip here:

   \qml
            AppToolTip {
               id: federerMathcesTooltip
               target: federerMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: federerModel
                FedererModel{}
            }
   \endqml

*/

Page {
    id: federerPage
    title: "Tennis Goat"
    backgroundColor: "#151414"

    // federer Image
    Image {
        id: federerImage
        height: 243
        source: "../../assets/federer.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: federerDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            // federer country image
            Image {
                id: federerCountryImage
                width: 50
                height: 50
                source: "../../assets/swiss.png"
                fillMode: Image.PreserveAspectCrop
            }

            // federer name
            Text {
                id: federerName
                color: "#fbf6f6"
                text: qsTr("Roger Federer")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // federer birthdate
                Text {
                    id: federerBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1981")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // federer country
                Text {
                    id: federerCountry
                    x: 0
                    y: 34
                    color: "#f8f5f5"
                    text: qsTr("Switzerland")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: -27
                }
            }
        }

        // card for federer details
        AppCard {
            id: federerDetailsCard
            width: parent.width
            anchors.verticalCenter: federerDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: federerDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Roger Federer is the greatest tennis player of all time"
            }
        }

        // card for federer button details
        AppCard {
            id: federerDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: federerDetailsRow.verticalCenter
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

                    // button for show a tooltip for federer seasons
                    AppButton {
                        id: federerSeasonsButton
                        text: "Seasons"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: federerSeasonsTooltip.open()
                        radius: 10
                    }

                    //tooltip for federer seasons
                    AppToolTip {
                        id: federerSeasonsTooltip
                        target: federerSeasonsButton
                        text: "24"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for federer titles
                    AppButton {
                        id: federerTitlesButton
                        text: "Titels"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: federerTitlesTooltip.open()
                        radius: 10

                    }

                    //tooltip for federer titles
                    AppToolTip {
                        id: federerTitlesTooltip
                        target: federerTitlesButton
                        text: "103"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for federer no.1
                    AppButton {
                        id: federerNo1Button
                        text: "No.1"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: federerNo1Tooltip.open()
                        radius: 10
                    }

                    //tooltip for federer no.1
                    AppToolTip {
                        id: federerNo1Tooltip
                        target: federerNo1Button
                        text: "310"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for federer finals
                    AppButton {
                        id: federerFinalsButton
                        text: "Finals"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: federerFinalsTooltip.open()
                        radius: 10
                    }

                    //tooltip for federer finals
                    AppToolTip {
                        id: federerFinalsTooltip
                        target: federerFinalsButton
                        text: "157"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for federer wins
                    AppButton {
                        id: federerWinsButton
                        text: "Wins"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: federerWinsTooltip.open()
                        radius: 10
                    }

                    //tooltip for federer wins
                    AppToolTip {
                        id: federerWinsTooltip
                        target: federerWinsButton
                        text: "81%"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for federer more details open with modal
                    AppButton {
                        id: federerMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: federerModal.open()
                        radius: 10

                        AppModal {
                            id: federerModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing federer model page
                            FedererModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: federerModal.close()
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

    // component for click a button to go to a specific page (FedererModel)
    Component {
        id: federerModel
        FedererModel{}
    }
}




