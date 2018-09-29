import QtQuick 2.0
import  "../../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2   

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Elemento QML</b><br><b>Item{}</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //2
    Column{
        id:x2
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML - Elemento Item</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Text{
            text:'import QtQuick 2.0\nItem{}\n'
            font.pixelSize: app.fs
            color: app.c2
        }
    }

    /*Column{
        id:x2
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML - Elemento Item</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Item{
            width: parent.width-app.fs*6
            height: r.height-app.fs*3
            Marco{
                id:mm0
                opacity: 0.0
                Behavior on opacity{NumberAnimation{duration:500}}
                Text{
                    text:'<b>DECLARATIVO</b>'
                    font.pixelSize: app.fs
                    color: app.c2
                    anchors.right: parent.right
                    anchors.rightMargin: app.fs*0.5
                    anchors.top: parent.top
                    anchors.topMargin: app.fs*0.5
                }
            }
            Column{
                id:colc1
                spacing: app.fs*0.5
                Text{
                    text:'import QtQuick 2.0\nWindow{\n         width:300\n         height:300'
                    font.pixelSize: app.fs
                    color: app.c2
                }
                Text{
                    text:'function miFuncionJavaScript(){\n           console.log(\'Hola JavaScript en QML!\')\n}'
                    font.pixelSize: app.fs
                    color: 'red'
                    anchors.left: parent.left
                    anchors.leftMargin: app.fs*3
                    Marco{
                        id:mm1
                        opacity: 0.0
                        padding:app.fs*0.2
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:'<b>IMPERATIVO</b>'
                            font.pixelSize: app.fs
                            color: 'red'
                            anchors.right:  parent.right
                            anchors.rightMargin: app.fs*0.5
                            anchors.top: parent.bottom
                            anchors.bottomMargin: app.fs*0.5
                        }
                    }
                }
                Text{
                    text:'}\n'
                    font.pixelSize: app.fs
                    color: app.c2
                }
            }
        }
    }
*/


    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0
            x2.opacity=app.p(6, 30)?1.0:0.0

        }
    }

    Component.onCompleted: {
        var at='
        Elemento QML Item


Este elemento llamado Item es el elemento principal de QML. Es muy importante conocer cuales son sus caracterìsticas y propiedades porque es el elemento base del cuàl provienen o derivan casi todos los elementos en QML.

Como QML es un lenguaje de programaciòn Orientado a Objetos, en este contexto debemos recordar siempre que todos los elementos QML que hayan sido creados utilizando este elemento Item como base principal, esto significa que dichos elementos heredan propiedades y caracterìsticas del elemente Item.

'
        //Pr
        at+='Elemento Item'
        //Req
        at+='Para utilizar este elemento '
        //Q
        at+='Es un elemento posicionador y contenedor'
        //Car
        at+='Sus principales caracterìsticas son ejes de posicionamiento x e y, ancho, alto, opacidad y visible.'
        //PQ
        at+='Este elemento nos permite '
        //Co
        at+=''
        //Cu
        at+=''
        //Ie
        at+=''
        xT.at=at.replace(/\n/g, ' ')
    }
}
