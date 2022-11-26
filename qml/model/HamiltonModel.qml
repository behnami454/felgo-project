import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype HamiltonModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the HamiltonModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "Brazil", info: "He has won 3 trophies"},
        {label: "Mexico", info: "He has won 2 trophies"},
        {label: "Abu dahbi", info: "He has won 1 trophies"},
        {label: "Singapore", info: "He has won 4 trophies"},
        {label: "Belguim", info: "He has won 4 trophies"},
        {label: "Japan", info: "He has won 5 trophies"},
        {label: "Bahrain", info: "He has won 3 trophies"},
        {label: "Australia", info: "He has won 2 trophies"},
        {label: "Spain", info: "He has won 6 trophies"},
        {label: "France", info: "He has won 2 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: hamiltonModel.myModel

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

    id: hamiltonModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "Brazil", info: "He has won 3 trophies"},
        {label: "Mexico", info: "He has won 2 trophies"},
        {label: "Abu dahbi", info: "He has won 1 trophies"},
        {label: "Singapore", info: "He has won 4 trophies"},
        {label: "Belguim", info: "He has won 4 trophies"},
        {label: "Japan", info: "He has won 5 trophies"},
        {label: "Bahrain", info: "He has won 3 trophies"},
        {label: "Australia", info: "He has won 2 trophies"},
        {label: "Spain", info: "He has won 6 trophies"},
        {label: "France", info: "He has won 2 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: hamiltonModel.myModel

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
