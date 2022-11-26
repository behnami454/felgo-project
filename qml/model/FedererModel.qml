import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype FedererModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the FedererModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "Grand slam", info: "He has won 20 trophies"},
        {label: "Winblendon", info: "He has won 8 trophies"},
        {label: "Swiss indoors", info: "He has won 10 trophies"},
        {label: "Halle open", info: "He has won 10 trophies"},
        {label: "Olympic", info: "He has won 1 trophies"},
        {label: "Basel", info: "He has won 10 trophies"},
        {label: "Dubai", info: "He has won 9 trophies"},
        {label: "Indian wells", info: "He has won 5 trophies"},
        {label: "Us open", info: "He has won 5 trophies"},
        {label: "Cincinati", info: "He has won 7 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: federerModel.myModel

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

    id: federerModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "Grand slam", info: "He has won 20 trophies"},
        {label: "Winblendon", info: "He has won 8 trophies"},
        {label: "Swiss indoors", info: "He has won 10 trophies"},
        {label: "Halle open", info: "He has won 10 trophies"},
        {label: "Olympic", info: "He has won 1 trophies"},
        {label: "Basel", info: "He has won 10 trophies"},
        {label: "Dubai", info: "He has won 9 trophies"},
        {label: "Indian wells", info: "He has won 5 trophies"},
        {label: "Us open", info: "He has won 5 trophies"},
        {label: "Cincinati", info: "He has won 7 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: federerModel.myModel

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
