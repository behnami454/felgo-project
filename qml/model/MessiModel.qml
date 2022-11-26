import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype MessiModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the MessiModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "UCL", info: "He has won 4 trophies"},
        {label: "League", info: "He has won 11 trophies"},
        {label: "Copa America", info: "He has won 1 trophies"},
        {label: "Copa Del Rey", info: "He has won 7 trophies"},
        {label: "Ballon D'or", info: "He has won 7 trophies"},
        {label: "Golden shoe", info: "He has won 6 trophies"},
        {label: "FIFA World Player of the Year", info: "He has won 6 trophies"},
        {label: "Golden boy", info: "He has won 1 trophies"},
        {label: "Pichichi", info: "He has won 8 trophies"},
        {label: "Iffhs", info: "He has won 4 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: messiModel.myModel

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

    id: messiModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "UCL", info: "He has won 4 trophies"},
        {label: "League", info: "He has won 11 trophies"},
        {label: "Copa America", info: "He has won 1 trophies"},
        {label: "Copa Del Rey", info: "He has won 7 trophies"},
        {label: "Ballon D'or", info: "He has won 7 trophies"},
        {label: "Golden shoe", info: "He has won 6 trophies"},
        {label: "FIFA World Player of the Year", info: "He has won 6 trophies"},
        {label: "Golden boy", info: "He has won 1 trophies"},
        {label: "Pichichi", info: "He has won 8 trophies"},
        {label: "Iffhs", info: "He has won 4 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: messiModel.myModel

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
