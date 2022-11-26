import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!

   \qmltype HamiltonPage
   \brief ANOTHER section that shows in the HomePage with a button to go to another page

  this the the HamiltionPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: hamiltionCountryImage
                width: 50
                height: 50
                source: "../../assets/england.png"
                fillMode: Image.PreserveAspectCrop
            }

   \endqml


   \section2 Creating ToopTip for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-apptooltip/}{Felgo ToolTip} )

   we use some Felgo components like ToolTip here:

   \qml
            AppToolTip {
               id: hamiltionMathcesTooltip
               target: hamiltionMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: hamiltonModel
                HamiltionModel{}
            }
   \endqml

*/

Page {
    id: hamiltonPage
    title: "F1 Goat"
    backgroundColor: "#151414"

    // hamilton Image
    Image {
        id: hamiltonImage
        height: 243
        source: "../../assets/hamilton.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: hamiltonDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            //hamilton country image
            Image {
                id: hamiltonCountryImage
                width: 50
                height: 50
                source: "../../assets/england.png"
                fillMode: Image.PreserveAspectCrop
            }

            // hamilton name
            Text {
                id: hamiltonName
                color: "#fbf6f6"
                text: qsTr("Lewis Hamilton")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // hamilton birthdate
                Text {
                    id: hamiltonBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1985")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // hamilton country
                Text {
                    id: hamiltonCountry
                    x: 0
                    y: 34
                    color: "#f8f5f5"
                    text: qsTr("England")
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: -27
                }
            }
        }

        // card for hamilton details
        AppCard {
            id: hamiltonDetailsCard
            width: parent.width
            anchors.verticalCenter: hamiltonDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: hamiltonDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Lewis Hamilton is the greatest football player of all time"
            }
        }

        // card for hamilton button details
        AppCard {
            id: hamiltonDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: hamiltonDetailsRow.verticalCenter
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

                    // button for show a tooltip for hamilton Matches
                    AppButton {
                        id: hamiltonMatchesButton
                        text: "Matches"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: hamiltonMatchesTooltip.open()
                        radius: 10
                    }

                    //tooltip for hamilton Matches
                    AppToolTip {
                        id: hamiltonMatchesTooltip
                        target: hamiltonMatchesButton
                        text: "310"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for hamilton Champions
                    AppButton {
                        id: hamiltonChampionsButton
                        text: "Champs"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: hamiltonChampionsTooltip.open()
                        radius: 10

                    }

                    //tooltip for hamilton Champions
                    AppToolTip {
                        id: hamiltonChampionsTooltip
                        target: hamiltonChampionsButton
                        text: "7"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for hamilton Podiums
                    AppButton {
                        id: hamiltonPodiumsButton
                        text: "Podiums"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: hamiltonPodiumsTooltip.open()
                        radius: 10
                    }

                    //tooltip for hamilton Podiums
                    AppToolTip {
                        id: hamiltonPodiumsTooltip
                        target: hamiltonPodiumsButton
                        text: "191"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for hamilton Pole
                    AppButton {
                        id: hamiltonPoleButton
                        text: "Matches"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: hamiltonPoleTooltip.open()
                        radius: 10
                    }

                    //tooltip for hamilton Pole
                    AppToolTip {
                        id: hamiltonPoleTooltip
                        target: hamiltonPoleButton
                        text: "103"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for hamilton Points
                    AppButton {
                        id: hamiltonPointsButton
                        text: "Points"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: hamiltonPointsTooltip.open()
                        radius: 10
                    }

                    //tooltip for hamilton Points
                    AppToolTip {
                        id: hamiltonPointsTooltip
                        target: hamiltonPointsButton
                        text: "4405"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for hamilton more details open with modal
                    AppButton {
                        id: hamiltonMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: hamiltonModal.open()
                        radius: 10

                        AppModal {
                            id: hamiltonModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing hamilton model page
                            HamiltonModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: hamiltonModal.close()
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

    // component for click a button to go to a specific page (HamiltonModel)
    Component {
        id: hamiltonModel
        HamiltonModel{}
    }
}




