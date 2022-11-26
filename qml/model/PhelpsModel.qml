import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype PhelpsModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the PhelpsModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "Olympic gold", info: "He has won 23 trophies"},
        {label: "Olympic silver", info: "He has won 3 trophies"},
        {label: "Olympic bronze", info: "He has won 2 trophies"},
        {label: "All medals", info: "He has won 82 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: phelpsModel.myModel

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

    id: phelpsModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "Olympic gold", info: "He has won 23 trophies"},
        {label: "Olympic silver", info: "He has won 3 trophies"},
        {label: "Olympic bronze", info: "He has won 2 trophies"},
        {label: "All medals", info: "He has won 82 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: phelpsModel.myModel

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
