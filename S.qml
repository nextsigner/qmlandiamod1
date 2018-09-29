import QtQuick 2.0
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    onVisibleChanged: {
        if(visible){
            app.mp.source="./a1.m4a"
            app.pa=pa
        }
    }

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Caracterìsticas</b><br><b>Tècnicas</b><br><b>de QML</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //bgx2
    Grid{
        id:bgx2
        anchors.centerIn: r
        columns: 30
        spacing: app.fs*0.5
        visible:x2.opacity>0.0&&x3.opacity<1.0
        SequentialAnimation{
            running:bgx2.visible&&x3.opacity<1.0
            loops: Animation.Infinite
            NumberAnimation {
                target: bgx2
                from:0.25
                to:0.65
                property: "opacity"
                duration: 1500
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: bgx2
                from:0.65
                to:0.25
                property: "opacity"
                duration: 1500
                easing.type: Easing.InOutQuad
            }
        }
        Repeater{
            model:300
            Item{
                id:xbg
                width: children[0].contentWidth
                height: app.fs*1.4
                Text{
                    text:'<b>¿ ?</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                }
                Component.onCompleted: {
                    var a =   Math.floor((Math.random()*index));
                    xbg.rotation=a
                }
            }
        }
    }

    //2
    Grid{
        id:x2
        anchors.centerIn: r
        columns: 3
        spacing: app.fs*0.5
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["Declarativo", "Imperativo", "Reactivo", "Señales", "Ranuras", "Otras"]
            Rectangle{
                width: app.fs*10
                height: app.fs*1.4
                color:app.c3
                border.width: 2
                border.color: app.c2
                Text{
                    text:'<b>'+modelData+'</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                }
                Item{
                    width: 2
                    height: app.fs*20
                    anchors.centerIn: parent
                    Rectangle{
                        visible:index<=2
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.bottom: parent.verticalCenter
                        anchors.bottomMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                    Rectangle{
                        visible:index>2
                        width: parent.width
                        height: parent.parent.color===app.c3?0:parent.height/2
                        anchors.top: parent.verticalCenter
                        anchors.topMargin: parent.parent.height/2
                        color:app.c2
                        Behavior on height{NumberAnimation{duration:500}}
                    }
                }
            }
        }
    }

    //3
    Text{
        id:x3
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Tranquilos!</b>'
        anchors.horizontalCenter: r.horizontalCenter
        anchors.top: r.top
        anchors.topMargin: app.fs
        font.pixelSize: app.fs*3
        color: app.c2
    }


    //4
    Column{
        id:x4
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>QML</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            id:txt1
            text:'<b>DECLARATIVO</b>'
            font.pixelSize: app.fs*3
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
            Behavior on opacity{NumberAnimation{duration:500}}
        }
        Text{
            id:txt2
            text:'<b>Basado en JavaScript</b>'
            font.pixelSize: app.fs
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            anchors.horizontalCenter: parent.horizontalCenter
            Behavior on opacity{NumberAnimation{duration:500}}
        }
    }


    //5
    Text{
        id:x5
        text:'<b>DECLARATIVO e IMPERATIVO</b>'
        font.pixelSize: app.fs*2
        color: app.c2
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
    }

    //6
    Row{
        id:x6
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            spacing: app.fs
            Text{
                text:'<b>DECLARATIVO</b>'
                font.pixelSize: app.fs*2
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Item{
                width: app.fs*10
                height: app.fs*6
                anchors.horizontalCenter: parent.horizontalCenter
                Marco{}
                Text{
                    width: parent.width
                    wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                    text:'Para resolver\nproblemas o alcanzar\nobjetivos pre\nexistentes'
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                    horizontalAlignment: Text.AlignHCenter
                    textFormat: Text.RichText
                }
            }
        }
        Column{
            spacing: app.fs
            Text{
                text:'<b>IMPERATIVO</b>'
                font.pixelSize: app.fs*2
                color: app.c2
                font.family: 'FontAwesome'
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.RichText
            }
            Item{
                width: app.fs*10
                height: app.fs*6
                anchors.horizontalCenter: parent.horizontalCenter
                Marco{}
                Text{
                    width: parent.width
                    wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                    text:'Para resolver\nproblemas o alcanzar\nobjetivos nuevos\no que nadie\nha tenido.'
                    font.pixelSize: app.fs
                    color: app.c2
                    font.family: 'FontAwesome'
                    horizontalAlignment: Text.AlignHCenter
                    textFormat: Text.RichText
                }
            }
        }

    }

    //7
    Item{
        id:x7
        anchors.centerIn: r
        opacity: 0.0
        width:app.fs*8
        height:width
        property string s1
        property string s2
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            id:txtT1
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.top
            anchors.bottomMargin: app.fs
            horizontalAlignment: Text.AlignHCenter
        }
        Marco{
            clip:true
            Text{
                id:txtCE
                font.pixelSize: app.fs*0.5
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width*0.8
            }
        }
        Column{
            anchors.centerIn: parent
            Text{
                id:txtr1
                text:'<b>NO ESTA DISPONIBLE!</b>'
                font.pixelSize: app.fs*2
                color: 'red'
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text{
                id:txtr2
                text:'<b>NO ES DE USO LIBRE!</b>'
                font.pixelSize: app.fs*2
                color: 'red'
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text{
                id:txtr3
                text:'<b>DEBES PAGAR LICENCIA!</b>'
                font.pixelSize: app.fs*2
                color: 'red'
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    //8
    Row{
        id:x8
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>IMPERATIVO</b>'
            font.pixelSize: app.fs*2
            color: app.c2
            font.family: 'FontAwesome'
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
        }
    }

    //9
    Column{
        id:x9
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["C++", "JavaScript", "PHP"]
            Text{
                text:'<b>'+modelData+'</b>'
                font.pixelSize: fs
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                property int fs: app.fs*3
                Behavior on fs{NumberAnimation{duration:500}}
            }
        }
    }

    //10
    Column{
        id:x10
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["QML", "SQL", "HTML", "XSL"]
            Text{
                text:'<b>'+modelData+'</b>'
                font.pixelSize: fs
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                property int fs: app.fs*3
                Behavior on fs{NumberAnimation{duration:500}}
            }
        }
    }

    //11
    Row{
        id:x11
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            spacing: app.fs
            width: app.fs*10
            Text{
                text:'<b>Codigo con Lenguaje Imperativo</b>'
                font.pixelSize: parent.width*0.1
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item{
                width: app.fs*10
                height: app.fs*8
                Marco{
                    Text{
                        text:'<b>Creados desde Cero</b>'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        anchors.left: parent.left
                        anchors.leftMargin: app.fs*0.5
                        anchors.top: parent.top
                        anchors.topMargin: app.fs*0.5
                    }
                    Column{
                        anchors.centerIn: parent
                        spacing: app.fs*0.5
                        Repeater{
                            model:["Objetos", "Funciones", "Datos", "Recursos"]
                            Text{
                                text:'<b>'+modelData+'</b>'
                                font.pixelSize: parent.parent.width*0.07
                                color: app.c2
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                }
            }
        }
        Text{
            text:'ordenes \uf061'
            font.family: 'FontAwesome'
            font.pixelSize: app.fs
            color: app.c2
            anchors.verticalCenter: parent.verticalCenter
        }
        Column{
            width: app.fs*10
            spacing: app.fs
            Text{
                text:'<b>Problemas u Objetivos</b><br><b>Comunes o Atìpicos</b>'
                font.pixelSize: app.fs*0.65
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item{
                width: app.fs*10
                height: app.fs*6
                Marco{}
                Text{
                    text:'<b>* Dispositivo</b><br><b>* Ordenador</b><br><b>* Computadora</b><br><b>* Otros...</b><br>'
                    font.pixelSize:  parent.width*0.05
                    color: app.c2
                    anchors.centerIn: parent
                }
            }
        }
    }

    //12
    Row{
        id:x12
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Column{
            spacing: app.fs
            width: app.fs*10
            Text{
                text:'<b>Codigo con Lenguaje Declarativo</b>'
                font.pixelSize: parent.width*0.1
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item{
                width: app.fs*10
                height: app.fs*8
                Marco{
                    Text{
                        text:'<b>Pre Programados</b>'
                        font.pixelSize: app.fs*0.5
                        color: app.c2
                        anchors.left: parent.left
                        anchors.leftMargin: app.fs*0.5
                        anchors.top: parent.top
                        anchors.topMargin: app.fs*0.5
                    }
                    Column{
                        anchors.centerIn: parent
                        spacing: app.fs*0.5
                        Repeater{
                            model:["Objetos", "Funciones", "Datos", "Recursos"]
                            Text{
                                text:'<b>'+modelData+'</b>'
                                font.pixelSize: parent.parent.width*0.07
                                color: app.c2
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                }
            }
        }
        Text{
            text:'ordenes \uf061'
            font.family: 'FontAwesome'
            font.pixelSize: app.fs
            color: app.c2
            anchors.verticalCenter: parent.verticalCenter
        }
        Column{
            width: app.fs*10
            spacing: app.fs
            anchors.bottom: parent.bottom
            Text{
                text:'<b>Problemas u Objetivos</b><br><b>Comunes o Pre existentes</b>'
                font.pixelSize: app.fs*0.65
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item{
                width: app.fs*10
                height: app.fs*6
                Marco{}
                Text{
                    text:'<b>* Dispositivo</b><br><b>* Ordenador</b><br><b>* Computadora</b><br><b>* Otros...</b><br>'
                    font.pixelSize:  app.fs*0.5
                    color: app.c2
                    anchors.centerIn: parent
                }
            }
        }
    }

    //13
    Row{
        id:x13
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Declaraciòn de</b><br><b>Objeto o Elemento</b>'
            font.pixelSize: app.fs*3
            color: app.c2
        }
    }


    //14
    Column{
        id:x14
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML</b>'
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

    //15
    Column{
        id:x15
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["ESTADOS", "ANIMACIÒN", "CONTROLADOR\nSEÑAL", "Otras"]
            Text{
                text:'<b>'+modelData+'</b>'
                font.pixelSize: fs
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                property int fs: app.fs*3
                Behavior on fs{NumberAnimation{duration:500}}
            }
        }
    }

    //16
    Column{
        id:x16
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["ASOCIA", "VINCULA", "CONECTA", "INTEGRA"]
            Text{
                text:'<b>'+modelData+'</b>'
                font.pixelSize: fs
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                property int fs: app.fs*3
                Behavior on fs{NumberAnimation{duration:500}}
            }
        }
    }

    //17
    Text{
        id:x17
        text:'<b>C++</b>'
        font.pixelSize: app.fs*3
        color: app.c2
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
    }

    //18
    Text{
        id:x18
        font.pixelSize: app.fs*3
        color: app.c2
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
    }
    //19
    Text{
        id:x19
        font.pixelSize: app.fs*3
        color: app.c2
        anchors.centerIn: r
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
    }

    //20
    Column{
        id:x20
        width: r.width-app.fs
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Text{
            text:'<b>Còdigo QML</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Item{
            width: parent.width-app.fs*6
            height: r.height-app.fs*3
            Marco{
                id:mm3
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
                id:colc3
                spacing: app.fs*0.5
                Text{
                    text:'import QtQuick 2.0\nWindow{\n         id:app\n         width:300'
                    font.pixelSize: app.fs
                    color: app.c2
                }
                Text{
                    text:'         height:altura()'
                    font.pixelSize: app.fs
                    color: 'red'
                    Marco{
                        id:mm4
                        opacity: 0.0
                        padding:app.fs*0.2
                        Behavior on opacity{NumberAnimation{duration:500}}
                        Text{
                            text:'<b>Propiedad Vinculada</b><br><b>Valor Dinàmico</b>'
                            font.pixelSize: app.fs*0.5
                            color: app.c2
                            anchors.left:  parent.right
                            anchors.leftMargin:  app.fs*0.5
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
                Text{
                    text:'function altura(){\n           return app.width/2\n}'
                    font.pixelSize: app.fs
                    color: 'red'
                    anchors.left: parent.left
                    anchors.leftMargin: app.fs*3
                }
                Text{
                    text:'}\n'
                    font.pixelSize: app.fs
                    color: app.c2
                }
            }
        }
    }

    //21
    Column{
        id:x21
        anchors.centerIn: r
        opacity: 0.0
        spacing: app.fs
        Behavior on opacity{NumberAnimation{duration:500}}
        Repeater{
            model:["DECLARATIVO", "IMPERATIVO", "REACTIVO"]
            Text{
                text:'<b>'+modelData+'</b>'
                font.pixelSize: fs
                color: app.c2
                anchors.horizontalCenter: parent.horizontalCenter
                property int fs: app.fs*3
                Behavior on fs{NumberAnimation{duration:500}}
            }
        }
    }

    Xa{id:xa}
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            x1.opacity=app.p(0, 6)?1.0:0.0

            x2.opacity=app.p(6, 70)?1.0:0.0
            //Declarativo
            x2.children[0].color=app.p(19, 70)?app.c2:app.c3
            x2.children[0].children[0].color=app.p(19, 70)?app.c3:app.c2
            //Declarativo
            x2.children[1].color=app.p(21, 70)?app.c2:app.c3
            x2.children[1].children[0].color=app.p(21, 70)?app.c3:app.c2
            //Reactivo
            x2.children[2].color=app.p(23, 70)?app.c2:app.c3
            x2.children[2].children[0].color=app.p(23, 70)?app.c3:app.c2
            //Señales
            x2.children[3].color=app.p(24.5, 70)?app.c2:app.c3
            x2.children[3].children[0].color=app.p(24.5, 70)?app.c3:app.c2
            //Ranuras
            x2.children[4].color=app.p(26, 70)?app.c2:app.c3
            x2.children[4].children[0].color=app.p(26, 70)?app.c3:app.c2
            //Otras
            x2.children[5].color=app.p(27.5, 70)?app.c2:app.c3
            x2.children[5].children[0].color=app.p(27.5, 70)?app.c3:app.c2

            x3.opacity=app.p(36, 70)?1.0:0.0


            x4.opacity=app.p(70, 80)?1.0:0.0
            txt1.opacity=app.p(72, 80)?1.0:0.0
            txt2.opacity=app.p(75, 80)?1.0:0.0

            x5.opacity=app.p(80, 93)?1.0:0.0
            x6.opacity=app.p(93, 143)?1.0:0.0

            x7.opacity=app.p(143, 170)?1.0:0.0
            txtr1.opacity=app.p(155, 166)?1.0:0.0
            txtr2.opacity=app.p(157, 166)?1.0:0.0
            txtr3.opacity=app.p(159, 166)?1.0:0.0
            txtT1.text=app.p(165, 170)?'Programamos còdigo desde cero!':'Ejemplo de un Còdigo Cualquiera'
            txtCE.text=app.p(165, 170)?x7.s2:x7.s1

            x8.opacity=app.p(170, 177)?1.0:0.0

            x9.opacity=app.p(177, 190)?1.0:0.0
            x9.children[0].fs=app.p(178, 183)?app.fs*3:app.fs
            x9.children[1].fs=app.p(183, 186)?app.fs*3:app.fs
            x9.children[2].fs=app.p(186, 190)?app.fs*3:app.fs

            x10.opacity=app.p(190, 200)?1.0:0.0
            x10.children[0].fs=app.p(191, 194)?app.fs*3:app.fs
            x10.children[1].fs=app.p(194, 196)?app.fs*3:app.fs
            x10.children[2].fs=app.p(196, 197)?app.fs*3:app.fs
            x10.children[3].fs=app.p(197, 200)?app.fs*3:app.fs

            x11.opacity=app.p(200, 236)?1.0:0.0
            x12.opacity=app.p(236, 270)?1.0:0.0
            x13.opacity=app.p(270, 280)?1.0:0.0

            x14.opacity=app.p(280, 323)?1.0:0.0
            mm0.opacity=app.p(284, 323)?1.0:0.0
            mm1.opacity=app.p(286, 323)?1.0:0.0

            x15.opacity=app.p(323, 344)?1.0:0.0
            x15.children[0].fs=app.p(334, 335)?app.fs*3:app.fs
            x15.children[1].fs=app.p(335, 336)?app.fs*3:app.fs
            x15.children[2].fs=app.p(336, 337)?app.fs*3:app.fs
            x15.children[3].fs=app.p(337, 338)?app.fs*3:app.fs

            x16.opacity=app.p(344, 352.5)?1.0:0.0
            x16.children[0].fs=app.p(346, 347.5)?app.fs*3:app.fs
            x16.children[1].fs=app.p(347.5, 348.5)?app.fs*3:app.fs
            x16.children[2].fs=app.p(348.5, 350)?app.fs*3:app.fs
            x16.children[3].fs=app.p(350, 352)?app.fs*3:app.fs

            x17.opacity=app.p(352.5, 363)?1.0:0.0

            x18.opacity=app.p(363, 387)?1.0:0.0
            x18.text=app.p(370, 392)?'<b>SEÑALES Y RANURAS</b>':'<b>SIGNAL Y SLOT</b>'

            x19.opacity=app.p(387, 402)?1.0:0.0
            x19.text=app.p(396, 403)?'<b>Propiedad Vinculada</b>':'<b>Property Bindings</b>'

            x20.opacity=app.p(402, 444)?1.0:0.0
            mm4.opacity=app.p(408, 444)?1.0:0.0

            x21.opacity=app.p(444, 454)?1.0:0.0
            x21.children[0].fs=app.p(447, 449)?app.fs*3:app.fs
            x21.children[1].fs=app.p(449, 451)?app.fs*3:app.fs
            x21.children[2].fs=app.p(451, 454)?app.fs*3:app.fs
        }
    }
    KeyNavigation.tab: app
    Component.onCompleted: {
        var at='Caractarìsticas Tècnicas de QML.

En esta secciòn, veremos tèrminos o palabras que talves nos parezcan poco relevantes o difìciles de entender. Mencionaremos palabras como ser Declarativo, Imperativo, Reactivo, Señales, Ranuras y otras.

                                                    Tambièn puede resultar algo difìcil acostumbrarnos a estas palabras. Tranquilos. No es necesario que aprendas al detalle lo que te enseñaremos a continuaciòn. Tòmalo còmo un apartado informàtivo al cuàl puedes volver en cualquier momento y repasar algunos conceptos. Te explicaremos mìnimamente, a modo de introducciòn algunos detalles tècnicos sobre QML que siempre es bueno conocerlos o tenerlos en cuenta.

QML es un lenguage de Programaciòn Declarativo basado en JavaScript. Existen lenguajes de programaciòn Declarativos e Imperativos. Vamos a explicar la diferencia entre ellos para entender mejor en que consiste QML.

                                                Para ver la diferencia, es muy importante que entendamos que el lenguaje Declarativo està orientado a resolver problemas o alcanzar objetivos, ambos pre existentes y el lenguaje Imperativo està orientado a resolver en general todo tipo de problemas, incluso uno que nadie antes haya tenido y el programador utilizando el lenguaje imperativo tiene el desafìo de resolver programando funciones y objetos desde cero debido a que antes nunca se programò còdigo para resolver un problema similar.

Tambièn existe el caso en el cuàl ya exista còdigo para resolver un determinado problema pero no cuentas con èl, no quieres utilizarlo para no tener que pagar derechos de autor, no quieres pagar licencias o simplemente lo quieres hacer tu mismo desde cero. En estos casos se utiliza habitualmente un lenguaje imperativo.

                                                                            Ejemplos de Lenguajes Imperativos son C++, JavaScript o PHP.
                                                                            Ejemplos de lenguajes Declarativos son QML, SQL, HTML o XSL.

                                                                Un lenguaje Imperativo es aquel que nos permite crear y ejecutar procesos informàticos creando desde cero, objetos, funciones, tipos de datos y todo tipo de recursos programables para dar ordenes a un dispositivo electrònico. Ya sea para resolver o cumplir, problemas u objetivos, comunes o atìpicos.

                                Un lenguaje Declarativo està orientado a resolver o cumplir objetivos pre existentes. Esto significa que el lenguaje de programaciòn declarativo ya cuenta con objetos y funciones pre programadas las cuales son llamadas e instanciadas al momento de escribir en el còdigo la palabra clave que identifica cada objeto o funciòn, reiteramos, pre programados. Este proceso se lo denomina como Declaraciòn de Objeto o Elemento.

                                                Al ser basado en JavaScript, dentro de QML podemos incluir como parte del còdigo todo el còdigo JavaScript que querramos. Si bien, una de las caracterìsticas principales de QML, decimos que es un lenguaje declarativo, debido a que està basado en JavaScript el cuàl es un lenguaje imperativo, esto significa que programar en QML es algo tan particular y potente que estamos utilizando un lenguaje declarativo e imperativo en simultàneo.

                                                Eso no es todo. QML es un lenguaje tan moderno y poderoso que ademàs de abordar conceptos multiparadigmas, estados, animaciòn, controladores de señales y otros que lo definen tanto como un lenguaje declarativo e imperativo, QML ademàs se asocia, se vincula, se conecta y se integra con C++, el lenguaje imperativo màs potente por excelencia. Esto mismo lo hace mediante lo que se denominan signals y slots en castellano señales y ranuras, este concepto creado por Qt lo ejercitaremos a futuro y veràs cuàn ùtil y valioso es para programar aplicaciones potentes a todo nivel.

                                                Por ùltimo mencionaremos la caracterìstica màs innovadora y revolucionaria que tiene QML, son las Property Bindings en castellano Propiedad Vinculada. Este tipo de propiedades permiten que el còdigo QML que escribamos, actualice automàticamente los valores de sus propiedades asignados implìcitamente. ¿Que significa esto?. Significa que tu còdigo calcularà por tì aquellos valores que tu no le hayas explicado plenamente como se deben calcular. Nos referimos a valores de cualquier tipo, no necesariamente matemàticos.

Las propiedades vinculadas dotan a QML de la siguiente caracterìstica. Ademàs de ser Declarativo, Imperativo tambièn es Reactivo.

'
        xT.at=at.replace(/\n/g,' ')

        x7.s2='/*Còdigo creado por ...*/'
        x7.s1='

/* ioapi.c -- IO base function header for compress/uncompress .zip
   files using zlib + zip or unzip API

   Version 1.01e, February 12th, 2005

   Copyright (C) 1998-2005 Gilles Vollant

   Modified by Sergey A. Tachenov to integrate with Qt.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef Q_OS_WIN
#include "zlib.h"
#else
#include <QtZlib/zlib.h>
#endif
#include "ioapi.h"
#include "quazip_global.h"
#include <QIODevice>
#if (QT_VERSION >= 0x050100)
#define QUAZIP_QSAVEFILE_BUG_WORKAROUND
#endif
#ifdef QUAZIP_QSAVEFILE_BUG_WORKAROUND
#include <QSaveFile>
#endif


#ifndef SEEK_CUR
#define SEEK_CUR    1
#endif

#ifndef SEEK_END
#define SEEK_END    2
#endif

#ifndef SEEK_SET
#define SEEK_SET    0
#endif

voidpf call_zopen64 (const zlib_filefunc64_32_def* pfilefunc,voidpf file,int mode)
{
    if (pfilefunc->zfile_func64.zopen64_file != NULL)
        return (*(pfilefunc->zfile_func64.zopen64_file)) (pfilefunc->zfile_func64.opaque,file,mode);
    else
    {
        return (*(pfilefunc->zopen32_file))(pfilefunc->zfile_func64.opaque,file,mode);
    }
}

int call_zseek64 (const zlib_filefunc64_32_def* pfilefunc,voidpf filestream, ZPOS64_T offset, int origin)
{
    if (pfilefunc->zfile_func64.zseek64_file != NULL)
        return (*(pfilefunc->zfile_func64.zseek64_file)) (pfilefunc->zfile_func64.opaque,filestream,offset,origin);
    else
    {
        uLong offsetTruncated = (uLong)offset;
        if (offsetTruncated != offset)
            return -1;
        else
            return (*(pfilefunc->zseek32_file))(pfilefunc->zfile_func64.opaque,filestream,offsetTruncated,origin);
    }
}
'
        xa.addBa('Ir al siguiente','','1')
    }
}
