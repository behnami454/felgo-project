import Felgo 3.0
import QtQuick 2.0

/*!
   \qmltype Main
   \brief First Page that shows in the MainPage so basically this is the page we see at first



  this the the HomePage

   \section1 Creating Grid for this page (which you can check the all details here \l {https://felgo.com/doc/qt/qml-qtquick-grid/} {Felgo Grid} )

   we use some Felgo components like Grid and Column and Row:

   \qml
            Grid {
                id: grid
                width: 400
                height: 400
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 42
                anchors.horizontalCenterOffset: 80
                anchors.horizontalCenter: parent.horizontalCenter
                z: 10
                rotation: 0
                rows: 4
                state: ""
                clip: false
                spacing: 38
                columns: 2
              }

   \endqml

   \section2 Creating AppButton for this page (which you can check the all details here \l {https://felgo.com/doc/felgo-appbutton/}{Felgo AppButton} )

   we use some Felgo components like Grid here:

   \qml
             AppButton {
                text: "Tennis"
                onClicked: mainPage.navigationStack.push(federerPage)
                borderColor: "white"
                textColor: "white"
                radius: 10
                backgroundColor: "#4b0404"
                flat: false
                rotation: 8.25
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: -20
                y: -2

                 }

   \endqml


   \section3 Component for going to another page

   we use some Felgo components lto going to another page by refernce the id the component in Onclick in AppButton:

   \qml
    Component {
        id: rossiPage
        RossiPage{}
    }

   \endqml




*/


Page {

    id: homePage

    NavigationStack {
        id: navigationStack
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.bottom: parent.bottom

        Page {
            id: mainPage
            backgroundColor: "#151414"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: parent.bottom
            title: "Home"


            // Home Page main grid
            Grid {
                id: grid
                width: 400
                height: 400
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 42
                anchors.horizontalCenterOffset: 80
                anchors.horizontalCenter: parent.horizontalCenter
                z: 10
                rotation: 0
                rows: 4
                state: ""
                clip: false
                spacing: 38
                columns: 2

                // football Image
                Image {
                    id: footballImage
                    width: 100
                    height: 100
                    visible: true
                    source: "../../assets/football.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (MessiPage)
                    AppButton {
                        text: "Football"
                        onClicked: mainPage.navigationStack.push(messiPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2

                    }
                }

                // basketball Image
                Image {
                    id: basketballImage
                    width: 100
                    height: 100
                    source: "../../assets/basketball.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (JordanPage)
                    AppButton {
                        text: "Basketball"
                        onClicked: mainPage.navigationStack.push(jordanPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2
                    }
                }

                // tennis Image
                Image {
                    id: tennisImage
                    width: 100
                    height: 100
                    source: "../../assets/tennis.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (FedererPage)
                    AppButton {
                        text: "Tennis"
                        onClicked: mainPage.navigationStack.push(federerPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2
                    }
                }

                // f1 Image
                Image {
                    id: f1Image
                    width: 100
                    height: 100
                    source: "../../assets/f1.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (HamiltonPage)
                    AppButton {
                        text: "F1"
                        onClicked: mainPage.navigationStack.push(hamiltonPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2
                    }
                }

                // motogp Image
                Image {
                    id: motogpImage
                    width: 100
                    height: 100
                    source: "../../assets/motogp.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (RossiPage)
                    AppButton {
                        text: "MotoGP"
                        onClicked: mainPage.navigationStack.push(rossiPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2
                    }
                }

                // swim Image
                Image {
                    id: swimImage
                    width: 100
                    height: 100
                    source: "../../assets/swim.jpeg"
                    fillMode: Image.PreserveAspectFit

                    // button for click to go to (PhelpsPage)
                    AppButton {
                        text: "Swim"
                        onClicked: mainPage.navigationStack.push(phelpsPage)
                        borderColor: "white"
                        textColor: "white"
                        radius: 10
                        backgroundColor: "#4b0404"
                        flat: false
                        rotation: 8.25
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin: -20
                        y: -2
                    }
                }
            }

            // main page title
            Text {
                id: theGoatsText
                width: 23
                color: "#fdfbfb"
                text: qsTr("The GOATs")
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: -2
                font.italic: true
                font.family: "Tahoma"
                anchors.topMargin: 85
                anchors.bottomMargin: -140
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

    }

    // component for click a button to go to a specific page (MessiPage)
    Component {
        id: messiPage
        MessiPage{}
    }

    // component for click a button to go to a specific page (RossiPage)
    Component {
        id: rossiPage
        RossiPage{}
    }

    // component for click a button to go to a specific page (HamiltonPage)
    Component {
        id: hamiltonPage
        HamiltonPage{}
    }

    // component for click a button to go to a specific page (PhelpsPage)
    Component {
        id: phelpsPage
        PhelpsPage{}
    }

    // component for click a button to go to a specific page (JordanPage)
    Component {
        id: jordanPage
        JordanPage{}
    }

    // component for click a button to go to a specific page (FedererPage)
    Component {
        id: federerPage
        FedererPage{}
    }
}
