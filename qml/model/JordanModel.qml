import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype JordanModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the JordanModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "Olympic", info: "He has won 2 trophies"},
        {label: "NBA Finals MVP", info: "He has won 6 trophies"},
        {label: "NBA Most Valuable Player ", info: "He has won 5 trophies"},
        {label: "NBA All-Star ", info: "He has won 14 trophies"},
        {label: "NBA All-Star Game MVP", info: "He has won 3 trophies"},
        {label: "All-NBA First Team", info: "He has won 10 trophies"},
        {label: "Nba championship", info: "He has won 6 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: jordanModel.myModel

                // shwoing informations
                delegate:
                    AppListItem {
                    backgroundColor: "#151414"
                    text: modelData.label
                    detailText: modelData.info
                }
            }
   \endqml


*/


Page {

    id: jordanModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "Olympic", info: "He has won 2 trophies"},
        {label: "NBA Finals MVP", info: "He has won 6 trophies"},
        {label: "NBA Most Valuable Player ", info: "He has won 5 trophies"},
        {label: "NBA All-Star ", info: "He has won 14 trophies"},
        {label: "NBA All-Star Game MVP", info: "He has won 3 trophies"},
        {label: "All-NBA First Team", info: "He has won 10 trophies"},
        {label: "Nba championship", info: "He has won 6 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: jordanModel.myModel

                // shwoing informations
                delegate:
                    AppListItem {
                    backgroundColor: "#151414"
                    text: modelData.label
                    detailText: modelData.info
                }
            }
        }
    }
}
