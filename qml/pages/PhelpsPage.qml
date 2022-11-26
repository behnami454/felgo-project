import QtQuick 2.0
import Felgo 3.0
import "../model"

/*!

   \qmltype PhelpsPage
   \brief ANOTHER section that shows in the HomePage with a button to go to another page

  this the the PhelpsPage



   \section1 Creating Image for this page (which you can check the all details here \l {https://felgo.com/doc/apps-howto-display-images-and-photos/} {Felgo Image} )

   we use some Felgo components like Image:

   \qml
            Image {
                id: PhelpsCountryImage
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
               id: phelpsMathcesTooltip
               target: phelpsMathcesButton
               text: "997"
               backgroundColor: "black"
               color: "white"
             }
   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
            Component {
                id: phelpsModel
                PhelpsModel{}
            }
   \endqml

*/

Page {
    id: phelpsPage
    title: "Swim Goat"
    backgroundColor: "#151414"

    // phelps Image
    Image {
        id: phelpsImage
        height: 243
        source: "../../assets/phelps.jpeg"
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 45
        anchors.rightMargin: 40
        anchors.bottomMargin: 5

        // row for showing name and country and birthdate
        Row {
            id: phelpsDetailsRow
            y: 241
            width: 200
            height: 159
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            //phelps country image
            Image {
                id: phelpsCountryImage
                width: 50
                height: 50
                source: "../../assets/usa.png"
                fillMode: Image.PreserveAspectCrop
            }

            // phelps name
            Text {
                id: phelpsName
                color: "#fbf6f6"
                text: qsTr("Michael Phelps")
                anchors.right: parent.right
                font.pixelSize: 18
                anchors.rightMargin: 70
                font.italic: true
                font.family: "Tahoma"
                anchors.horizontalCenter: parent.horizontalCenter

                // phelps birthdate
                Text {
                    id: phelpsBirthdate
                    color: "#f8f5f5"
                    text: qsTr("1985")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    anchors.bottomMargin: 20
                }

                // phelps country
                Text {
                    id: phelpsCountry
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

        // card for phelps details
        AppCard {
            id: phelpsDetailsCard
            width: parent.width
            anchors.verticalCenter: phelpsDetailsRow.verticalCenter
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            paper.background.color: "#181717"
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: -100
            paper.radius: dp(5)

            content:
                AppText{
                anchors.topMargin: 20
                id: phelpsDetailsCardContent
                width: parent.width
                padding: dp(15)
                text: "Michael Phelps is the greatest Swimmer of all time"
            }
        }

        // card for phelps button details
        AppCard {
            id: phelpsDetailsCardButtons
            width: parent.width
            anchors.verticalCenter: phelpsDetailsRow.verticalCenter
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

                    // button for show a tooltip for phelps Gold
                    AppButton {
                        id: phelpsGoldButton
                        text: "Gold"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: phelpsGoldTooltip.open()
                        radius: 10
                    }

                    //tooltip for phelps gold
                    AppToolTip {
                        id: phelpsGoldTooltip
                        target: phelpsGoldButton
                        text: "23"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for phelps silver
                    AppButton {
                        id: phelpsSilverButton
                        text: "Silver"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: phelpsSilverTooltip.open()
                        radius: 10

                    }

                    //tooltip for phelps silver
                    AppToolTip {
                        id: phelpsSilverTooltip
                        target: phelpsSilverButton
                        text: "3"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for phelps Bronze
                    AppButton {
                        id: phelpsBronzeButton
                        text: "Bronze"
                        flat: flase
                        anchors.topMargin: 20
                        onClicked: phelpsBronzeTooltip.open()
                        radius: 10
                    }

                    //tooltip for phelps Bronze
                    AppToolTip {
                        id: phelpsBronzeTooltip
                        target: phelpsBronzeButton
                        text: "2"
                        backgroundColor: "black"
                        color: "white"
                    }
                }

                Column{

                    // button for show a tooltip for phelps Medals
                    AppButton {
                        id: phelpsMedalsButton
                        text: "Medals"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: phelpsMedalsTooltip.open()
                        radius: 10
                    }

                    //tooltip for phelps Medals
                    AppToolTip {
                        id: phelpsMedalsTooltip
                        target: phelpsMedalsButton
                        text: "82"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for phelps Olympic
                    AppButton {
                        id: phelpsOlympicButton
                        text: "Olympic"
                        anchors.topMargin: 20
                        flat: false
                        onClicked: phelpsOlympicTooltip.open()
                        radius: 10
                    }

                    //tooltip for phelps Olympic
                    AppToolTip {
                        id: phelpsOlympicTooltip
                        target: phelpsOlympicButton
                        text: "5"
                        backgroundColor: "black"
                        color: "white"
                    }

                    // button for show a tooltip for phelps more details open with modal
                    AppButton {
                        id: phelpsMoreButton
                        text: "more"
                        flat: false
                        anchors.topMargin: 20
                        onClicked: phelpsModal.open()
                        radius: 10

                        AppModal {
                            id: phelpsModal
                            // modal contents
                            pushBackContent: navigationStack
                            backgroundColor: "#151414"

                            // showing phelps model page
                            PhelpsModel{}

                            // modal close button
                            AppButton {
                                text: "Close"
                                onClicked: phelpsModal.close()
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

    // component for click a button to go to a specific page (PhelpsModel)
    Component {
        id: phelpsModel
        PhelpsModel{}
    }
}




