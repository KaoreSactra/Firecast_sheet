require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmficha()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmficha");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Ficha.ORP.Gus");
    obj:setTitle("Ordem Paranormal");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setName("rectangle1");
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#272727");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.rectangle1);
    obj.flowLayout1:setName("flowLayout1");
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setMargins({top=35});

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.flowLayout1);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setHeight(800);
    obj.rectangle2:setWidth(400);
    obj.rectangle2:setColor("#121212");
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setXradius(20);
    obj.rectangle2:setYradius(20);

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.rectangle2);
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setAlign("top");
    obj.flowLayout2:setMargins({top=15});
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setOrientation("horizontal");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout2);
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setHeight(30);
    obj.flowPart1:setWidth(38);

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.flowPart1);
    obj.button1:setText("😀");
    obj.button1:setHint("Perfil");
    obj.button1:setName("button1");
    obj.button1:setAlign("client");
    obj.button1:setFontSize(16);

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setMargins({left=10});
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setHeight(30);
    obj.flowPart2:setWidth(38);

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowPart2);
    obj.button2:setText("🔨");
    obj.button2:setHint("Perícias");
    obj.button2:setName("button2");
    obj.button2:setAlign("client");
    obj.button2:setFontSize(16);

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout2);
    obj.flowPart3:setMargins({left=10});
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setHeight(30);
    obj.flowPart3:setWidth(38);

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.flowPart3);
    obj.button3:setText("⚔️");
    obj.button3:setHint("Combate");
    obj.button3:setName("button3");
    obj.button3:setAlign("client");
    obj.button3:setFontSize(16);

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout2);
    obj.flowPart4:setMargins({left=10});
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setHeight(30);
    obj.flowPart4:setWidth(38);

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.flowPart4);
    obj.button4:setText("☄");
    obj.button4:setHint("Rituais");
    obj.button4:setName("button4");
    obj.button4:setAlign("client");
    obj.button4:setFontSize(16);

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout2);
    obj.flowPart5:setMargins({left=10});
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setHeight(30);
    obj.flowPart5:setWidth(38);

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.flowPart5);
    obj.button5:setText("📚");
    obj.button5:setHint("Habilidades");
    obj.button5:setName("button5");
    obj.button5:setAlign("client");
    obj.button5:setFontSize(16);

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout2);
    obj.flowPart6:setMargins({left=10});
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setHeight(30);
    obj.flowPart6:setWidth(38);

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.flowPart6);
    obj.button6:setText("🎒");
    obj.button6:setHint("Inventário");
    obj.button6:setName("button6");
    obj.button6:setAlign("client");
    obj.button6:setFontSize(16);

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout2);
    obj.flowPart7:setMargins({left=10});
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setHeight(30);
    obj.flowPart7:setWidth(38);

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.flowPart7);
    obj.button7:setText("📋");
    obj.button7:setHint("Notas");
    obj.button7:setName("button7");
    obj.button7:setAlign("client");
    obj.button7:setFontSize(16);

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout2);
    obj.flowPart8:setMargins({left=10});
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setHeight(30);
    obj.flowPart8:setWidth(38);

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.flowPart8);
    obj.button8:setText("📖");
    obj.button8:setHint("Livro");
    obj.button8:setName("button8");
    obj.button8:setAlign("client");
    obj.button8:setFontSize(16);


					



						local function TrocarAba(a)
							if(a == 'F') then
								self.layFrente.visible = true;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'P') then
								self.layFrente.visible = false;
								self.layPericias.visible = true;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'A') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = true;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'R') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = true;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'H') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = true;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'I') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = true;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'N') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = true;
								self.layBook.visible = false;
							elseif(a == 'B') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layCombate.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = true;
							end;
						end;
					



				


    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle2);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#121212");
    obj.rectangle3:setMargins({top=15, bottom=15, left=15, right=15});

    obj.layFrente = GUI.fromHandle(_obj_newObject("layout"));
    obj.layFrente:setParent(obj.rectangle3);
    obj.layFrente:setName("layFrente");
    obj.layFrente:setVisible(false);
    obj.layFrente:setAlign("client");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.layFrente);
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setAlign("top");
    obj.flowLayout3:setHorzAlign("center");
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setOrientation("vertical");
    obj.flowLayout3:setWidth(400);
    obj.flowLayout3:setMaxColumns(1);

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowLayout3);
    obj.rectangle4:setName("rectangle4");
    obj.rectangle4:setHeight(260);
    obj.rectangle4:setWidth(260);
    obj.rectangle4:setColor("transparent");
    obj.rectangle4:setMargins({top=15});

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle4);
    obj.image1:setName("image1");
    obj.image1:setAlign("client");
    obj.image1:setField("foto");
    obj.image1:setStyle("autoFit");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.rectangle4);
    obj.rectangle5:setName("rectangle5");
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setMargins({top=-15, bottom=-15, left=-15, right=-15});
    obj.rectangle5:setColor("transparent");
    obj.rectangle5:setStrokeColor("#121212");
    obj.rectangle5:setStrokeSize(15);
    obj.rectangle5:setXradius(40);
    obj.rectangle5:setYradius(40);
    obj.rectangle5:setCornerType("round");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.rectangle4);
    obj.rectangle6:setName("rectangle6");
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("transparent");
    obj.rectangle6:setStrokeColor("#ffe000");
    obj.rectangle6:setStrokeSize(4);
    obj.rectangle6:setXradius(30);
    obj.rectangle6:setYradius(30);
    obj.rectangle6:setCornerType("round");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle4);
    obj.image2:setName("image2");
    obj.image2:setAlign("client");
    obj.image2:setField("foto");
    obj.image2:setStyle("autoFit");
    obj.image2:setEditable(true);
    obj.image2:setOpacity(0);

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.rectangle4);
    obj.rectangle7:setName("rectangle7");
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setMargins({top=-10, bottom=230, left=230, right=-10});
    obj.rectangle7:setColor("#ffe000");
    obj.rectangle7:setXradius(10);
    obj.rectangle7:setYradius(10);
    obj.rectangle7:setCornerType("round");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle7);
    obj.edit1:setName("edit1");
    obj.edit1:setAlign("client");
    obj.edit1:setField("nex");
    obj.edit1:setHint("nex");
    obj.edit1:setFontSize(15);
    obj.edit1:setFontColor("#121212");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setMargins({right=15});
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setTransparent(true);
    obj.edit1:setType("number");
    obj.edit1:setMin(0);
    obj.edit1:setMax(99);

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle7);
    obj.label1:setText("%");
    obj.label1:setName("label1");
    obj.label1:setAlign("client");
    obj.label1:setFontSize(15);
    obj.label1:setFontColor("#121212");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setVertTextAlign("center");
    obj.label1:setMargins({left=18});
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowLayout3);
    obj.rectangle8:setName("rectangle8");
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setWidth(300);
    obj.rectangle8:setColor("transparent");
    obj.rectangle8:setMargins({top=10});

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle8);
    obj.edit2:setName("edit2");
    obj.edit2:setAlign("client");
    obj.edit2:setTransparent(true);
    obj.edit2:setField("nome");
    obj.edit2:setHint("Nome");
    obj.edit2:setFontSize(18);
    obj.edit2:setFontColor("#ffe000");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.rectangle8);
    obj.rectangle9:setName("rectangle9");
    obj.rectangle9:setAlign("bottom");
    obj.rectangle9:setHeight(1);
    obj.rectangle9:setColor("#ffe000");
    obj.rectangle9:setMargins({left=15, right=15});
    obj.rectangle9:setOpacity(0.3);

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowLayout3);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setWidth(300);
    obj.rectangle10:setColor("transparent");
    obj.rectangle10:setMargins({top=10});

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle10);
    obj.comboBox1:setField("origem");
    obj.comboBox1:setItems({
                                    'Sem Origem', 'Académico',
                                    'Agente de Saúde', 'Amnésico',
                                    'Artista', 'Atleta',
                                    'Chef', 'Criminoso',
                                    'Cultista Arrependido', 'Desgarrado',
                                    'Engenheiro', 'Executivo',
                                    'Investigador', 'Lutador',
                                    'Magnata', 'Mercenário',
                                    'Militar', 'Operário',
                                    'Policial', 'Religioso',
                                    'Servidor Público', 'Teórico da Conspiração',
                                    'T.I.', 'Trabalhador Rural',
                                    'Trambiqueiro', 'Universitário',
                                    'Vítima', 'Cientista Forense',
                                    'Escritor', 'Jornalista',
                                    'Professor', 'Revoltado',
                                    'Dublê', 'Ginasta',
                                    'Gaudério Abutre'
                                });
    obj.comboBox1:setValues({
                                    '01', '02',
                                    '03', '04',
                                    '05', '06',
                                    '07', '08',
                                    '09', '10',
                                    '11', '12',
                                    '13', '14',
                                    '15', '16',
                                    '17', '18',
                                    '19', '20',
                                    '21', '22',
                                    '23', '24',
                                    '25', '26',
                                    '27', '28',
                                    '29', '30',
                                    '31', '32',
                                    '33', '34',
                                    '35'
                                });
    obj.comboBox1:setValue("01");
    obj.comboBox1:setName("comboBox1");
    obj.comboBox1:setAlign("client");
    obj.comboBox1:setTransparent(true);
    obj.comboBox1:setFontColor("#ffe000");
    obj.comboBox1:setFontSize(18);
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setVertTextAlign("center");
    lfm_setPropAsString(obj.comboBox1, "fontStyle",  "bold");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle10);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setAlign("bottom");
    obj.rectangle11:setHeight(1);
    obj.rectangle11:setColor("#ffe000");
    obj.rectangle11:setMargins({left=15, right=15});
    obj.rectangle11:setOpacity(0.3);

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowLayout3);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setWidth(300);
    obj.rectangle12:setColor("transparent");
    obj.rectangle12:setMargins({top=10});

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle12);
    obj.comboBox2:setField("classe");
    obj.comboBox2:setItems({
                                    'Sem Classe',
                                    'Mundano',
                                    'Combatente',
                                    'Especialista',
                                    'Ocultista'
                                });
    obj.comboBox2:setValues({
                                    '01', '02',
                                    '03', '04',
                                    '05'
                                });
    obj.comboBox2:setValue("01");
    obj.comboBox2:setName("comboBox2");
    obj.comboBox2:setAlign("client");
    obj.comboBox2:setTransparent(true);
    obj.comboBox2:setFontColor("#ffe000");
    obj.comboBox2:setFontSize(18);
    obj.comboBox2:setHorzTextAlign("center");
    obj.comboBox2:setVertTextAlign("center");
    lfm_setPropAsString(obj.comboBox2, "fontStyle",  "bold");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.rectangle12);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setAlign("bottom");
    obj.rectangle13:setHeight(1);
    obj.rectangle13:setColor("#ffe000");
    obj.rectangle13:setMargins({left=15, right=15});
    obj.rectangle13:setOpacity(0.3);

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.flowLayout3);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setWidth(300);
    obj.rectangle14:setColor("transparent");
    obj.rectangle14:setMargins({top=10});

    obj.sem_trilha = GUI.fromHandle(_obj_newObject("layout"));
    obj.sem_trilha:setParent(obj.rectangle14);
    obj.sem_trilha:setName("sem_trilha");
    obj.sem_trilha:setAlign("client");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.sem_trilha);
    obj.label2:setName("label2");
    obj.label2:setAlign("client");
    obj.label2:setText("Sem trilha");
    obj.label2:setFontSize(18);
    obj.label2:setFontColor("#ffe000");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setVertTextAlign("center");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");

    obj.combatente_trilha = GUI.fromHandle(_obj_newObject("layout"));
    obj.combatente_trilha:setParent(obj.rectangle14);
    obj.combatente_trilha:setName("combatente_trilha");
    obj.combatente_trilha:setVisible(false);
    obj.combatente_trilha:setAlign("client");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.combatente_trilha);
    obj.comboBox3:setField("trilha");
    obj.comboBox3:setItems({
                                        'Sem Trilha',
                                        'Aniquilador',
                                        'Comandante de Campo',
                                        'Guerreiro',
                                        'Operações Especiais',
                                        'Tropa de Choque'
                                    });
    obj.comboBox3:setValues({
                                        '01', '02',
                                        '03', '04',
                                        '05', '06'
                                    });
    obj.comboBox3:setValue("01");
    obj.comboBox3:setName("comboBox3");
    obj.comboBox3:setAlign("client");
    obj.comboBox3:setTransparent(true);
    obj.comboBox3:setFontColor("#ffe000");
    obj.comboBox3:setFontSize(18);
    obj.comboBox3:setHorzTextAlign("center");
    obj.comboBox3:setVertTextAlign("center");
    lfm_setPropAsString(obj.comboBox3, "fontStyle",  "bold");

    obj.especialista_trilha = GUI.fromHandle(_obj_newObject("layout"));
    obj.especialista_trilha:setParent(obj.rectangle14);
    obj.especialista_trilha:setName("especialista_trilha");
    obj.especialista_trilha:setVisible(false);
    obj.especialista_trilha:setAlign("client");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.especialista_trilha);
    obj.comboBox4:setField("trilha");
    obj.comboBox4:setItems({
                                        'Sem Trilha',
                                        'Atirador de Elite',
                                        'Infiltrador',
                                        'Médico de Campo',
                                        'Negociador',
                                        'Técnico'
                                    });
    obj.comboBox4:setValues({
                                        '01', '02',
                                        '03', '04',
                                        '05', '06'
                                    });
    obj.comboBox4:setValue("01");
    obj.comboBox4:setName("comboBox4");
    obj.comboBox4:setAlign("client");
    obj.comboBox4:setTransparent(true);
    obj.comboBox4:setFontColor("#ffe000");
    obj.comboBox4:setFontSize(18);
    obj.comboBox4:setHorzTextAlign("center");
    obj.comboBox4:setVertTextAlign("center");
    lfm_setPropAsString(obj.comboBox4, "fontStyle",  "bold");

    obj.ocultista_trilha = GUI.fromHandle(_obj_newObject("layout"));
    obj.ocultista_trilha:setParent(obj.rectangle14);
    obj.ocultista_trilha:setName("ocultista_trilha");
    obj.ocultista_trilha:setVisible(false);
    obj.ocultista_trilha:setAlign("client");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.ocultista_trilha);
    obj.comboBox5:setField("trilha");
    obj.comboBox5:setItems({
                                        'Sem Trilha',
                                        'Conduíte',
                                        'Flagelador',
                                        'Graduado',
                                        'Intuitivo',
                                        'Lâmina Paranormal'
                                    });
    obj.comboBox5:setValues({
                                        '01', '02',
                                        '03', '04',
                                        '05', '06'
                                    });
    obj.comboBox5:setValue("01");
    obj.comboBox5:setName("comboBox5");
    obj.comboBox5:setAlign("client");
    obj.comboBox5:setTransparent(true);
    obj.comboBox5:setFontColor("#ffe000");
    obj.comboBox5:setFontSize(18);
    obj.comboBox5:setHorzTextAlign("center");
    obj.comboBox5:setVertTextAlign("center");
    lfm_setPropAsString(obj.comboBox5, "fontStyle",  "bold");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.rectangle14);
    obj.rectangle15:setName("rectangle15");
    obj.rectangle15:setAlign("bottom");
    obj.rectangle15:setHeight(1);
    obj.rectangle15:setColor("#ffe000");
    obj.rectangle15:setMargins({left=15, right=15});
    obj.rectangle15:setOpacity(0.3);

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.flowLayout3);
    obj.dataLink1:setField("classe");
    obj.dataLink1:setName("dataLink1");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.flowLayout3);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setHeight(250);
    obj.rectangle16:setWidth(250);
    obj.rectangle16:setColor("transparent");
    obj.rectangle16:setMargins({top=15});

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle16);
    obj.image3:setName("image3");
    obj.image3:setAlign("client");
    obj.image3:setSRC("images/frameAttributes.png");
    obj.image3:setStyle("autoFit");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle16);
    obj.label3:setName("label3");
    obj.label3:setAlign("client");
    obj.label3:setText("ATRIBUTOS");
    obj.label3:setFontSize(12);
    obj.label3:setFontColor("#121212");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setVertTextAlign("center");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setMargins({top=18});

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle16);
    obj.label4:setMargins({top=34});
    obj.label4:setText("AGI");
    obj.label4:setName("label4");
    obj.label4:setAlign("client");
    obj.label4:setFontSize(12);
    obj.label4:setFontColor("#ffe000");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setVertTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle16);
    obj.label5:setMargins({top=106, right=190});
    obj.label5:setText("FOR");
    obj.label5:setName("label5");
    obj.label5:setAlign("client");
    obj.label5:setFontSize(12);
    obj.label5:setFontColor("#ffe000");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setVertTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle16);
    obj.label6:setMargins({top=106, left=190});
    obj.label6:setText("INT");
    obj.label6:setName("label6");
    obj.label6:setAlign("client");
    obj.label6:setFontSize(12);
    obj.label6:setFontColor("#ffe000");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setVertTextAlign("leading");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle16);
    obj.label7:setMargins({top=216, right=110});
    obj.label7:setText("PRE");
    obj.label7:setName("label7");
    obj.label7:setAlign("client");
    obj.label7:setFontSize(12);
    obj.label7:setFontColor("#ffe000");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setVertTextAlign("leading");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle16);
    obj.label8:setMargins({top=216, left=110});
    obj.label8:setText("VIG");
    obj.label8:setName("label8");
    obj.label8:setAlign("client");
    obj.label8:setFontSize(12);
    obj.label8:setFontColor("#ffe000");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setVertTextAlign("leading");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle16);
    obj.edit3:setTop(12);
    obj.edit3:setLeft(112);
    obj.edit3:setField("AGI");
    obj.edit3:setHint("AGI");
    obj.edit3:setName("edit3");
    obj.edit3:setHeight(25);
    obj.edit3:setWidth(25);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(22);
    obj.edit3:setFontColor("#ffe000");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setType("number");
    obj.edit3:setMin(0);
    obj.edit3:setMax(9);

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle16);
    obj.edit4:setTop(82);
    obj.edit4:setLeft(17);
    obj.edit4:setField("FOR");
    obj.edit4:setHint("FOR");
    obj.edit4:setName("edit4");
    obj.edit4:setHeight(25);
    obj.edit4:setWidth(25);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(22);
    obj.edit4:setFontColor("#ffe000");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(9);

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle16);
    obj.edit5:setTop(82);
    obj.edit5:setLeft(207);
    obj.edit5:setField("INT");
    obj.edit5:setHint("INT");
    obj.edit5:setName("edit5");
    obj.edit5:setHeight(25);
    obj.edit5:setWidth(25);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(22);
    obj.edit5:setFontColor("#ffe000");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(9);

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle16);
    obj.edit6:setTop(194);
    obj.edit6:setLeft(50);
    obj.edit6:setField("PRE");
    obj.edit6:setHint("PRE");
    obj.edit6:setName("edit6");
    obj.edit6:setHeight(25);
    obj.edit6:setWidth(25);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(22);
    obj.edit6:setFontColor("#ffe000");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(9);

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle16);
    obj.edit7:setTop(194);
    obj.edit7:setLeft(175);
    obj.edit7:setField("VIG");
    obj.edit7:setHint("VIG");
    obj.edit7:setName("edit7");
    obj.edit7:setHeight(25);
    obj.edit7:setWidth(25);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(22);
    obj.edit7:setFontColor("#ffe000");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setVertTextAlign("center");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(9);

    obj.layPericias = GUI.fromHandle(_obj_newObject("layout"));
    obj.layPericias:setParent(obj.rectangle3);
    obj.layPericias:setName("layPericias");
    obj.layPericias:setVisible(false);
    obj.layPericias:setAlign("client");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layPericias);
    obj.rectangle17:setName("rectangle17");
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("transparent");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.rectangle17);
    obj.rectangle18:setName("rectangle18");
    obj.rectangle18:setAlign("top");
    obj.rectangle18:setHeight(40);
    obj.rectangle18:setColor("#070707");
    obj.rectangle18:setXradius(5);
    obj.rectangle18:setYradius(5);
    obj.rectangle18:setCornerType("round");
    lfm_setPropAsString(obj.rectangle18, "corners",  "topLeft topRight");
    obj.rectangle18:setMargins({right=-1});

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.rectangle18);
    obj.rectangle19:setWidth(137);
    obj.rectangle19:setName("rectangle19");
    obj.rectangle19:setAlign("left");
    obj.rectangle19:setColor("transparent");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle19);
    obj.label9:setText("Perícia");
    obj.label9:setName("label9");
    obj.label9:setAlign("client");
    obj.label9:setFontSize(12);
    obj.label9:setFontColor("#fff");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setVertTextAlign("center");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.rectangle18);
    obj.rectangle20:setWidth(54);
    obj.rectangle20:setName("rectangle20");
    obj.rectangle20:setAlign("left");
    obj.rectangle20:setColor("transparent");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle20);
    obj.label10:setText("Atrib.");
    obj.label10:setName("label10");
    obj.label10:setAlign("client");
    obj.label10:setFontSize(12);
    obj.label10:setFontColor("#fff");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setVertTextAlign("center");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.rectangle18);
    obj.rectangle21:setWidth(52);
    obj.rectangle21:setName("rectangle21");
    obj.rectangle21:setAlign("left");
    obj.rectangle21:setColor("transparent");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle21);
    obj.label11:setText("Bonûs");
    obj.label11:setName("label11");
    obj.label11:setAlign("client");
    obj.label11:setFontSize(12);
    obj.label11:setFontColor("#fff");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setVertTextAlign("center");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.rectangle18);
    obj.rectangle22:setWidth(58);
    obj.rectangle22:setName("rectangle22");
    obj.rectangle22:setAlign("left");
    obj.rectangle22:setColor("transparent");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle22);
    obj.label12:setText("Treino");
    obj.label12:setName("label12");
    obj.label12:setAlign("client");
    obj.label12:setFontSize(12);
    obj.label12:setFontColor("#fff");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setVertTextAlign("center");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.rectangle18);
    obj.rectangle23:setWidth(52);
    obj.rectangle23:setName("rectangle23");
    obj.rectangle23:setAlign("left");
    obj.rectangle23:setColor("transparent");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle23);
    obj.label13:setText("Outros");
    obj.label13:setName("label13");
    obj.label13:setAlign("client");
    obj.label13:setFontSize(12);
    obj.label13:setFontColor("#fff");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setVertTextAlign("center");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle17);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.scrollBox1);
    obj.rectangle24:setColor("#202020");
    obj.rectangle24:setName("rectangle24");
    obj.rectangle24:setAlign("top");
    obj.rectangle24:setHeight(25);

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.rectangle24);
    obj.rectangle25:setWidth(137);
    obj.rectangle25:setName("rectangle25");
    obj.rectangle25:setAlign("left");
    obj.rectangle25:setColor("transparent");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle25);
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setMargins({left=7});
    obj.label14:setText("Acrobacia ⭐");
    obj.label14:setName("label14");
    obj.label14:setAlign("client");
    obj.label14:setFontSize(12);
    obj.label14:setFontColor("#fff");
    obj.label14:setVertTextAlign("center");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.rectangle24);
    obj.rectangle26:setWidth(54);
    obj.rectangle26:setName("rectangle26");
    obj.rectangle26:setAlign("left");
    obj.rectangle26:setColor("transparent");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle26);
    obj.label15:setText("AGI");
    obj.label15:setName("label15");
    obj.label15:setAlign("client");
    obj.label15:setFontSize(12);
    obj.label15:setFontColor("#fff");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setVertTextAlign("center");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.rectangle24);
    obj.rectangle27:setWidth(52);
    obj.rectangle27:setName("rectangle27");
    obj.rectangle27:setAlign("left");
    obj.rectangle27:setColor("transparent");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle27);
    obj.edit8:setField("AcrobaciaB");
    obj.edit8:setName("edit8");
    obj.edit8:setAlign("client");
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(12);
    obj.edit8:setFontColor("#fff");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setVertTextAlign("center");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.edit8);
    obj.rectangle28:setName("rectangle28");
    obj.rectangle28:setAlign("bottom");
    obj.rectangle28:setHeight(1);
    obj.rectangle28:setMargins({left=15, right=15, bottom=3});
    obj.rectangle28:setColor("#fff");
    obj.rectangle28:setOpacity(0.3);

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.rectangle24);
    obj.rectangle29:setWidth(58);
    obj.rectangle29:setName("rectangle29");
    obj.rectangle29:setAlign("left");
    obj.rectangle29:setColor("transparent");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.rectangle29);
    obj.comboBox6:setField("AcrobaciaC");
    obj.comboBox6:setItems({'0','+5','+10','+15'});
    obj.comboBox6:setValues({'01', '02','03', '04'});
    obj.comboBox6:setValue("01");
    obj.comboBox6:setName("comboBox6");
    obj.comboBox6:setAlign("client");
    obj.comboBox6:setTransparent(true);
    obj.comboBox6:setFontColor("#fff");
    obj.comboBox6:setFontSize(12);
    obj.comboBox6:setHorzTextAlign("center");
    obj.comboBox6:setVertTextAlign("center");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.rectangle24);
    obj.rectangle30:setWidth(52);
    obj.rectangle30:setName("rectangle30");
    obj.rectangle30:setAlign("left");
    obj.rectangle30:setColor("transparent");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle30);
    obj.edit9:setField("AcrobaciaO");
    obj.edit9:setName("edit9");
    obj.edit9:setAlign("client");
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(12);
    obj.edit9:setFontColor("#fff");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("center");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.edit9);
    obj.rectangle31:setName("rectangle31");
    obj.rectangle31:setAlign("bottom");
    obj.rectangle31:setHeight(1);
    obj.rectangle31:setMargins({left=15, right=15, bottom=3});
    obj.rectangle31:setColor("#fff");
    obj.rectangle31:setOpacity(0.3);

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.scrollBox1);
    obj.rectangle32:setColor("#181818");
    obj.rectangle32:setName("rectangle32");
    obj.rectangle32:setAlign("top");
    obj.rectangle32:setHeight(25);

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.rectangle32);
    obj.rectangle33:setWidth(137);
    obj.rectangle33:setName("rectangle33");
    obj.rectangle33:setAlign("left");
    obj.rectangle33:setColor("transparent");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle33);
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setMargins({left=7});
    obj.label16:setText("Adestramento ♦");
    obj.label16:setName("label16");
    obj.label16:setAlign("client");
    obj.label16:setFontSize(12);
    obj.label16:setFontColor("#fff");
    obj.label16:setVertTextAlign("center");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.rectangle32);
    obj.rectangle34:setWidth(54);
    obj.rectangle34:setName("rectangle34");
    obj.rectangle34:setAlign("left");
    obj.rectangle34:setColor("transparent");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle34);
    obj.label17:setText("PRE");
    obj.label17:setName("label17");
    obj.label17:setAlign("client");
    obj.label17:setFontSize(12);
    obj.label17:setFontColor("#fff");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setVertTextAlign("center");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.rectangle32);
    obj.rectangle35:setWidth(52);
    obj.rectangle35:setName("rectangle35");
    obj.rectangle35:setAlign("left");
    obj.rectangle35:setColor("transparent");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle35);
    obj.edit10:setField("AdestramentoB");
    obj.edit10:setName("edit10");
    obj.edit10:setAlign("client");
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(12);
    obj.edit10:setFontColor("#fff");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("center");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.edit10);
    obj.rectangle36:setName("rectangle36");
    obj.rectangle36:setAlign("bottom");
    obj.rectangle36:setHeight(1);
    obj.rectangle36:setMargins({left=15, right=15, bottom=3});
    obj.rectangle36:setColor("#fff");
    obj.rectangle36:setOpacity(0.3);

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.rectangle32);
    obj.rectangle37:setWidth(58);
    obj.rectangle37:setName("rectangle37");
    obj.rectangle37:setAlign("left");
    obj.rectangle37:setColor("transparent");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.rectangle37);
    obj.comboBox7:setField("AdestramentoC");
    obj.comboBox7:setItems({'0','+5','+10','+15'});
    obj.comboBox7:setValues({'01', '02','03', '04'});
    obj.comboBox7:setValue("01");
    obj.comboBox7:setName("comboBox7");
    obj.comboBox7:setAlign("client");
    obj.comboBox7:setTransparent(true);
    obj.comboBox7:setFontColor("#fff");
    obj.comboBox7:setFontSize(12);
    obj.comboBox7:setHorzTextAlign("center");
    obj.comboBox7:setVertTextAlign("center");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.rectangle32);
    obj.rectangle38:setWidth(52);
    obj.rectangle38:setName("rectangle38");
    obj.rectangle38:setAlign("left");
    obj.rectangle38:setColor("transparent");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle38);
    obj.edit11:setField("AdestramentoO");
    obj.edit11:setName("edit11");
    obj.edit11:setAlign("client");
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(12);
    obj.edit11:setFontColor("#fff");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.edit11);
    obj.rectangle39:setName("rectangle39");
    obj.rectangle39:setAlign("bottom");
    obj.rectangle39:setHeight(1);
    obj.rectangle39:setMargins({left=15, right=15, bottom=3});
    obj.rectangle39:setColor("#fff");
    obj.rectangle39:setOpacity(0.3);

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.scrollBox1);
    obj.rectangle40:setColor("#202020");
    obj.rectangle40:setName("rectangle40");
    obj.rectangle40:setAlign("top");
    obj.rectangle40:setHeight(25);

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.rectangle40);
    obj.rectangle41:setWidth(137);
    obj.rectangle41:setName("rectangle41");
    obj.rectangle41:setAlign("left");
    obj.rectangle41:setColor("transparent");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle41);
    obj.label18:setHorzTextAlign("leading");
    obj.label18:setMargins({left=7});
    obj.label18:setText("Artes ♦");
    obj.label18:setName("label18");
    obj.label18:setAlign("client");
    obj.label18:setFontSize(12);
    obj.label18:setFontColor("#fff");
    obj.label18:setVertTextAlign("center");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.rectangle40);
    obj.rectangle42:setWidth(54);
    obj.rectangle42:setName("rectangle42");
    obj.rectangle42:setAlign("left");
    obj.rectangle42:setColor("transparent");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle42);
    obj.label19:setText("PRE");
    obj.label19:setName("label19");
    obj.label19:setAlign("client");
    obj.label19:setFontSize(12);
    obj.label19:setFontColor("#fff");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setVertTextAlign("center");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.rectangle40);
    obj.rectangle43:setWidth(52);
    obj.rectangle43:setName("rectangle43");
    obj.rectangle43:setAlign("left");
    obj.rectangle43:setColor("transparent");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle43);
    obj.edit12:setField("ArtesB");
    obj.edit12:setName("edit12");
    obj.edit12:setAlign("client");
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(12);
    obj.edit12:setFontColor("#fff");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.edit12);
    obj.rectangle44:setName("rectangle44");
    obj.rectangle44:setAlign("bottom");
    obj.rectangle44:setHeight(1);
    obj.rectangle44:setMargins({left=15, right=15, bottom=3});
    obj.rectangle44:setColor("#fff");
    obj.rectangle44:setOpacity(0.3);

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.rectangle40);
    obj.rectangle45:setWidth(58);
    obj.rectangle45:setName("rectangle45");
    obj.rectangle45:setAlign("left");
    obj.rectangle45:setColor("transparent");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.rectangle45);
    obj.comboBox8:setField("ArtesC");
    obj.comboBox8:setItems({'0','+5','+10','+15'});
    obj.comboBox8:setValues({'01', '02','03', '04'});
    obj.comboBox8:setValue("01");
    obj.comboBox8:setName("comboBox8");
    obj.comboBox8:setAlign("client");
    obj.comboBox8:setTransparent(true);
    obj.comboBox8:setFontColor("#fff");
    obj.comboBox8:setFontSize(12);
    obj.comboBox8:setHorzTextAlign("center");
    obj.comboBox8:setVertTextAlign("center");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.rectangle40);
    obj.rectangle46:setWidth(52);
    obj.rectangle46:setName("rectangle46");
    obj.rectangle46:setAlign("left");
    obj.rectangle46:setColor("transparent");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle46);
    obj.edit13:setField("ArtesO");
    obj.edit13:setName("edit13");
    obj.edit13:setAlign("client");
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(12);
    obj.edit13:setFontColor("#fff");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.edit13);
    obj.rectangle47:setName("rectangle47");
    obj.rectangle47:setAlign("bottom");
    obj.rectangle47:setHeight(1);
    obj.rectangle47:setMargins({left=15, right=15, bottom=3});
    obj.rectangle47:setColor("#fff");
    obj.rectangle47:setOpacity(0.3);

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.scrollBox1);
    obj.rectangle48:setColor("#181818");
    obj.rectangle48:setName("rectangle48");
    obj.rectangle48:setAlign("top");
    obj.rectangle48:setHeight(25);

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.rectangle48);
    obj.rectangle49:setWidth(137);
    obj.rectangle49:setName("rectangle49");
    obj.rectangle49:setAlign("left");
    obj.rectangle49:setColor("transparent");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle49);
    obj.label20:setHorzTextAlign("leading");
    obj.label20:setMargins({left=7});
    obj.label20:setText("Atletismo ⭐");
    obj.label20:setName("label20");
    obj.label20:setAlign("client");
    obj.label20:setFontSize(12);
    obj.label20:setFontColor("#fff");
    obj.label20:setVertTextAlign("center");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.rectangle48);
    obj.rectangle50:setWidth(54);
    obj.rectangle50:setName("rectangle50");
    obj.rectangle50:setAlign("left");
    obj.rectangle50:setColor("transparent");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle50);
    obj.label21:setText("FOR");
    obj.label21:setName("label21");
    obj.label21:setAlign("client");
    obj.label21:setFontSize(12);
    obj.label21:setFontColor("#fff");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setVertTextAlign("center");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.rectangle48);
    obj.rectangle51:setWidth(52);
    obj.rectangle51:setName("rectangle51");
    obj.rectangle51:setAlign("left");
    obj.rectangle51:setColor("transparent");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle51);
    obj.edit14:setField("AtletismoB");
    obj.edit14:setName("edit14");
    obj.edit14:setAlign("client");
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(12);
    obj.edit14:setFontColor("#fff");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.edit14);
    obj.rectangle52:setName("rectangle52");
    obj.rectangle52:setAlign("bottom");
    obj.rectangle52:setHeight(1);
    obj.rectangle52:setMargins({left=15, right=15, bottom=3});
    obj.rectangle52:setColor("#fff");
    obj.rectangle52:setOpacity(0.3);

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.rectangle48);
    obj.rectangle53:setWidth(58);
    obj.rectangle53:setName("rectangle53");
    obj.rectangle53:setAlign("left");
    obj.rectangle53:setColor("transparent");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.rectangle53);
    obj.comboBox9:setField("AtletismoC");
    obj.comboBox9:setItems({'0','+5','+10','+15'});
    obj.comboBox9:setValues({'01', '02','03', '04'});
    obj.comboBox9:setValue("01");
    obj.comboBox9:setName("comboBox9");
    obj.comboBox9:setAlign("client");
    obj.comboBox9:setTransparent(true);
    obj.comboBox9:setFontColor("#fff");
    obj.comboBox9:setFontSize(12);
    obj.comboBox9:setHorzTextAlign("center");
    obj.comboBox9:setVertTextAlign("center");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.rectangle48);
    obj.rectangle54:setWidth(52);
    obj.rectangle54:setName("rectangle54");
    obj.rectangle54:setAlign("left");
    obj.rectangle54:setColor("transparent");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle54);
    obj.edit15:setField("AtletismoO");
    obj.edit15:setName("edit15");
    obj.edit15:setAlign("client");
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(12);
    obj.edit15:setFontColor("#fff");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.edit15);
    obj.rectangle55:setName("rectangle55");
    obj.rectangle55:setAlign("bottom");
    obj.rectangle55:setHeight(1);
    obj.rectangle55:setMargins({left=15, right=15, bottom=3});
    obj.rectangle55:setColor("#fff");
    obj.rectangle55:setOpacity(0.3);

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.scrollBox1);
    obj.rectangle56:setColor("#202020");
    obj.rectangle56:setName("rectangle56");
    obj.rectangle56:setAlign("top");
    obj.rectangle56:setHeight(25);

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.rectangle56);
    obj.rectangle57:setWidth(137);
    obj.rectangle57:setName("rectangle57");
    obj.rectangle57:setAlign("left");
    obj.rectangle57:setColor("transparent");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle57);
    obj.label22:setHorzTextAlign("leading");
    obj.label22:setMargins({left=7});
    obj.label22:setText("Atualidades");
    obj.label22:setName("label22");
    obj.label22:setAlign("client");
    obj.label22:setFontSize(12);
    obj.label22:setFontColor("#fff");
    obj.label22:setVertTextAlign("center");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.rectangle56);
    obj.rectangle58:setWidth(54);
    obj.rectangle58:setName("rectangle58");
    obj.rectangle58:setAlign("left");
    obj.rectangle58:setColor("transparent");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle58);
    obj.label23:setText("INT");
    obj.label23:setName("label23");
    obj.label23:setAlign("client");
    obj.label23:setFontSize(12);
    obj.label23:setFontColor("#fff");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setVertTextAlign("center");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.rectangle56);
    obj.rectangle59:setWidth(52);
    obj.rectangle59:setName("rectangle59");
    obj.rectangle59:setAlign("left");
    obj.rectangle59:setColor("transparent");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle59);
    obj.edit16:setField("AtualidadesB");
    obj.edit16:setName("edit16");
    obj.edit16:setAlign("client");
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(12);
    obj.edit16:setFontColor("#fff");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.edit16);
    obj.rectangle60:setName("rectangle60");
    obj.rectangle60:setAlign("bottom");
    obj.rectangle60:setHeight(1);
    obj.rectangle60:setMargins({left=15, right=15, bottom=3});
    obj.rectangle60:setColor("#fff");
    obj.rectangle60:setOpacity(0.3);

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.rectangle56);
    obj.rectangle61:setWidth(58);
    obj.rectangle61:setName("rectangle61");
    obj.rectangle61:setAlign("left");
    obj.rectangle61:setColor("transparent");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle61);
    obj.comboBox10:setField("AtualidadesC");
    obj.comboBox10:setItems({'0','+5','+10','+15'});
    obj.comboBox10:setValues({'01', '02','03', '04'});
    obj.comboBox10:setValue("01");
    obj.comboBox10:setName("comboBox10");
    obj.comboBox10:setAlign("client");
    obj.comboBox10:setTransparent(true);
    obj.comboBox10:setFontColor("#fff");
    obj.comboBox10:setFontSize(12);
    obj.comboBox10:setHorzTextAlign("center");
    obj.comboBox10:setVertTextAlign("center");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.rectangle56);
    obj.rectangle62:setWidth(52);
    obj.rectangle62:setName("rectangle62");
    obj.rectangle62:setAlign("left");
    obj.rectangle62:setColor("transparent");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle62);
    obj.edit17:setField("AtualidadesO");
    obj.edit17:setName("edit17");
    obj.edit17:setAlign("client");
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(12);
    obj.edit17:setFontColor("#fff");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVertTextAlign("center");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.edit17);
    obj.rectangle63:setName("rectangle63");
    obj.rectangle63:setAlign("bottom");
    obj.rectangle63:setHeight(1);
    obj.rectangle63:setMargins({left=15, right=15, bottom=3});
    obj.rectangle63:setColor("#fff");
    obj.rectangle63:setOpacity(0.3);

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.scrollBox1);
    obj.rectangle64:setColor("#181818");
    obj.rectangle64:setName("rectangle64");
    obj.rectangle64:setAlign("top");
    obj.rectangle64:setHeight(25);

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.rectangle64);
    obj.rectangle65:setWidth(137);
    obj.rectangle65:setName("rectangle65");
    obj.rectangle65:setAlign("left");
    obj.rectangle65:setColor("transparent");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle65);
    obj.label24:setHorzTextAlign("leading");
    obj.label24:setMargins({left=7});
    obj.label24:setText("Ciências ♦");
    obj.label24:setName("label24");
    obj.label24:setAlign("client");
    obj.label24:setFontSize(12);
    obj.label24:setFontColor("#fff");
    obj.label24:setVertTextAlign("center");

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.rectangle64);
    obj.rectangle66:setWidth(54);
    obj.rectangle66:setName("rectangle66");
    obj.rectangle66:setAlign("left");
    obj.rectangle66:setColor("transparent");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.rectangle66);
    obj.label25:setText("INT");
    obj.label25:setName("label25");
    obj.label25:setAlign("client");
    obj.label25:setFontSize(12);
    obj.label25:setFontColor("#fff");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setVertTextAlign("center");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.rectangle64);
    obj.rectangle67:setWidth(52);
    obj.rectangle67:setName("rectangle67");
    obj.rectangle67:setAlign("left");
    obj.rectangle67:setColor("transparent");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle67);
    obj.edit18:setField("CiênciasB");
    obj.edit18:setName("edit18");
    obj.edit18:setAlign("client");
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(12);
    obj.edit18:setFontColor("#fff");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.edit18);
    obj.rectangle68:setName("rectangle68");
    obj.rectangle68:setAlign("bottom");
    obj.rectangle68:setHeight(1);
    obj.rectangle68:setMargins({left=15, right=15, bottom=3});
    obj.rectangle68:setColor("#fff");
    obj.rectangle68:setOpacity(0.3);

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.rectangle64);
    obj.rectangle69:setWidth(58);
    obj.rectangle69:setName("rectangle69");
    obj.rectangle69:setAlign("left");
    obj.rectangle69:setColor("transparent");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.rectangle69);
    obj.comboBox11:setField("CiênciasC");
    obj.comboBox11:setItems({'0','+5','+10','+15'});
    obj.comboBox11:setValues({'01', '02','03', '04'});
    obj.comboBox11:setValue("01");
    obj.comboBox11:setName("comboBox11");
    obj.comboBox11:setAlign("client");
    obj.comboBox11:setTransparent(true);
    obj.comboBox11:setFontColor("#fff");
    obj.comboBox11:setFontSize(12);
    obj.comboBox11:setHorzTextAlign("center");
    obj.comboBox11:setVertTextAlign("center");

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.rectangle64);
    obj.rectangle70:setWidth(52);
    obj.rectangle70:setName("rectangle70");
    obj.rectangle70:setAlign("left");
    obj.rectangle70:setColor("transparent");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle70);
    obj.edit19:setField("CiênciasO");
    obj.edit19:setName("edit19");
    obj.edit19:setAlign("client");
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(12);
    obj.edit19:setFontColor("#fff");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.edit19);
    obj.rectangle71:setName("rectangle71");
    obj.rectangle71:setAlign("bottom");
    obj.rectangle71:setHeight(1);
    obj.rectangle71:setMargins({left=15, right=15, bottom=3});
    obj.rectangle71:setColor("#fff");
    obj.rectangle71:setOpacity(0.3);

    obj.rectangle72 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle72:setParent(obj.scrollBox1);
    obj.rectangle72:setColor("#202020");
    obj.rectangle72:setName("rectangle72");
    obj.rectangle72:setAlign("top");
    obj.rectangle72:setHeight(25);

    obj.rectangle73 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle73:setParent(obj.rectangle72);
    obj.rectangle73:setWidth(137);
    obj.rectangle73:setName("rectangle73");
    obj.rectangle73:setAlign("left");
    obj.rectangle73:setColor("transparent");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.rectangle73);
    obj.label26:setHorzTextAlign("leading");
    obj.label26:setMargins({left=7});
    obj.label26:setText("Crime ♦ ⭐");
    obj.label26:setName("label26");
    obj.label26:setAlign("client");
    obj.label26:setFontSize(12);
    obj.label26:setFontColor("#fff");
    obj.label26:setVertTextAlign("center");

    obj.rectangle74 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.rectangle72);
    obj.rectangle74:setWidth(54);
    obj.rectangle74:setName("rectangle74");
    obj.rectangle74:setAlign("left");
    obj.rectangle74:setColor("transparent");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.rectangle74);
    obj.label27:setText("AGI");
    obj.label27:setName("label27");
    obj.label27:setAlign("client");
    obj.label27:setFontSize(12);
    obj.label27:setFontColor("#fff");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setVertTextAlign("center");

    obj.rectangle75 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.rectangle72);
    obj.rectangle75:setWidth(52);
    obj.rectangle75:setName("rectangle75");
    obj.rectangle75:setAlign("left");
    obj.rectangle75:setColor("transparent");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle75);
    obj.edit20:setField("CrimeB");
    obj.edit20:setName("edit20");
    obj.edit20:setAlign("client");
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(12);
    obj.edit20:setFontColor("#fff");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");

    obj.rectangle76 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.edit20);
    obj.rectangle76:setName("rectangle76");
    obj.rectangle76:setAlign("bottom");
    obj.rectangle76:setHeight(1);
    obj.rectangle76:setMargins({left=15, right=15, bottom=3});
    obj.rectangle76:setColor("#fff");
    obj.rectangle76:setOpacity(0.3);

    obj.rectangle77 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.rectangle72);
    obj.rectangle77:setWidth(58);
    obj.rectangle77:setName("rectangle77");
    obj.rectangle77:setAlign("left");
    obj.rectangle77:setColor("transparent");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.rectangle77);
    obj.comboBox12:setField("CrimeC");
    obj.comboBox12:setItems({'0','+5','+10','+15'});
    obj.comboBox12:setValues({'01', '02','03', '04'});
    obj.comboBox12:setValue("01");
    obj.comboBox12:setName("comboBox12");
    obj.comboBox12:setAlign("client");
    obj.comboBox12:setTransparent(true);
    obj.comboBox12:setFontColor("#fff");
    obj.comboBox12:setFontSize(12);
    obj.comboBox12:setHorzTextAlign("center");
    obj.comboBox12:setVertTextAlign("center");

    obj.rectangle78 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.rectangle72);
    obj.rectangle78:setWidth(52);
    obj.rectangle78:setName("rectangle78");
    obj.rectangle78:setAlign("left");
    obj.rectangle78:setColor("transparent");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle78);
    obj.edit21:setField("CrimeO");
    obj.edit21:setName("edit21");
    obj.edit21:setAlign("client");
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(12);
    obj.edit21:setFontColor("#fff");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");

    obj.rectangle79 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.edit21);
    obj.rectangle79:setName("rectangle79");
    obj.rectangle79:setAlign("bottom");
    obj.rectangle79:setHeight(1);
    obj.rectangle79:setMargins({left=15, right=15, bottom=3});
    obj.rectangle79:setColor("#fff");
    obj.rectangle79:setOpacity(0.3);

    obj.rectangle80 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.scrollBox1);
    obj.rectangle80:setColor("#181818");
    obj.rectangle80:setName("rectangle80");
    obj.rectangle80:setAlign("top");
    obj.rectangle80:setHeight(25);

    obj.rectangle81 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.rectangle80);
    obj.rectangle81:setWidth(137);
    obj.rectangle81:setName("rectangle81");
    obj.rectangle81:setAlign("left");
    obj.rectangle81:setColor("transparent");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.rectangle81);
    obj.label28:setHorzTextAlign("leading");
    obj.label28:setMargins({left=7});
    obj.label28:setText("Diplomacia");
    obj.label28:setName("label28");
    obj.label28:setAlign("client");
    obj.label28:setFontSize(12);
    obj.label28:setFontColor("#fff");
    obj.label28:setVertTextAlign("center");

    obj.rectangle82 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.rectangle80);
    obj.rectangle82:setWidth(54);
    obj.rectangle82:setName("rectangle82");
    obj.rectangle82:setAlign("left");
    obj.rectangle82:setColor("transparent");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.rectangle82);
    obj.label29:setText("PRE");
    obj.label29:setName("label29");
    obj.label29:setAlign("client");
    obj.label29:setFontSize(12);
    obj.label29:setFontColor("#fff");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setVertTextAlign("center");

    obj.rectangle83 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.rectangle80);
    obj.rectangle83:setWidth(52);
    obj.rectangle83:setName("rectangle83");
    obj.rectangle83:setAlign("left");
    obj.rectangle83:setColor("transparent");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle83);
    obj.edit22:setField("DiplomaciaB");
    obj.edit22:setName("edit22");
    obj.edit22:setAlign("client");
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(12);
    obj.edit22:setFontColor("#fff");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");

    obj.rectangle84 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.edit22);
    obj.rectangle84:setName("rectangle84");
    obj.rectangle84:setAlign("bottom");
    obj.rectangle84:setHeight(1);
    obj.rectangle84:setMargins({left=15, right=15, bottom=3});
    obj.rectangle84:setColor("#fff");
    obj.rectangle84:setOpacity(0.3);

    obj.rectangle85 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.rectangle80);
    obj.rectangle85:setWidth(58);
    obj.rectangle85:setName("rectangle85");
    obj.rectangle85:setAlign("left");
    obj.rectangle85:setColor("transparent");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.rectangle85);
    obj.comboBox13:setField("DiplomaciaC");
    obj.comboBox13:setItems({'0','+5','+10','+15'});
    obj.comboBox13:setValues({'01', '02','03', '04'});
    obj.comboBox13:setValue("01");
    obj.comboBox13:setName("comboBox13");
    obj.comboBox13:setAlign("client");
    obj.comboBox13:setTransparent(true);
    obj.comboBox13:setFontColor("#fff");
    obj.comboBox13:setFontSize(12);
    obj.comboBox13:setHorzTextAlign("center");
    obj.comboBox13:setVertTextAlign("center");

    obj.rectangle86 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.rectangle80);
    obj.rectangle86:setWidth(52);
    obj.rectangle86:setName("rectangle86");
    obj.rectangle86:setAlign("left");
    obj.rectangle86:setColor("transparent");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle86);
    obj.edit23:setField("DiplomaciaO");
    obj.edit23:setName("edit23");
    obj.edit23:setAlign("client");
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(12);
    obj.edit23:setFontColor("#fff");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");

    obj.rectangle87 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.edit23);
    obj.rectangle87:setName("rectangle87");
    obj.rectangle87:setAlign("bottom");
    obj.rectangle87:setHeight(1);
    obj.rectangle87:setMargins({left=15, right=15, bottom=3});
    obj.rectangle87:setColor("#fff");
    obj.rectangle87:setOpacity(0.3);

    obj.rectangle88 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.scrollBox1);
    obj.rectangle88:setColor("#202020");
    obj.rectangle88:setName("rectangle88");
    obj.rectangle88:setAlign("top");
    obj.rectangle88:setHeight(25);

    obj.rectangle89 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.rectangle88);
    obj.rectangle89:setWidth(137);
    obj.rectangle89:setName("rectangle89");
    obj.rectangle89:setAlign("left");
    obj.rectangle89:setColor("transparent");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.rectangle89);
    obj.label30:setHorzTextAlign("leading");
    obj.label30:setMargins({left=7});
    obj.label30:setText("Enganação");
    obj.label30:setName("label30");
    obj.label30:setAlign("client");
    obj.label30:setFontSize(12);
    obj.label30:setFontColor("#fff");
    obj.label30:setVertTextAlign("center");

    obj.rectangle90 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.rectangle88);
    obj.rectangle90:setWidth(54);
    obj.rectangle90:setName("rectangle90");
    obj.rectangle90:setAlign("left");
    obj.rectangle90:setColor("transparent");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.rectangle90);
    obj.label31:setText("PRE");
    obj.label31:setName("label31");
    obj.label31:setAlign("client");
    obj.label31:setFontSize(12);
    obj.label31:setFontColor("#fff");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setVertTextAlign("center");

    obj.rectangle91 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.rectangle88);
    obj.rectangle91:setWidth(52);
    obj.rectangle91:setName("rectangle91");
    obj.rectangle91:setAlign("left");
    obj.rectangle91:setColor("transparent");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle91);
    obj.edit24:setField("EnganaçãoB");
    obj.edit24:setName("edit24");
    obj.edit24:setAlign("client");
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(12);
    obj.edit24:setFontColor("#fff");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");

    obj.rectangle92 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.edit24);
    obj.rectangle92:setName("rectangle92");
    obj.rectangle92:setAlign("bottom");
    obj.rectangle92:setHeight(1);
    obj.rectangle92:setMargins({left=15, right=15, bottom=3});
    obj.rectangle92:setColor("#fff");
    obj.rectangle92:setOpacity(0.3);

    obj.rectangle93 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.rectangle88);
    obj.rectangle93:setWidth(58);
    obj.rectangle93:setName("rectangle93");
    obj.rectangle93:setAlign("left");
    obj.rectangle93:setColor("transparent");

    obj.comboBox14 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox14:setParent(obj.rectangle93);
    obj.comboBox14:setField("EnganaçãoC");
    obj.comboBox14:setItems({'0','+5','+10','+15'});
    obj.comboBox14:setValues({'01', '02','03', '04'});
    obj.comboBox14:setValue("01");
    obj.comboBox14:setName("comboBox14");
    obj.comboBox14:setAlign("client");
    obj.comboBox14:setTransparent(true);
    obj.comboBox14:setFontColor("#fff");
    obj.comboBox14:setFontSize(12);
    obj.comboBox14:setHorzTextAlign("center");
    obj.comboBox14:setVertTextAlign("center");

    obj.rectangle94 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.rectangle88);
    obj.rectangle94:setWidth(52);
    obj.rectangle94:setName("rectangle94");
    obj.rectangle94:setAlign("left");
    obj.rectangle94:setColor("transparent");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle94);
    obj.edit25:setField("EnganaçãoO");
    obj.edit25:setName("edit25");
    obj.edit25:setAlign("client");
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(12);
    obj.edit25:setFontColor("#fff");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");

    obj.rectangle95 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.edit25);
    obj.rectangle95:setName("rectangle95");
    obj.rectangle95:setAlign("bottom");
    obj.rectangle95:setHeight(1);
    obj.rectangle95:setMargins({left=15, right=15, bottom=3});
    obj.rectangle95:setColor("#fff");
    obj.rectangle95:setOpacity(0.3);

    obj.rectangle96 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.scrollBox1);
    obj.rectangle96:setColor("#181818");
    obj.rectangle96:setName("rectangle96");
    obj.rectangle96:setAlign("top");
    obj.rectangle96:setHeight(25);

    obj.rectangle97 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.rectangle96);
    obj.rectangle97:setWidth(137);
    obj.rectangle97:setName("rectangle97");
    obj.rectangle97:setAlign("left");
    obj.rectangle97:setColor("transparent");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.rectangle97);
    obj.label32:setHorzTextAlign("leading");
    obj.label32:setMargins({left=7});
    obj.label32:setText("Fortitude");
    obj.label32:setName("label32");
    obj.label32:setAlign("client");
    obj.label32:setFontSize(12);
    obj.label32:setFontColor("#fff");
    obj.label32:setVertTextAlign("center");

    obj.rectangle98 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.rectangle96);
    obj.rectangle98:setWidth(54);
    obj.rectangle98:setName("rectangle98");
    obj.rectangle98:setAlign("left");
    obj.rectangle98:setColor("transparent");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.rectangle98);
    obj.label33:setText("VIG");
    obj.label33:setName("label33");
    obj.label33:setAlign("client");
    obj.label33:setFontSize(12);
    obj.label33:setFontColor("#fff");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setVertTextAlign("center");

    obj.rectangle99 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle99:setParent(obj.rectangle96);
    obj.rectangle99:setWidth(52);
    obj.rectangle99:setName("rectangle99");
    obj.rectangle99:setAlign("left");
    obj.rectangle99:setColor("transparent");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle99);
    obj.edit26:setField("FortitudeB");
    obj.edit26:setName("edit26");
    obj.edit26:setAlign("client");
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(12);
    obj.edit26:setFontColor("#fff");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");

    obj.rectangle100 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle100:setParent(obj.edit26);
    obj.rectangle100:setName("rectangle100");
    obj.rectangle100:setAlign("bottom");
    obj.rectangle100:setHeight(1);
    obj.rectangle100:setMargins({left=15, right=15, bottom=3});
    obj.rectangle100:setColor("#fff");
    obj.rectangle100:setOpacity(0.3);

    obj.rectangle101 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle101:setParent(obj.rectangle96);
    obj.rectangle101:setWidth(58);
    obj.rectangle101:setName("rectangle101");
    obj.rectangle101:setAlign("left");
    obj.rectangle101:setColor("transparent");

    obj.comboBox15 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox15:setParent(obj.rectangle101);
    obj.comboBox15:setField("FortitudeC");
    obj.comboBox15:setItems({'0','+5','+10','+15'});
    obj.comboBox15:setValues({'01', '02','03', '04'});
    obj.comboBox15:setValue("01");
    obj.comboBox15:setName("comboBox15");
    obj.comboBox15:setAlign("client");
    obj.comboBox15:setTransparent(true);
    obj.comboBox15:setFontColor("#fff");
    obj.comboBox15:setFontSize(12);
    obj.comboBox15:setHorzTextAlign("center");
    obj.comboBox15:setVertTextAlign("center");

    obj.rectangle102 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle102:setParent(obj.rectangle96);
    obj.rectangle102:setWidth(52);
    obj.rectangle102:setName("rectangle102");
    obj.rectangle102:setAlign("left");
    obj.rectangle102:setColor("transparent");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle102);
    obj.edit27:setField("FortitudeO");
    obj.edit27:setName("edit27");
    obj.edit27:setAlign("client");
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(12);
    obj.edit27:setFontColor("#fff");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");

    obj.rectangle103 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle103:setParent(obj.edit27);
    obj.rectangle103:setName("rectangle103");
    obj.rectangle103:setAlign("bottom");
    obj.rectangle103:setHeight(1);
    obj.rectangle103:setMargins({left=15, right=15, bottom=3});
    obj.rectangle103:setColor("#fff");
    obj.rectangle103:setOpacity(0.3);

    obj.rectangle104 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle104:setParent(obj.scrollBox1);
    obj.rectangle104:setColor("#202020");
    obj.rectangle104:setName("rectangle104");
    obj.rectangle104:setAlign("top");
    obj.rectangle104:setHeight(25);

    obj.rectangle105 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle105:setParent(obj.rectangle104);
    obj.rectangle105:setWidth(137);
    obj.rectangle105:setName("rectangle105");
    obj.rectangle105:setAlign("left");
    obj.rectangle105:setColor("transparent");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.rectangle105);
    obj.label34:setHorzTextAlign("leading");
    obj.label34:setMargins({left=7});
    obj.label34:setText("Furtividade ⭐");
    obj.label34:setName("label34");
    obj.label34:setAlign("client");
    obj.label34:setFontSize(12);
    obj.label34:setFontColor("#fff");
    obj.label34:setVertTextAlign("center");

    obj.rectangle106 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle106:setParent(obj.rectangle104);
    obj.rectangle106:setWidth(54);
    obj.rectangle106:setName("rectangle106");
    obj.rectangle106:setAlign("left");
    obj.rectangle106:setColor("transparent");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.rectangle106);
    obj.label35:setText("AGI");
    obj.label35:setName("label35");
    obj.label35:setAlign("client");
    obj.label35:setFontSize(12);
    obj.label35:setFontColor("#fff");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setVertTextAlign("center");

    obj.rectangle107 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle107:setParent(obj.rectangle104);
    obj.rectangle107:setWidth(52);
    obj.rectangle107:setName("rectangle107");
    obj.rectangle107:setAlign("left");
    obj.rectangle107:setColor("transparent");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle107);
    obj.edit28:setField("FurtividadeB");
    obj.edit28:setName("edit28");
    obj.edit28:setAlign("client");
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(12);
    obj.edit28:setFontColor("#fff");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");

    obj.rectangle108 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle108:setParent(obj.edit28);
    obj.rectangle108:setName("rectangle108");
    obj.rectangle108:setAlign("bottom");
    obj.rectangle108:setHeight(1);
    obj.rectangle108:setMargins({left=15, right=15, bottom=3});
    obj.rectangle108:setColor("#fff");
    obj.rectangle108:setOpacity(0.3);

    obj.rectangle109 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle109:setParent(obj.rectangle104);
    obj.rectangle109:setWidth(58);
    obj.rectangle109:setName("rectangle109");
    obj.rectangle109:setAlign("left");
    obj.rectangle109:setColor("transparent");

    obj.comboBox16 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox16:setParent(obj.rectangle109);
    obj.comboBox16:setField("FurtividadeC");
    obj.comboBox16:setItems({'0','+5','+10','+15'});
    obj.comboBox16:setValues({'01', '02','03', '04'});
    obj.comboBox16:setValue("01");
    obj.comboBox16:setName("comboBox16");
    obj.comboBox16:setAlign("client");
    obj.comboBox16:setTransparent(true);
    obj.comboBox16:setFontColor("#fff");
    obj.comboBox16:setFontSize(12);
    obj.comboBox16:setHorzTextAlign("center");
    obj.comboBox16:setVertTextAlign("center");

    obj.rectangle110 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle110:setParent(obj.rectangle104);
    obj.rectangle110:setWidth(52);
    obj.rectangle110:setName("rectangle110");
    obj.rectangle110:setAlign("left");
    obj.rectangle110:setColor("transparent");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle110);
    obj.edit29:setField("FurtividadeO");
    obj.edit29:setName("edit29");
    obj.edit29:setAlign("client");
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(12);
    obj.edit29:setFontColor("#fff");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");

    obj.rectangle111 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle111:setParent(obj.edit29);
    obj.rectangle111:setName("rectangle111");
    obj.rectangle111:setAlign("bottom");
    obj.rectangle111:setHeight(1);
    obj.rectangle111:setMargins({left=15, right=15, bottom=3});
    obj.rectangle111:setColor("#fff");
    obj.rectangle111:setOpacity(0.3);

    obj.rectangle112 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle112:setParent(obj.scrollBox1);
    obj.rectangle112:setColor("#181818");
    obj.rectangle112:setName("rectangle112");
    obj.rectangle112:setAlign("top");
    obj.rectangle112:setHeight(25);

    obj.rectangle113 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle113:setParent(obj.rectangle112);
    obj.rectangle113:setWidth(137);
    obj.rectangle113:setName("rectangle113");
    obj.rectangle113:setAlign("left");
    obj.rectangle113:setColor("transparent");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.rectangle113);
    obj.label36:setHorzTextAlign("leading");
    obj.label36:setMargins({left=7});
    obj.label36:setText("Iniciativa");
    obj.label36:setName("label36");
    obj.label36:setAlign("client");
    obj.label36:setFontSize(12);
    obj.label36:setFontColor("#fff");
    obj.label36:setVertTextAlign("center");

    obj.rectangle114 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle114:setParent(obj.rectangle112);
    obj.rectangle114:setWidth(54);
    obj.rectangle114:setName("rectangle114");
    obj.rectangle114:setAlign("left");
    obj.rectangle114:setColor("transparent");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.rectangle114);
    obj.label37:setText("AGI");
    obj.label37:setName("label37");
    obj.label37:setAlign("client");
    obj.label37:setFontSize(12);
    obj.label37:setFontColor("#fff");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setVertTextAlign("center");

    obj.rectangle115 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle115:setParent(obj.rectangle112);
    obj.rectangle115:setWidth(52);
    obj.rectangle115:setName("rectangle115");
    obj.rectangle115:setAlign("left");
    obj.rectangle115:setColor("transparent");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle115);
    obj.edit30:setField("IniciativaB");
    obj.edit30:setName("edit30");
    obj.edit30:setAlign("client");
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(12);
    obj.edit30:setFontColor("#fff");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");

    obj.rectangle116 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle116:setParent(obj.edit30);
    obj.rectangle116:setName("rectangle116");
    obj.rectangle116:setAlign("bottom");
    obj.rectangle116:setHeight(1);
    obj.rectangle116:setMargins({left=15, right=15, bottom=3});
    obj.rectangle116:setColor("#fff");
    obj.rectangle116:setOpacity(0.3);

    obj.rectangle117 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle117:setParent(obj.rectangle112);
    obj.rectangle117:setWidth(58);
    obj.rectangle117:setName("rectangle117");
    obj.rectangle117:setAlign("left");
    obj.rectangle117:setColor("transparent");

    obj.comboBox17 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox17:setParent(obj.rectangle117);
    obj.comboBox17:setField("IniciativaC");
    obj.comboBox17:setItems({'0','+5','+10','+15'});
    obj.comboBox17:setValues({'01', '02','03', '04'});
    obj.comboBox17:setValue("01");
    obj.comboBox17:setName("comboBox17");
    obj.comboBox17:setAlign("client");
    obj.comboBox17:setTransparent(true);
    obj.comboBox17:setFontColor("#fff");
    obj.comboBox17:setFontSize(12);
    obj.comboBox17:setHorzTextAlign("center");
    obj.comboBox17:setVertTextAlign("center");

    obj.rectangle118 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle118:setParent(obj.rectangle112);
    obj.rectangle118:setWidth(52);
    obj.rectangle118:setName("rectangle118");
    obj.rectangle118:setAlign("left");
    obj.rectangle118:setColor("transparent");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle118);
    obj.edit31:setField("IniciativaO");
    obj.edit31:setName("edit31");
    obj.edit31:setAlign("client");
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(12);
    obj.edit31:setFontColor("#fff");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");

    obj.rectangle119 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle119:setParent(obj.edit31);
    obj.rectangle119:setName("rectangle119");
    obj.rectangle119:setAlign("bottom");
    obj.rectangle119:setHeight(1);
    obj.rectangle119:setMargins({left=15, right=15, bottom=3});
    obj.rectangle119:setColor("#fff");
    obj.rectangle119:setOpacity(0.3);

    obj.rectangle120 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle120:setParent(obj.scrollBox1);
    obj.rectangle120:setColor("#202020");
    obj.rectangle120:setName("rectangle120");
    obj.rectangle120:setAlign("top");
    obj.rectangle120:setHeight(25);

    obj.rectangle121 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle121:setParent(obj.rectangle120);
    obj.rectangle121:setWidth(137);
    obj.rectangle121:setName("rectangle121");
    obj.rectangle121:setAlign("left");
    obj.rectangle121:setColor("transparent");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.rectangle121);
    obj.label38:setHorzTextAlign("leading");
    obj.label38:setMargins({left=7});
    obj.label38:setText("Intimidação");
    obj.label38:setName("label38");
    obj.label38:setAlign("client");
    obj.label38:setFontSize(12);
    obj.label38:setFontColor("#fff");
    obj.label38:setVertTextAlign("center");

    obj.rectangle122 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle122:setParent(obj.rectangle120);
    obj.rectangle122:setWidth(54);
    obj.rectangle122:setName("rectangle122");
    obj.rectangle122:setAlign("left");
    obj.rectangle122:setColor("transparent");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.rectangle122);
    obj.label39:setText("PRE");
    obj.label39:setName("label39");
    obj.label39:setAlign("client");
    obj.label39:setFontSize(12);
    obj.label39:setFontColor("#fff");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setVertTextAlign("center");

    obj.rectangle123 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle123:setParent(obj.rectangle120);
    obj.rectangle123:setWidth(52);
    obj.rectangle123:setName("rectangle123");
    obj.rectangle123:setAlign("left");
    obj.rectangle123:setColor("transparent");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle123);
    obj.edit32:setField("IntimidaçãoB");
    obj.edit32:setName("edit32");
    obj.edit32:setAlign("client");
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(12);
    obj.edit32:setFontColor("#fff");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");

    obj.rectangle124 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle124:setParent(obj.edit32);
    obj.rectangle124:setName("rectangle124");
    obj.rectangle124:setAlign("bottom");
    obj.rectangle124:setHeight(1);
    obj.rectangle124:setMargins({left=15, right=15, bottom=3});
    obj.rectangle124:setColor("#fff");
    obj.rectangle124:setOpacity(0.3);

    obj.rectangle125 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle125:setParent(obj.rectangle120);
    obj.rectangle125:setWidth(58);
    obj.rectangle125:setName("rectangle125");
    obj.rectangle125:setAlign("left");
    obj.rectangle125:setColor("transparent");

    obj.comboBox18 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox18:setParent(obj.rectangle125);
    obj.comboBox18:setField("IntimidaçãoC");
    obj.comboBox18:setItems({'0','+5','+10','+15'});
    obj.comboBox18:setValues({'01', '02','03', '04'});
    obj.comboBox18:setValue("01");
    obj.comboBox18:setName("comboBox18");
    obj.comboBox18:setAlign("client");
    obj.comboBox18:setTransparent(true);
    obj.comboBox18:setFontColor("#fff");
    obj.comboBox18:setFontSize(12);
    obj.comboBox18:setHorzTextAlign("center");
    obj.comboBox18:setVertTextAlign("center");

    obj.rectangle126 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle126:setParent(obj.rectangle120);
    obj.rectangle126:setWidth(52);
    obj.rectangle126:setName("rectangle126");
    obj.rectangle126:setAlign("left");
    obj.rectangle126:setColor("transparent");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle126);
    obj.edit33:setField("IntimidaçãoO");
    obj.edit33:setName("edit33");
    obj.edit33:setAlign("client");
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(12);
    obj.edit33:setFontColor("#fff");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");

    obj.rectangle127 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle127:setParent(obj.edit33);
    obj.rectangle127:setName("rectangle127");
    obj.rectangle127:setAlign("bottom");
    obj.rectangle127:setHeight(1);
    obj.rectangle127:setMargins({left=15, right=15, bottom=3});
    obj.rectangle127:setColor("#fff");
    obj.rectangle127:setOpacity(0.3);

    obj.rectangle128 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle128:setParent(obj.scrollBox1);
    obj.rectangle128:setColor("#181818");
    obj.rectangle128:setName("rectangle128");
    obj.rectangle128:setAlign("top");
    obj.rectangle128:setHeight(25);

    obj.rectangle129 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle129:setParent(obj.rectangle128);
    obj.rectangle129:setWidth(137);
    obj.rectangle129:setName("rectangle129");
    obj.rectangle129:setAlign("left");
    obj.rectangle129:setColor("transparent");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.rectangle129);
    obj.label40:setHorzTextAlign("leading");
    obj.label40:setMargins({left=7});
    obj.label40:setText("Intuição");
    obj.label40:setName("label40");
    obj.label40:setAlign("client");
    obj.label40:setFontSize(12);
    obj.label40:setFontColor("#fff");
    obj.label40:setVertTextAlign("center");

    obj.rectangle130 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle130:setParent(obj.rectangle128);
    obj.rectangle130:setWidth(54);
    obj.rectangle130:setName("rectangle130");
    obj.rectangle130:setAlign("left");
    obj.rectangle130:setColor("transparent");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.rectangle130);
    obj.label41:setText("INT");
    obj.label41:setName("label41");
    obj.label41:setAlign("client");
    obj.label41:setFontSize(12);
    obj.label41:setFontColor("#fff");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setVertTextAlign("center");

    obj.rectangle131 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle131:setParent(obj.rectangle128);
    obj.rectangle131:setWidth(52);
    obj.rectangle131:setName("rectangle131");
    obj.rectangle131:setAlign("left");
    obj.rectangle131:setColor("transparent");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle131);
    obj.edit34:setField("IntuiçãoB");
    obj.edit34:setName("edit34");
    obj.edit34:setAlign("client");
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(12);
    obj.edit34:setFontColor("#fff");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");

    obj.rectangle132 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle132:setParent(obj.edit34);
    obj.rectangle132:setName("rectangle132");
    obj.rectangle132:setAlign("bottom");
    obj.rectangle132:setHeight(1);
    obj.rectangle132:setMargins({left=15, right=15, bottom=3});
    obj.rectangle132:setColor("#fff");
    obj.rectangle132:setOpacity(0.3);

    obj.rectangle133 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle133:setParent(obj.rectangle128);
    obj.rectangle133:setWidth(58);
    obj.rectangle133:setName("rectangle133");
    obj.rectangle133:setAlign("left");
    obj.rectangle133:setColor("transparent");

    obj.comboBox19 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox19:setParent(obj.rectangle133);
    obj.comboBox19:setField("IntuiçãoC");
    obj.comboBox19:setItems({'0','+5','+10','+15'});
    obj.comboBox19:setValues({'01', '02','03', '04'});
    obj.comboBox19:setValue("01");
    obj.comboBox19:setName("comboBox19");
    obj.comboBox19:setAlign("client");
    obj.comboBox19:setTransparent(true);
    obj.comboBox19:setFontColor("#fff");
    obj.comboBox19:setFontSize(12);
    obj.comboBox19:setHorzTextAlign("center");
    obj.comboBox19:setVertTextAlign("center");

    obj.rectangle134 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle134:setParent(obj.rectangle128);
    obj.rectangle134:setWidth(52);
    obj.rectangle134:setName("rectangle134");
    obj.rectangle134:setAlign("left");
    obj.rectangle134:setColor("transparent");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle134);
    obj.edit35:setField("IntuiçãoO");
    obj.edit35:setName("edit35");
    obj.edit35:setAlign("client");
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(12);
    obj.edit35:setFontColor("#fff");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");

    obj.rectangle135 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle135:setParent(obj.edit35);
    obj.rectangle135:setName("rectangle135");
    obj.rectangle135:setAlign("bottom");
    obj.rectangle135:setHeight(1);
    obj.rectangle135:setMargins({left=15, right=15, bottom=3});
    obj.rectangle135:setColor("#fff");
    obj.rectangle135:setOpacity(0.3);

    obj.rectangle136 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle136:setParent(obj.scrollBox1);
    obj.rectangle136:setColor("#202020");
    obj.rectangle136:setName("rectangle136");
    obj.rectangle136:setAlign("top");
    obj.rectangle136:setHeight(25);

    obj.rectangle137 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle137:setParent(obj.rectangle136);
    obj.rectangle137:setWidth(137);
    obj.rectangle137:setName("rectangle137");
    obj.rectangle137:setAlign("left");
    obj.rectangle137:setColor("transparent");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.rectangle137);
    obj.label42:setHorzTextAlign("leading");
    obj.label42:setMargins({left=7});
    obj.label42:setText("Investigação ⭐");
    obj.label42:setName("label42");
    obj.label42:setAlign("client");
    obj.label42:setFontSize(12);
    obj.label42:setFontColor("#fff");
    obj.label42:setVertTextAlign("center");

    obj.rectangle138 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle138:setParent(obj.rectangle136);
    obj.rectangle138:setWidth(54);
    obj.rectangle138:setName("rectangle138");
    obj.rectangle138:setAlign("left");
    obj.rectangle138:setColor("transparent");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.rectangle138);
    obj.label43:setText("INT");
    obj.label43:setName("label43");
    obj.label43:setAlign("client");
    obj.label43:setFontSize(12);
    obj.label43:setFontColor("#fff");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setVertTextAlign("center");

    obj.rectangle139 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle139:setParent(obj.rectangle136);
    obj.rectangle139:setWidth(52);
    obj.rectangle139:setName("rectangle139");
    obj.rectangle139:setAlign("left");
    obj.rectangle139:setColor("transparent");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle139);
    obj.edit36:setField("InvestigaçãoB");
    obj.edit36:setName("edit36");
    obj.edit36:setAlign("client");
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(12);
    obj.edit36:setFontColor("#fff");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");

    obj.rectangle140 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle140:setParent(obj.edit36);
    obj.rectangle140:setName("rectangle140");
    obj.rectangle140:setAlign("bottom");
    obj.rectangle140:setHeight(1);
    obj.rectangle140:setMargins({left=15, right=15, bottom=3});
    obj.rectangle140:setColor("#fff");
    obj.rectangle140:setOpacity(0.3);

    obj.rectangle141 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle141:setParent(obj.rectangle136);
    obj.rectangle141:setWidth(58);
    obj.rectangle141:setName("rectangle141");
    obj.rectangle141:setAlign("left");
    obj.rectangle141:setColor("transparent");

    obj.comboBox20 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox20:setParent(obj.rectangle141);
    obj.comboBox20:setField("InvestigaçãoC");
    obj.comboBox20:setItems({'0','+5','+10','+15'});
    obj.comboBox20:setValues({'01', '02','03', '04'});
    obj.comboBox20:setValue("01");
    obj.comboBox20:setName("comboBox20");
    obj.comboBox20:setAlign("client");
    obj.comboBox20:setTransparent(true);
    obj.comboBox20:setFontColor("#fff");
    obj.comboBox20:setFontSize(12);
    obj.comboBox20:setHorzTextAlign("center");
    obj.comboBox20:setVertTextAlign("center");

    obj.rectangle142 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle142:setParent(obj.rectangle136);
    obj.rectangle142:setWidth(52);
    obj.rectangle142:setName("rectangle142");
    obj.rectangle142:setAlign("left");
    obj.rectangle142:setColor("transparent");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.rectangle142);
    obj.edit37:setField("InvestigaçãoO");
    obj.edit37:setName("edit37");
    obj.edit37:setAlign("client");
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(12);
    obj.edit37:setFontColor("#fff");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");

    obj.rectangle143 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle143:setParent(obj.edit37);
    obj.rectangle143:setName("rectangle143");
    obj.rectangle143:setAlign("bottom");
    obj.rectangle143:setHeight(1);
    obj.rectangle143:setMargins({left=15, right=15, bottom=3});
    obj.rectangle143:setColor("#fff");
    obj.rectangle143:setOpacity(0.3);

    obj.rectangle144 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle144:setParent(obj.scrollBox1);
    obj.rectangle144:setColor("#181818");
    obj.rectangle144:setName("rectangle144");
    obj.rectangle144:setAlign("top");
    obj.rectangle144:setHeight(25);

    obj.rectangle145 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle145:setParent(obj.rectangle144);
    obj.rectangle145:setWidth(137);
    obj.rectangle145:setName("rectangle145");
    obj.rectangle145:setAlign("left");
    obj.rectangle145:setColor("transparent");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.rectangle145);
    obj.label44:setHorzTextAlign("leading");
    obj.label44:setMargins({left=7});
    obj.label44:setText("Luta");
    obj.label44:setName("label44");
    obj.label44:setAlign("client");
    obj.label44:setFontSize(12);
    obj.label44:setFontColor("#fff");
    obj.label44:setVertTextAlign("center");

    obj.rectangle146 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle146:setParent(obj.rectangle144);
    obj.rectangle146:setWidth(54);
    obj.rectangle146:setName("rectangle146");
    obj.rectangle146:setAlign("left");
    obj.rectangle146:setColor("transparent");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.rectangle146);
    obj.label45:setText("FOR");
    obj.label45:setName("label45");
    obj.label45:setAlign("client");
    obj.label45:setFontSize(12);
    obj.label45:setFontColor("#fff");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setVertTextAlign("center");

    obj.rectangle147 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle147:setParent(obj.rectangle144);
    obj.rectangle147:setWidth(52);
    obj.rectangle147:setName("rectangle147");
    obj.rectangle147:setAlign("left");
    obj.rectangle147:setColor("transparent");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.rectangle147);
    obj.edit38:setField("LutaB");
    obj.edit38:setName("edit38");
    obj.edit38:setAlign("client");
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(12);
    obj.edit38:setFontColor("#fff");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");

    obj.rectangle148 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle148:setParent(obj.edit38);
    obj.rectangle148:setName("rectangle148");
    obj.rectangle148:setAlign("bottom");
    obj.rectangle148:setHeight(1);
    obj.rectangle148:setMargins({left=15, right=15, bottom=3});
    obj.rectangle148:setColor("#fff");
    obj.rectangle148:setOpacity(0.3);

    obj.rectangle149 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle149:setParent(obj.rectangle144);
    obj.rectangle149:setWidth(58);
    obj.rectangle149:setName("rectangle149");
    obj.rectangle149:setAlign("left");
    obj.rectangle149:setColor("transparent");

    obj.comboBox21 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox21:setParent(obj.rectangle149);
    obj.comboBox21:setField("LutaC");
    obj.comboBox21:setItems({'0','+5','+10','+15'});
    obj.comboBox21:setValues({'01', '02','03', '04'});
    obj.comboBox21:setValue("01");
    obj.comboBox21:setName("comboBox21");
    obj.comboBox21:setAlign("client");
    obj.comboBox21:setTransparent(true);
    obj.comboBox21:setFontColor("#fff");
    obj.comboBox21:setFontSize(12);
    obj.comboBox21:setHorzTextAlign("center");
    obj.comboBox21:setVertTextAlign("center");

    obj.rectangle150 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle150:setParent(obj.rectangle144);
    obj.rectangle150:setWidth(52);
    obj.rectangle150:setName("rectangle150");
    obj.rectangle150:setAlign("left");
    obj.rectangle150:setColor("transparent");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.rectangle150);
    obj.edit39:setField("LutaO");
    obj.edit39:setName("edit39");
    obj.edit39:setAlign("client");
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(12);
    obj.edit39:setFontColor("#fff");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");

    obj.rectangle151 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle151:setParent(obj.edit39);
    obj.rectangle151:setName("rectangle151");
    obj.rectangle151:setAlign("bottom");
    obj.rectangle151:setHeight(1);
    obj.rectangle151:setMargins({left=15, right=15, bottom=3});
    obj.rectangle151:setColor("#fff");
    obj.rectangle151:setOpacity(0.3);

    obj.rectangle152 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle152:setParent(obj.scrollBox1);
    obj.rectangle152:setColor("#202020");
    obj.rectangle152:setName("rectangle152");
    obj.rectangle152:setAlign("top");
    obj.rectangle152:setHeight(25);

    obj.rectangle153 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle153:setParent(obj.rectangle152);
    obj.rectangle153:setWidth(137);
    obj.rectangle153:setName("rectangle153");
    obj.rectangle153:setAlign("left");
    obj.rectangle153:setColor("transparent");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.rectangle153);
    obj.label46:setHorzTextAlign("leading");
    obj.label46:setMargins({left=7});
    obj.label46:setText("Medicina");
    obj.label46:setName("label46");
    obj.label46:setAlign("client");
    obj.label46:setFontSize(12);
    obj.label46:setFontColor("#fff");
    obj.label46:setVertTextAlign("center");

    obj.rectangle154 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle154:setParent(obj.rectangle152);
    obj.rectangle154:setWidth(54);
    obj.rectangle154:setName("rectangle154");
    obj.rectangle154:setAlign("left");
    obj.rectangle154:setColor("transparent");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.rectangle154);
    obj.label47:setText("INT");
    obj.label47:setName("label47");
    obj.label47:setAlign("client");
    obj.label47:setFontSize(12);
    obj.label47:setFontColor("#fff");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setVertTextAlign("center");

    obj.rectangle155 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle155:setParent(obj.rectangle152);
    obj.rectangle155:setWidth(52);
    obj.rectangle155:setName("rectangle155");
    obj.rectangle155:setAlign("left");
    obj.rectangle155:setColor("transparent");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.rectangle155);
    obj.edit40:setField("MedicinaB");
    obj.edit40:setName("edit40");
    obj.edit40:setAlign("client");
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(12);
    obj.edit40:setFontColor("#fff");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");

    obj.rectangle156 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle156:setParent(obj.edit40);
    obj.rectangle156:setName("rectangle156");
    obj.rectangle156:setAlign("bottom");
    obj.rectangle156:setHeight(1);
    obj.rectangle156:setMargins({left=15, right=15, bottom=3});
    obj.rectangle156:setColor("#fff");
    obj.rectangle156:setOpacity(0.3);

    obj.rectangle157 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle157:setParent(obj.rectangle152);
    obj.rectangle157:setWidth(58);
    obj.rectangle157:setName("rectangle157");
    obj.rectangle157:setAlign("left");
    obj.rectangle157:setColor("transparent");

    obj.comboBox22 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox22:setParent(obj.rectangle157);
    obj.comboBox22:setField("MedicinaC");
    obj.comboBox22:setItems({'0','+5','+10','+15'});
    obj.comboBox22:setValues({'01', '02','03', '04'});
    obj.comboBox22:setValue("01");
    obj.comboBox22:setName("comboBox22");
    obj.comboBox22:setAlign("client");
    obj.comboBox22:setTransparent(true);
    obj.comboBox22:setFontColor("#fff");
    obj.comboBox22:setFontSize(12);
    obj.comboBox22:setHorzTextAlign("center");
    obj.comboBox22:setVertTextAlign("center");

    obj.rectangle158 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle158:setParent(obj.rectangle152);
    obj.rectangle158:setWidth(52);
    obj.rectangle158:setName("rectangle158");
    obj.rectangle158:setAlign("left");
    obj.rectangle158:setColor("transparent");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.rectangle158);
    obj.edit41:setField("MedicinaO");
    obj.edit41:setName("edit41");
    obj.edit41:setAlign("client");
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(12);
    obj.edit41:setFontColor("#fff");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");

    obj.rectangle159 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle159:setParent(obj.edit41);
    obj.rectangle159:setName("rectangle159");
    obj.rectangle159:setAlign("bottom");
    obj.rectangle159:setHeight(1);
    obj.rectangle159:setMargins({left=15, right=15, bottom=3});
    obj.rectangle159:setColor("#fff");
    obj.rectangle159:setOpacity(0.3);

    obj.rectangle160 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle160:setParent(obj.scrollBox1);
    obj.rectangle160:setColor("#181818");
    obj.rectangle160:setName("rectangle160");
    obj.rectangle160:setAlign("top");
    obj.rectangle160:setHeight(25);

    obj.rectangle161 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle161:setParent(obj.rectangle160);
    obj.rectangle161:setWidth(137);
    obj.rectangle161:setName("rectangle161");
    obj.rectangle161:setAlign("left");
    obj.rectangle161:setColor("transparent");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.rectangle161);
    obj.label48:setHorzTextAlign("leading");
    obj.label48:setMargins({left=7});
    obj.label48:setText("Ocultismo ♦");
    obj.label48:setName("label48");
    obj.label48:setAlign("client");
    obj.label48:setFontSize(12);
    obj.label48:setFontColor("#fff");
    obj.label48:setVertTextAlign("center");

    obj.rectangle162 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle162:setParent(obj.rectangle160);
    obj.rectangle162:setWidth(54);
    obj.rectangle162:setName("rectangle162");
    obj.rectangle162:setAlign("left");
    obj.rectangle162:setColor("transparent");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.rectangle162);
    obj.label49:setText("INT");
    obj.label49:setName("label49");
    obj.label49:setAlign("client");
    obj.label49:setFontSize(12);
    obj.label49:setFontColor("#fff");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setVertTextAlign("center");

    obj.rectangle163 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle163:setParent(obj.rectangle160);
    obj.rectangle163:setWidth(52);
    obj.rectangle163:setName("rectangle163");
    obj.rectangle163:setAlign("left");
    obj.rectangle163:setColor("transparent");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.rectangle163);
    obj.edit42:setField("OcultismoB");
    obj.edit42:setName("edit42");
    obj.edit42:setAlign("client");
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(12);
    obj.edit42:setFontColor("#fff");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setVertTextAlign("center");

    obj.rectangle164 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle164:setParent(obj.edit42);
    obj.rectangle164:setName("rectangle164");
    obj.rectangle164:setAlign("bottom");
    obj.rectangle164:setHeight(1);
    obj.rectangle164:setMargins({left=15, right=15, bottom=3});
    obj.rectangle164:setColor("#fff");
    obj.rectangle164:setOpacity(0.3);

    obj.rectangle165 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle165:setParent(obj.rectangle160);
    obj.rectangle165:setWidth(58);
    obj.rectangle165:setName("rectangle165");
    obj.rectangle165:setAlign("left");
    obj.rectangle165:setColor("transparent");

    obj.comboBox23 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox23:setParent(obj.rectangle165);
    obj.comboBox23:setField("OcultismoC");
    obj.comboBox23:setItems({'0','+5','+10','+15'});
    obj.comboBox23:setValues({'01', '02','03', '04'});
    obj.comboBox23:setValue("01");
    obj.comboBox23:setName("comboBox23");
    obj.comboBox23:setAlign("client");
    obj.comboBox23:setTransparent(true);
    obj.comboBox23:setFontColor("#fff");
    obj.comboBox23:setFontSize(12);
    obj.comboBox23:setHorzTextAlign("center");
    obj.comboBox23:setVertTextAlign("center");

    obj.rectangle166 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle166:setParent(obj.rectangle160);
    obj.rectangle166:setWidth(52);
    obj.rectangle166:setName("rectangle166");
    obj.rectangle166:setAlign("left");
    obj.rectangle166:setColor("transparent");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.rectangle166);
    obj.edit43:setField("OcultismoO");
    obj.edit43:setName("edit43");
    obj.edit43:setAlign("client");
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(12);
    obj.edit43:setFontColor("#fff");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("center");

    obj.rectangle167 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle167:setParent(obj.edit43);
    obj.rectangle167:setName("rectangle167");
    obj.rectangle167:setAlign("bottom");
    obj.rectangle167:setHeight(1);
    obj.rectangle167:setMargins({left=15, right=15, bottom=3});
    obj.rectangle167:setColor("#fff");
    obj.rectangle167:setOpacity(0.3);

    obj.rectangle168 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle168:setParent(obj.scrollBox1);
    obj.rectangle168:setColor("#202020");
    obj.rectangle168:setName("rectangle168");
    obj.rectangle168:setAlign("top");
    obj.rectangle168:setHeight(25);

    obj.rectangle169 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle169:setParent(obj.rectangle168);
    obj.rectangle169:setWidth(137);
    obj.rectangle169:setName("rectangle169");
    obj.rectangle169:setAlign("left");
    obj.rectangle169:setColor("transparent");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.rectangle169);
    obj.label50:setHorzTextAlign("leading");
    obj.label50:setMargins({left=7});
    obj.label50:setText("Percepção");
    obj.label50:setName("label50");
    obj.label50:setAlign("client");
    obj.label50:setFontSize(12);
    obj.label50:setFontColor("#fff");
    obj.label50:setVertTextAlign("center");

    obj.rectangle170 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle170:setParent(obj.rectangle168);
    obj.rectangle170:setWidth(54);
    obj.rectangle170:setName("rectangle170");
    obj.rectangle170:setAlign("left");
    obj.rectangle170:setColor("transparent");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.rectangle170);
    obj.label51:setText("PRE");
    obj.label51:setName("label51");
    obj.label51:setAlign("client");
    obj.label51:setFontSize(12);
    obj.label51:setFontColor("#fff");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setVertTextAlign("center");

    obj.rectangle171 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle171:setParent(obj.rectangle168);
    obj.rectangle171:setWidth(52);
    obj.rectangle171:setName("rectangle171");
    obj.rectangle171:setAlign("left");
    obj.rectangle171:setColor("transparent");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.rectangle171);
    obj.edit44:setField("PercepçãoB");
    obj.edit44:setName("edit44");
    obj.edit44:setAlign("client");
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(12);
    obj.edit44:setFontColor("#fff");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setVertTextAlign("center");

    obj.rectangle172 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle172:setParent(obj.edit44);
    obj.rectangle172:setName("rectangle172");
    obj.rectangle172:setAlign("bottom");
    obj.rectangle172:setHeight(1);
    obj.rectangle172:setMargins({left=15, right=15, bottom=3});
    obj.rectangle172:setColor("#fff");
    obj.rectangle172:setOpacity(0.3);

    obj.rectangle173 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle173:setParent(obj.rectangle168);
    obj.rectangle173:setWidth(58);
    obj.rectangle173:setName("rectangle173");
    obj.rectangle173:setAlign("left");
    obj.rectangle173:setColor("transparent");

    obj.comboBox24 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox24:setParent(obj.rectangle173);
    obj.comboBox24:setField("PercepçãoC");
    obj.comboBox24:setItems({'0','+5','+10','+15'});
    obj.comboBox24:setValues({'01', '02','03', '04'});
    obj.comboBox24:setValue("01");
    obj.comboBox24:setName("comboBox24");
    obj.comboBox24:setAlign("client");
    obj.comboBox24:setTransparent(true);
    obj.comboBox24:setFontColor("#fff");
    obj.comboBox24:setFontSize(12);
    obj.comboBox24:setHorzTextAlign("center");
    obj.comboBox24:setVertTextAlign("center");

    obj.rectangle174 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle174:setParent(obj.rectangle168);
    obj.rectangle174:setWidth(52);
    obj.rectangle174:setName("rectangle174");
    obj.rectangle174:setAlign("left");
    obj.rectangle174:setColor("transparent");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.rectangle174);
    obj.edit45:setField("PercepçãoO");
    obj.edit45:setName("edit45");
    obj.edit45:setAlign("client");
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(12);
    obj.edit45:setFontColor("#fff");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("center");

    obj.rectangle175 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle175:setParent(obj.edit45);
    obj.rectangle175:setName("rectangle175");
    obj.rectangle175:setAlign("bottom");
    obj.rectangle175:setHeight(1);
    obj.rectangle175:setMargins({left=15, right=15, bottom=3});
    obj.rectangle175:setColor("#fff");
    obj.rectangle175:setOpacity(0.3);

    obj.rectangle176 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle176:setParent(obj.scrollBox1);
    obj.rectangle176:setColor("#181818");
    obj.rectangle176:setName("rectangle176");
    obj.rectangle176:setAlign("top");
    obj.rectangle176:setHeight(25);

    obj.rectangle177 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle177:setParent(obj.rectangle176);
    obj.rectangle177:setWidth(137);
    obj.rectangle177:setName("rectangle177");
    obj.rectangle177:setAlign("left");
    obj.rectangle177:setColor("transparent");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.rectangle177);
    obj.label52:setHorzTextAlign("leading");
    obj.label52:setMargins({left=7});
    obj.label52:setText("Pilotagem ♦");
    obj.label52:setName("label52");
    obj.label52:setAlign("client");
    obj.label52:setFontSize(12);
    obj.label52:setFontColor("#fff");
    obj.label52:setVertTextAlign("center");

    obj.rectangle178 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle178:setParent(obj.rectangle176);
    obj.rectangle178:setWidth(54);
    obj.rectangle178:setName("rectangle178");
    obj.rectangle178:setAlign("left");
    obj.rectangle178:setColor("transparent");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.rectangle178);
    obj.label53:setText("AGI");
    obj.label53:setName("label53");
    obj.label53:setAlign("client");
    obj.label53:setFontSize(12);
    obj.label53:setFontColor("#fff");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setVertTextAlign("center");

    obj.rectangle179 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle179:setParent(obj.rectangle176);
    obj.rectangle179:setWidth(52);
    obj.rectangle179:setName("rectangle179");
    obj.rectangle179:setAlign("left");
    obj.rectangle179:setColor("transparent");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.rectangle179);
    obj.edit46:setField("PilotagemB");
    obj.edit46:setName("edit46");
    obj.edit46:setAlign("client");
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(12);
    obj.edit46:setFontColor("#fff");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("center");

    obj.rectangle180 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle180:setParent(obj.edit46);
    obj.rectangle180:setName("rectangle180");
    obj.rectangle180:setAlign("bottom");
    obj.rectangle180:setHeight(1);
    obj.rectangle180:setMargins({left=15, right=15, bottom=3});
    obj.rectangle180:setColor("#fff");
    obj.rectangle180:setOpacity(0.3);

    obj.rectangle181 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle181:setParent(obj.rectangle176);
    obj.rectangle181:setWidth(58);
    obj.rectangle181:setName("rectangle181");
    obj.rectangle181:setAlign("left");
    obj.rectangle181:setColor("transparent");

    obj.comboBox25 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox25:setParent(obj.rectangle181);
    obj.comboBox25:setField("PilotagemC");
    obj.comboBox25:setItems({'0','+5','+10','+15'});
    obj.comboBox25:setValues({'01', '02','03', '04'});
    obj.comboBox25:setValue("01");
    obj.comboBox25:setName("comboBox25");
    obj.comboBox25:setAlign("client");
    obj.comboBox25:setTransparent(true);
    obj.comboBox25:setFontColor("#fff");
    obj.comboBox25:setFontSize(12);
    obj.comboBox25:setHorzTextAlign("center");
    obj.comboBox25:setVertTextAlign("center");

    obj.rectangle182 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle182:setParent(obj.rectangle176);
    obj.rectangle182:setWidth(52);
    obj.rectangle182:setName("rectangle182");
    obj.rectangle182:setAlign("left");
    obj.rectangle182:setColor("transparent");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.rectangle182);
    obj.edit47:setField("PilotagemO");
    obj.edit47:setName("edit47");
    obj.edit47:setAlign("client");
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(12);
    obj.edit47:setFontColor("#fff");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setVertTextAlign("center");

    obj.rectangle183 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle183:setParent(obj.edit47);
    obj.rectangle183:setName("rectangle183");
    obj.rectangle183:setAlign("bottom");
    obj.rectangle183:setHeight(1);
    obj.rectangle183:setMargins({left=15, right=15, bottom=3});
    obj.rectangle183:setColor("#fff");
    obj.rectangle183:setOpacity(0.3);

    obj.rectangle184 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle184:setParent(obj.scrollBox1);
    obj.rectangle184:setColor("#202020");
    obj.rectangle184:setName("rectangle184");
    obj.rectangle184:setAlign("top");
    obj.rectangle184:setHeight(25);

    obj.rectangle185 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle185:setParent(obj.rectangle184);
    obj.rectangle185:setWidth(137);
    obj.rectangle185:setName("rectangle185");
    obj.rectangle185:setAlign("left");
    obj.rectangle185:setColor("transparent");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.rectangle185);
    obj.label54:setHorzTextAlign("leading");
    obj.label54:setMargins({left=7});
    obj.label54:setText("Pontaria");
    obj.label54:setName("label54");
    obj.label54:setAlign("client");
    obj.label54:setFontSize(12);
    obj.label54:setFontColor("#fff");
    obj.label54:setVertTextAlign("center");

    obj.rectangle186 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle186:setParent(obj.rectangle184);
    obj.rectangle186:setWidth(54);
    obj.rectangle186:setName("rectangle186");
    obj.rectangle186:setAlign("left");
    obj.rectangle186:setColor("transparent");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.rectangle186);
    obj.label55:setText("AGI");
    obj.label55:setName("label55");
    obj.label55:setAlign("client");
    obj.label55:setFontSize(12);
    obj.label55:setFontColor("#fff");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setVertTextAlign("center");

    obj.rectangle187 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle187:setParent(obj.rectangle184);
    obj.rectangle187:setWidth(52);
    obj.rectangle187:setName("rectangle187");
    obj.rectangle187:setAlign("left");
    obj.rectangle187:setColor("transparent");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.rectangle187);
    obj.edit48:setField("PontariaB");
    obj.edit48:setName("edit48");
    obj.edit48:setAlign("client");
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(12);
    obj.edit48:setFontColor("#fff");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");

    obj.rectangle188 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle188:setParent(obj.edit48);
    obj.rectangle188:setName("rectangle188");
    obj.rectangle188:setAlign("bottom");
    obj.rectangle188:setHeight(1);
    obj.rectangle188:setMargins({left=15, right=15, bottom=3});
    obj.rectangle188:setColor("#fff");
    obj.rectangle188:setOpacity(0.3);

    obj.rectangle189 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle189:setParent(obj.rectangle184);
    obj.rectangle189:setWidth(58);
    obj.rectangle189:setName("rectangle189");
    obj.rectangle189:setAlign("left");
    obj.rectangle189:setColor("transparent");

    obj.comboBox26 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox26:setParent(obj.rectangle189);
    obj.comboBox26:setField("PontariaC");
    obj.comboBox26:setItems({'0','+5','+10','+15'});
    obj.comboBox26:setValues({'01', '02','03', '04'});
    obj.comboBox26:setValue("01");
    obj.comboBox26:setName("comboBox26");
    obj.comboBox26:setAlign("client");
    obj.comboBox26:setTransparent(true);
    obj.comboBox26:setFontColor("#fff");
    obj.comboBox26:setFontSize(12);
    obj.comboBox26:setHorzTextAlign("center");
    obj.comboBox26:setVertTextAlign("center");

    obj.rectangle190 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle190:setParent(obj.rectangle184);
    obj.rectangle190:setWidth(52);
    obj.rectangle190:setName("rectangle190");
    obj.rectangle190:setAlign("left");
    obj.rectangle190:setColor("transparent");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.rectangle190);
    obj.edit49:setField("PontariaO");
    obj.edit49:setName("edit49");
    obj.edit49:setAlign("client");
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(12);
    obj.edit49:setFontColor("#fff");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setVertTextAlign("center");

    obj.rectangle191 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle191:setParent(obj.edit49);
    obj.rectangle191:setName("rectangle191");
    obj.rectangle191:setAlign("bottom");
    obj.rectangle191:setHeight(1);
    obj.rectangle191:setMargins({left=15, right=15, bottom=3});
    obj.rectangle191:setColor("#fff");
    obj.rectangle191:setOpacity(0.3);

    obj.rectangle192 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle192:setParent(obj.scrollBox1);
    obj.rectangle192:setColor("#181818");
    obj.rectangle192:setName("rectangle192");
    obj.rectangle192:setAlign("top");
    obj.rectangle192:setHeight(25);

    obj.rectangle193 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle193:setParent(obj.rectangle192);
    obj.rectangle193:setWidth(137);
    obj.rectangle193:setName("rectangle193");
    obj.rectangle193:setAlign("left");
    obj.rectangle193:setColor("transparent");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.rectangle193);
    obj.label56:setHorzTextAlign("leading");
    obj.label56:setMargins({left=7});
    obj.label56:setText("Profissão ♦");
    obj.label56:setName("label56");
    obj.label56:setAlign("left");
    obj.label56:setWidth(60);
    obj.label56:setFontSize(12);
    obj.label56:setFontColor("#fff");
    obj.label56:setVertTextAlign("center");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.rectangle193);
    obj.edit50:setField("Profi");
    obj.edit50:setName("edit50");
    obj.edit50:setAlign("client");
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(12);
    obj.edit50:setFontColor("#fff");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setVertTextAlign("center");

    obj.rectangle194 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle194:setParent(obj.rectangle193);
    obj.rectangle194:setName("rectangle194");
    obj.rectangle194:setAlign("bottom");
    obj.rectangle194:setHeight(1);
    obj.rectangle194:setMargins({left=70, right=5, bottom=6});
    obj.rectangle194:setColor("#fff");
    obj.rectangle194:setOpacity(0.3);

    obj.rectangle195 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle195:setParent(obj.rectangle192);
    obj.rectangle195:setWidth(54);
    obj.rectangle195:setName("rectangle195");
    obj.rectangle195:setAlign("left");
    obj.rectangle195:setColor("transparent");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.rectangle195);
    obj.label57:setText("INT");
    obj.label57:setName("label57");
    obj.label57:setAlign("client");
    obj.label57:setFontSize(12);
    obj.label57:setFontColor("#fff");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setVertTextAlign("center");

    obj.rectangle196 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle196:setParent(obj.rectangle192);
    obj.rectangle196:setWidth(52);
    obj.rectangle196:setName("rectangle196");
    obj.rectangle196:setAlign("left");
    obj.rectangle196:setColor("transparent");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.rectangle196);
    obj.edit51:setField("ProfissãoB");
    obj.edit51:setName("edit51");
    obj.edit51:setAlign("client");
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(12);
    obj.edit51:setFontColor("#fff");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setVertTextAlign("center");

    obj.rectangle197 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle197:setParent(obj.edit51);
    obj.rectangle197:setName("rectangle197");
    obj.rectangle197:setAlign("bottom");
    obj.rectangle197:setHeight(1);
    obj.rectangle197:setMargins({left=15, right=15, bottom=3});
    obj.rectangle197:setColor("#fff");
    obj.rectangle197:setOpacity(0.3);

    obj.rectangle198 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle198:setParent(obj.rectangle192);
    obj.rectangle198:setWidth(58);
    obj.rectangle198:setName("rectangle198");
    obj.rectangle198:setAlign("left");
    obj.rectangle198:setColor("transparent");

    obj.comboBox27 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox27:setParent(obj.rectangle198);
    obj.comboBox27:setField("ProfissãoC");
    obj.comboBox27:setItems({'0','+5','+10','+15'});
    obj.comboBox27:setValues({'01', '02','03', '04'});
    obj.comboBox27:setValue("01");
    obj.comboBox27:setName("comboBox27");
    obj.comboBox27:setAlign("client");
    obj.comboBox27:setTransparent(true);
    obj.comboBox27:setFontColor("#fff");
    obj.comboBox27:setFontSize(12);
    obj.comboBox27:setHorzTextAlign("center");
    obj.comboBox27:setVertTextAlign("center");

    obj.rectangle199 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle199:setParent(obj.rectangle192);
    obj.rectangle199:setWidth(52);
    obj.rectangle199:setName("rectangle199");
    obj.rectangle199:setAlign("left");
    obj.rectangle199:setColor("transparent");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.rectangle199);
    obj.edit52:setField("ProfissãoO");
    obj.edit52:setName("edit52");
    obj.edit52:setAlign("client");
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(12);
    obj.edit52:setFontColor("#fff");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setVertTextAlign("center");

    obj.rectangle200 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle200:setParent(obj.edit52);
    obj.rectangle200:setName("rectangle200");
    obj.rectangle200:setAlign("bottom");
    obj.rectangle200:setHeight(1);
    obj.rectangle200:setMargins({left=15, right=15, bottom=3});
    obj.rectangle200:setColor("#fff");
    obj.rectangle200:setOpacity(0.3);

    obj.rectangle201 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle201:setParent(obj.scrollBox1);
    obj.rectangle201:setColor("#202020");
    obj.rectangle201:setName("rectangle201");
    obj.rectangle201:setAlign("top");
    obj.rectangle201:setHeight(25);

    obj.rectangle202 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle202:setParent(obj.rectangle201);
    obj.rectangle202:setWidth(137);
    obj.rectangle202:setName("rectangle202");
    obj.rectangle202:setAlign("left");
    obj.rectangle202:setColor("transparent");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle202);
    obj.label58:setHorzTextAlign("leading");
    obj.label58:setMargins({left=7});
    obj.label58:setText("Reflexos");
    obj.label58:setName("label58");
    obj.label58:setAlign("client");
    obj.label58:setFontSize(12);
    obj.label58:setFontColor("#fff");
    obj.label58:setVertTextAlign("center");

    obj.rectangle203 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle203:setParent(obj.rectangle201);
    obj.rectangle203:setWidth(54);
    obj.rectangle203:setName("rectangle203");
    obj.rectangle203:setAlign("left");
    obj.rectangle203:setColor("transparent");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle203);
    obj.label59:setText("AGI");
    obj.label59:setName("label59");
    obj.label59:setAlign("client");
    obj.label59:setFontSize(12);
    obj.label59:setFontColor("#fff");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setVertTextAlign("center");

    obj.rectangle204 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle204:setParent(obj.rectangle201);
    obj.rectangle204:setWidth(52);
    obj.rectangle204:setName("rectangle204");
    obj.rectangle204:setAlign("left");
    obj.rectangle204:setColor("transparent");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.rectangle204);
    obj.edit53:setField("ReflexosB");
    obj.edit53:setName("edit53");
    obj.edit53:setAlign("client");
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(12);
    obj.edit53:setFontColor("#fff");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setVertTextAlign("center");

    obj.rectangle205 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle205:setParent(obj.edit53);
    obj.rectangle205:setName("rectangle205");
    obj.rectangle205:setAlign("bottom");
    obj.rectangle205:setHeight(1);
    obj.rectangle205:setMargins({left=15, right=15, bottom=3});
    obj.rectangle205:setColor("#fff");
    obj.rectangle205:setOpacity(0.3);

    obj.rectangle206 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle206:setParent(obj.rectangle201);
    obj.rectangle206:setWidth(58);
    obj.rectangle206:setName("rectangle206");
    obj.rectangle206:setAlign("left");
    obj.rectangle206:setColor("transparent");

    obj.comboBox28 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox28:setParent(obj.rectangle206);
    obj.comboBox28:setField("ReflexosC");
    obj.comboBox28:setItems({'0','+5','+10','+15'});
    obj.comboBox28:setValues({'01', '02','03', '04'});
    obj.comboBox28:setValue("01");
    obj.comboBox28:setName("comboBox28");
    obj.comboBox28:setAlign("client");
    obj.comboBox28:setTransparent(true);
    obj.comboBox28:setFontColor("#fff");
    obj.comboBox28:setFontSize(12);
    obj.comboBox28:setHorzTextAlign("center");
    obj.comboBox28:setVertTextAlign("center");

    obj.rectangle207 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle207:setParent(obj.rectangle201);
    obj.rectangle207:setWidth(52);
    obj.rectangle207:setName("rectangle207");
    obj.rectangle207:setAlign("left");
    obj.rectangle207:setColor("transparent");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.rectangle207);
    obj.edit54:setField("ReflexosO");
    obj.edit54:setName("edit54");
    obj.edit54:setAlign("client");
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(12);
    obj.edit54:setFontColor("#fff");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setVertTextAlign("center");

    obj.rectangle208 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle208:setParent(obj.edit54);
    obj.rectangle208:setName("rectangle208");
    obj.rectangle208:setAlign("bottom");
    obj.rectangle208:setHeight(1);
    obj.rectangle208:setMargins({left=15, right=15, bottom=3});
    obj.rectangle208:setColor("#fff");
    obj.rectangle208:setOpacity(0.3);

    obj.rectangle209 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle209:setParent(obj.scrollBox1);
    obj.rectangle209:setColor("#181818");
    obj.rectangle209:setName("rectangle209");
    obj.rectangle209:setAlign("top");
    obj.rectangle209:setHeight(25);

    obj.rectangle210 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle210:setParent(obj.rectangle209);
    obj.rectangle210:setWidth(137);
    obj.rectangle210:setName("rectangle210");
    obj.rectangle210:setAlign("left");
    obj.rectangle210:setColor("transparent");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.rectangle210);
    obj.label60:setHorzTextAlign("leading");
    obj.label60:setMargins({left=7});
    obj.label60:setText("Religião ♦");
    obj.label60:setName("label60");
    obj.label60:setAlign("client");
    obj.label60:setFontSize(12);
    obj.label60:setFontColor("#fff");
    obj.label60:setVertTextAlign("center");

    obj.rectangle211 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle211:setParent(obj.rectangle209);
    obj.rectangle211:setWidth(54);
    obj.rectangle211:setName("rectangle211");
    obj.rectangle211:setAlign("left");
    obj.rectangle211:setColor("transparent");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.rectangle211);
    obj.label61:setText("PRE");
    obj.label61:setName("label61");
    obj.label61:setAlign("client");
    obj.label61:setFontSize(12);
    obj.label61:setFontColor("#fff");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setVertTextAlign("center");

    obj.rectangle212 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle212:setParent(obj.rectangle209);
    obj.rectangle212:setWidth(52);
    obj.rectangle212:setName("rectangle212");
    obj.rectangle212:setAlign("left");
    obj.rectangle212:setColor("transparent");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.rectangle212);
    obj.edit55:setField("ReligiãoB");
    obj.edit55:setName("edit55");
    obj.edit55:setAlign("client");
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(12);
    obj.edit55:setFontColor("#fff");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setVertTextAlign("center");

    obj.rectangle213 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle213:setParent(obj.edit55);
    obj.rectangle213:setName("rectangle213");
    obj.rectangle213:setAlign("bottom");
    obj.rectangle213:setHeight(1);
    obj.rectangle213:setMargins({left=15, right=15, bottom=3});
    obj.rectangle213:setColor("#fff");
    obj.rectangle213:setOpacity(0.3);

    obj.rectangle214 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle214:setParent(obj.rectangle209);
    obj.rectangle214:setWidth(58);
    obj.rectangle214:setName("rectangle214");
    obj.rectangle214:setAlign("left");
    obj.rectangle214:setColor("transparent");

    obj.comboBox29 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox29:setParent(obj.rectangle214);
    obj.comboBox29:setField("ReligiãoC");
    obj.comboBox29:setItems({'0','+5','+10','+15'});
    obj.comboBox29:setValues({'01', '02','03', '04'});
    obj.comboBox29:setValue("01");
    obj.comboBox29:setName("comboBox29");
    obj.comboBox29:setAlign("client");
    obj.comboBox29:setTransparent(true);
    obj.comboBox29:setFontColor("#fff");
    obj.comboBox29:setFontSize(12);
    obj.comboBox29:setHorzTextAlign("center");
    obj.comboBox29:setVertTextAlign("center");

    obj.rectangle215 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle215:setParent(obj.rectangle209);
    obj.rectangle215:setWidth(52);
    obj.rectangle215:setName("rectangle215");
    obj.rectangle215:setAlign("left");
    obj.rectangle215:setColor("transparent");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.rectangle215);
    obj.edit56:setField("ReligiãoO");
    obj.edit56:setName("edit56");
    obj.edit56:setAlign("client");
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(12);
    obj.edit56:setFontColor("#fff");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setVertTextAlign("center");

    obj.rectangle216 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle216:setParent(obj.edit56);
    obj.rectangle216:setName("rectangle216");
    obj.rectangle216:setAlign("bottom");
    obj.rectangle216:setHeight(1);
    obj.rectangle216:setMargins({left=15, right=15, bottom=3});
    obj.rectangle216:setColor("#fff");
    obj.rectangle216:setOpacity(0.3);

    obj.rectangle217 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle217:setParent(obj.scrollBox1);
    obj.rectangle217:setColor("#202020");
    obj.rectangle217:setName("rectangle217");
    obj.rectangle217:setAlign("top");
    obj.rectangle217:setHeight(25);

    obj.rectangle218 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle218:setParent(obj.rectangle217);
    obj.rectangle218:setWidth(137);
    obj.rectangle218:setName("rectangle218");
    obj.rectangle218:setAlign("left");
    obj.rectangle218:setColor("transparent");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle218);
    obj.label62:setHorzTextAlign("leading");
    obj.label62:setMargins({left=7});
    obj.label62:setText("Sobrevivência");
    obj.label62:setName("label62");
    obj.label62:setAlign("client");
    obj.label62:setFontSize(12);
    obj.label62:setFontColor("#fff");
    obj.label62:setVertTextAlign("center");

    obj.rectangle219 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle219:setParent(obj.rectangle217);
    obj.rectangle219:setWidth(54);
    obj.rectangle219:setName("rectangle219");
    obj.rectangle219:setAlign("left");
    obj.rectangle219:setColor("transparent");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.rectangle219);
    obj.label63:setText("INT");
    obj.label63:setName("label63");
    obj.label63:setAlign("client");
    obj.label63:setFontSize(12);
    obj.label63:setFontColor("#fff");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setVertTextAlign("center");

    obj.rectangle220 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle220:setParent(obj.rectangle217);
    obj.rectangle220:setWidth(52);
    obj.rectangle220:setName("rectangle220");
    obj.rectangle220:setAlign("left");
    obj.rectangle220:setColor("transparent");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.rectangle220);
    obj.edit57:setField("SobrevivênciaB");
    obj.edit57:setName("edit57");
    obj.edit57:setAlign("client");
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(12);
    obj.edit57:setFontColor("#fff");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setVertTextAlign("center");

    obj.rectangle221 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle221:setParent(obj.edit57);
    obj.rectangle221:setName("rectangle221");
    obj.rectangle221:setAlign("bottom");
    obj.rectangle221:setHeight(1);
    obj.rectangle221:setMargins({left=15, right=15, bottom=3});
    obj.rectangle221:setColor("#fff");
    obj.rectangle221:setOpacity(0.3);

    obj.rectangle222 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle222:setParent(obj.rectangle217);
    obj.rectangle222:setWidth(58);
    obj.rectangle222:setName("rectangle222");
    obj.rectangle222:setAlign("left");
    obj.rectangle222:setColor("transparent");

    obj.comboBox30 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox30:setParent(obj.rectangle222);
    obj.comboBox30:setField("SobrevivênciaC");
    obj.comboBox30:setItems({'0','+5','+10','+15'});
    obj.comboBox30:setValues({'01', '02','03', '04'});
    obj.comboBox30:setValue("01");
    obj.comboBox30:setName("comboBox30");
    obj.comboBox30:setAlign("client");
    obj.comboBox30:setTransparent(true);
    obj.comboBox30:setFontColor("#fff");
    obj.comboBox30:setFontSize(12);
    obj.comboBox30:setHorzTextAlign("center");
    obj.comboBox30:setVertTextAlign("center");

    obj.rectangle223 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle223:setParent(obj.rectangle217);
    obj.rectangle223:setWidth(52);
    obj.rectangle223:setName("rectangle223");
    obj.rectangle223:setAlign("left");
    obj.rectangle223:setColor("transparent");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.rectangle223);
    obj.edit58:setField("SobrevivênciaO");
    obj.edit58:setName("edit58");
    obj.edit58:setAlign("client");
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(12);
    obj.edit58:setFontColor("#fff");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setVertTextAlign("center");

    obj.rectangle224 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle224:setParent(obj.edit58);
    obj.rectangle224:setName("rectangle224");
    obj.rectangle224:setAlign("bottom");
    obj.rectangle224:setHeight(1);
    obj.rectangle224:setMargins({left=15, right=15, bottom=3});
    obj.rectangle224:setColor("#fff");
    obj.rectangle224:setOpacity(0.3);

    obj.rectangle225 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle225:setParent(obj.scrollBox1);
    obj.rectangle225:setColor("#181818");
    obj.rectangle225:setName("rectangle225");
    obj.rectangle225:setAlign("top");
    obj.rectangle225:setHeight(25);

    obj.rectangle226 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle226:setParent(obj.rectangle225);
    obj.rectangle226:setWidth(137);
    obj.rectangle226:setName("rectangle226");
    obj.rectangle226:setAlign("left");
    obj.rectangle226:setColor("transparent");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.rectangle226);
    obj.label64:setHorzTextAlign("leading");
    obj.label64:setMargins({left=7});
    obj.label64:setText("Tática ♦");
    obj.label64:setName("label64");
    obj.label64:setAlign("client");
    obj.label64:setFontSize(12);
    obj.label64:setFontColor("#fff");
    obj.label64:setVertTextAlign("center");

    obj.rectangle227 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle227:setParent(obj.rectangle225);
    obj.rectangle227:setWidth(54);
    obj.rectangle227:setName("rectangle227");
    obj.rectangle227:setAlign("left");
    obj.rectangle227:setColor("transparent");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle227);
    obj.label65:setText("INT");
    obj.label65:setName("label65");
    obj.label65:setAlign("client");
    obj.label65:setFontSize(12);
    obj.label65:setFontColor("#fff");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setVertTextAlign("center");

    obj.rectangle228 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle228:setParent(obj.rectangle225);
    obj.rectangle228:setWidth(52);
    obj.rectangle228:setName("rectangle228");
    obj.rectangle228:setAlign("left");
    obj.rectangle228:setColor("transparent");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.rectangle228);
    obj.edit59:setField("TáticaB");
    obj.edit59:setName("edit59");
    obj.edit59:setAlign("client");
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(12);
    obj.edit59:setFontColor("#fff");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setVertTextAlign("center");

    obj.rectangle229 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle229:setParent(obj.edit59);
    obj.rectangle229:setName("rectangle229");
    obj.rectangle229:setAlign("bottom");
    obj.rectangle229:setHeight(1);
    obj.rectangle229:setMargins({left=15, right=15, bottom=3});
    obj.rectangle229:setColor("#fff");
    obj.rectangle229:setOpacity(0.3);

    obj.rectangle230 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle230:setParent(obj.rectangle225);
    obj.rectangle230:setWidth(58);
    obj.rectangle230:setName("rectangle230");
    obj.rectangle230:setAlign("left");
    obj.rectangle230:setColor("transparent");

    obj.comboBox31 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox31:setParent(obj.rectangle230);
    obj.comboBox31:setField("TáticaC");
    obj.comboBox31:setItems({'0','+5','+10','+15'});
    obj.comboBox31:setValues({'01', '02','03', '04'});
    obj.comboBox31:setValue("01");
    obj.comboBox31:setName("comboBox31");
    obj.comboBox31:setAlign("client");
    obj.comboBox31:setTransparent(true);
    obj.comboBox31:setFontColor("#fff");
    obj.comboBox31:setFontSize(12);
    obj.comboBox31:setHorzTextAlign("center");
    obj.comboBox31:setVertTextAlign("center");

    obj.rectangle231 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle231:setParent(obj.rectangle225);
    obj.rectangle231:setWidth(52);
    obj.rectangle231:setName("rectangle231");
    obj.rectangle231:setAlign("left");
    obj.rectangle231:setColor("transparent");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.rectangle231);
    obj.edit60:setField("TáticaO");
    obj.edit60:setName("edit60");
    obj.edit60:setAlign("client");
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(12);
    obj.edit60:setFontColor("#fff");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setVertTextAlign("center");

    obj.rectangle232 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle232:setParent(obj.edit60);
    obj.rectangle232:setName("rectangle232");
    obj.rectangle232:setAlign("bottom");
    obj.rectangle232:setHeight(1);
    obj.rectangle232:setMargins({left=15, right=15, bottom=3});
    obj.rectangle232:setColor("#fff");
    obj.rectangle232:setOpacity(0.3);

    obj.rectangle233 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle233:setParent(obj.scrollBox1);
    obj.rectangle233:setColor("#202020");
    obj.rectangle233:setName("rectangle233");
    obj.rectangle233:setAlign("top");
    obj.rectangle233:setHeight(25);

    obj.rectangle234 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle234:setParent(obj.rectangle233);
    obj.rectangle234:setWidth(137);
    obj.rectangle234:setName("rectangle234");
    obj.rectangle234:setAlign("left");
    obj.rectangle234:setColor("transparent");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.rectangle234);
    obj.label66:setHorzTextAlign("leading");
    obj.label66:setMargins({left=7});
    obj.label66:setText("Tecnologia ♦");
    obj.label66:setName("label66");
    obj.label66:setAlign("client");
    obj.label66:setFontSize(12);
    obj.label66:setFontColor("#fff");
    obj.label66:setVertTextAlign("center");

    obj.rectangle235 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle235:setParent(obj.rectangle233);
    obj.rectangle235:setWidth(54);
    obj.rectangle235:setName("rectangle235");
    obj.rectangle235:setAlign("left");
    obj.rectangle235:setColor("transparent");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle235);
    obj.label67:setText("INT");
    obj.label67:setName("label67");
    obj.label67:setAlign("client");
    obj.label67:setFontSize(12);
    obj.label67:setFontColor("#fff");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setVertTextAlign("center");

    obj.rectangle236 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle236:setParent(obj.rectangle233);
    obj.rectangle236:setWidth(52);
    obj.rectangle236:setName("rectangle236");
    obj.rectangle236:setAlign("left");
    obj.rectangle236:setColor("transparent");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.rectangle236);
    obj.edit61:setField("TecnologiaB");
    obj.edit61:setName("edit61");
    obj.edit61:setAlign("client");
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(12);
    obj.edit61:setFontColor("#fff");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setVertTextAlign("center");

    obj.rectangle237 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle237:setParent(obj.edit61);
    obj.rectangle237:setName("rectangle237");
    obj.rectangle237:setAlign("bottom");
    obj.rectangle237:setHeight(1);
    obj.rectangle237:setMargins({left=15, right=15, bottom=3});
    obj.rectangle237:setColor("#fff");
    obj.rectangle237:setOpacity(0.3);

    obj.rectangle238 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle238:setParent(obj.rectangle233);
    obj.rectangle238:setWidth(58);
    obj.rectangle238:setName("rectangle238");
    obj.rectangle238:setAlign("left");
    obj.rectangle238:setColor("transparent");

    obj.comboBox32 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox32:setParent(obj.rectangle238);
    obj.comboBox32:setField("TecnologiaC");
    obj.comboBox32:setItems({'0','+5','+10','+15'});
    obj.comboBox32:setValues({'01', '02','03', '04'});
    obj.comboBox32:setValue("01");
    obj.comboBox32:setName("comboBox32");
    obj.comboBox32:setAlign("client");
    obj.comboBox32:setTransparent(true);
    obj.comboBox32:setFontColor("#fff");
    obj.comboBox32:setFontSize(12);
    obj.comboBox32:setHorzTextAlign("center");
    obj.comboBox32:setVertTextAlign("center");

    obj.rectangle239 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle239:setParent(obj.rectangle233);
    obj.rectangle239:setWidth(52);
    obj.rectangle239:setName("rectangle239");
    obj.rectangle239:setAlign("left");
    obj.rectangle239:setColor("transparent");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.rectangle239);
    obj.edit62:setField("TecnologiaO");
    obj.edit62:setName("edit62");
    obj.edit62:setAlign("client");
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(12);
    obj.edit62:setFontColor("#fff");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setVertTextAlign("center");

    obj.rectangle240 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle240:setParent(obj.edit62);
    obj.rectangle240:setName("rectangle240");
    obj.rectangle240:setAlign("bottom");
    obj.rectangle240:setHeight(1);
    obj.rectangle240:setMargins({left=15, right=15, bottom=3});
    obj.rectangle240:setColor("#fff");
    obj.rectangle240:setOpacity(0.3);

    obj.rectangle241 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle241:setParent(obj.scrollBox1);
    obj.rectangle241:setColor("#181818");
    obj.rectangle241:setName("rectangle241");
    obj.rectangle241:setAlign("top");
    obj.rectangle241:setHeight(25);

    obj.rectangle242 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle242:setParent(obj.rectangle241);
    obj.rectangle242:setWidth(137);
    obj.rectangle242:setName("rectangle242");
    obj.rectangle242:setAlign("left");
    obj.rectangle242:setColor("transparent");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle242);
    obj.label68:setHorzTextAlign("leading");
    obj.label68:setMargins({left=7});
    obj.label68:setText("Vontade");
    obj.label68:setName("label68");
    obj.label68:setAlign("client");
    obj.label68:setFontSize(12);
    obj.label68:setFontColor("#fff");
    obj.label68:setVertTextAlign("center");

    obj.rectangle243 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle243:setParent(obj.rectangle241);
    obj.rectangle243:setWidth(54);
    obj.rectangle243:setName("rectangle243");
    obj.rectangle243:setAlign("left");
    obj.rectangle243:setColor("transparent");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle243);
    obj.label69:setText("PRE");
    obj.label69:setName("label69");
    obj.label69:setAlign("client");
    obj.label69:setFontSize(12);
    obj.label69:setFontColor("#fff");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setVertTextAlign("center");

    obj.rectangle244 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle244:setParent(obj.rectangle241);
    obj.rectangle244:setWidth(52);
    obj.rectangle244:setName("rectangle244");
    obj.rectangle244:setAlign("left");
    obj.rectangle244:setColor("transparent");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.rectangle244);
    obj.edit63:setField("VontadeB");
    obj.edit63:setName("edit63");
    obj.edit63:setAlign("client");
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(12);
    obj.edit63:setFontColor("#fff");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setVertTextAlign("center");

    obj.rectangle245 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle245:setParent(obj.edit63);
    obj.rectangle245:setName("rectangle245");
    obj.rectangle245:setAlign("bottom");
    obj.rectangle245:setHeight(1);
    obj.rectangle245:setMargins({left=15, right=15, bottom=3});
    obj.rectangle245:setColor("#fff");
    obj.rectangle245:setOpacity(0.3);

    obj.rectangle246 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle246:setParent(obj.rectangle241);
    obj.rectangle246:setWidth(58);
    obj.rectangle246:setName("rectangle246");
    obj.rectangle246:setAlign("left");
    obj.rectangle246:setColor("transparent");

    obj.comboBox33 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox33:setParent(obj.rectangle246);
    obj.comboBox33:setField("VontadeC");
    obj.comboBox33:setItems({'0','+5','+10','+15'});
    obj.comboBox33:setValues({'01', '02','03', '04'});
    obj.comboBox33:setValue("01");
    obj.comboBox33:setName("comboBox33");
    obj.comboBox33:setAlign("client");
    obj.comboBox33:setTransparent(true);
    obj.comboBox33:setFontColor("#fff");
    obj.comboBox33:setFontSize(12);
    obj.comboBox33:setHorzTextAlign("center");
    obj.comboBox33:setVertTextAlign("center");

    obj.rectangle247 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle247:setParent(obj.rectangle241);
    obj.rectangle247:setWidth(52);
    obj.rectangle247:setName("rectangle247");
    obj.rectangle247:setAlign("left");
    obj.rectangle247:setColor("transparent");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.rectangle247);
    obj.edit64:setField("VontadeO");
    obj.edit64:setName("edit64");
    obj.edit64:setAlign("client");
    obj.edit64:setTransparent(true);
    obj.edit64:setFontSize(12);
    obj.edit64:setFontColor("#fff");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setVertTextAlign("center");

    obj.rectangle248 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle248:setParent(obj.edit64);
    obj.rectangle248:setName("rectangle248");
    obj.rectangle248:setAlign("bottom");
    obj.rectangle248:setHeight(1);
    obj.rectangle248:setMargins({left=15, right=15, bottom=3});
    obj.rectangle248:setColor("#fff");
    obj.rectangle248:setOpacity(0.3);

    obj.rectangle249 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle249:setParent(obj.rectangle17);
    obj.rectangle249:setName("rectangle249");
    obj.rectangle249:setAlign("bottom");
    obj.rectangle249:setHeight(20);
    obj.rectangle249:setColor("#070707");
    obj.rectangle249:setXradius(5);
    obj.rectangle249:setYradius(5);
    obj.rectangle249:setCornerType("round");
    lfm_setPropAsString(obj.rectangle249, "corners",  "bottomLeft bottomRight");
    obj.rectangle249:setMargins({right=-1});

    obj.rectangle250 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle250:setParent(obj.rectangle249);
    obj.rectangle250:setWidth(185);
    obj.rectangle250:setName("rectangle250");
    obj.rectangle250:setAlign("left");
    obj.rectangle250:setColor("transparent");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle250);
    obj.label70:setText("♦ - Penalidade de carga.");
    obj.label70:setName("label70");
    obj.label70:setAlign("client");
    obj.label70:setFontSize(12);
    obj.label70:setFontColor("#fff");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setVertTextAlign("center");

    obj.rectangle251 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle251:setParent(obj.rectangle249);
    obj.rectangle251:setWidth(185);
    obj.rectangle251:setName("rectangle251");
    obj.rectangle251:setAlign("left");
    obj.rectangle251:setColor("transparent");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.rectangle251);
    obj.label71:setText("⭐​ - Somente treinado.");
    obj.label71:setName("label71");
    obj.label71:setAlign("client");
    obj.label71:setFontSize(12);
    obj.label71:setFontColor("#fff");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setVertTextAlign("center");

    obj.layCombate = GUI.fromHandle(_obj_newObject("layout"));
    obj.layCombate:setParent(obj.rectangle3);
    obj.layCombate:setName("layCombate");
    obj.layCombate:setVisible(true);
    obj.layCombate:setAlign("client");

    obj.rectangle252 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle252:setParent(obj.layCombate);
    obj.rectangle252:setName("rectangle252");
    obj.rectangle252:setAlign("client");
    obj.rectangle252:setColor("transparent");

    obj.rectangle253 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle253:setParent(obj.rectangle252);
    obj.rectangle253:setName("rectangle253");
    obj.rectangle253:setAlign("top");
    obj.rectangle253:setHeight(40);
    obj.rectangle253:setColor("#070707");
    obj.rectangle253:setXradius(5);
    obj.rectangle253:setYradius(5);
    obj.rectangle253:setCornerType("round");

    obj.rectangle254 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle254:setParent(obj.rectangle253);
    obj.rectangle254:setWidth(162);
    obj.rectangle254:setName("rectangle254");
    obj.rectangle254:setAlign("left");
    obj.rectangle254:setColor("transparent");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.rectangle254);
    obj.label72:setText("Ataque");
    obj.label72:setName("label72");
    obj.label72:setAlign("client");
    obj.label72:setFontSize(12);
    obj.label72:setFontColor("#fff");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setVertTextAlign("center");
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");

    obj.rectangle255 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle255:setParent(obj.rectangle253);
    obj.rectangle255:setWidth(40);
    obj.rectangle255:setName("rectangle255");
    obj.rectangle255:setAlign("left");
    obj.rectangle255:setColor("transparent");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.rectangle255);
    obj.label73:setText("Teste");
    obj.label73:setName("label73");
    obj.label73:setAlign("client");
    obj.label73:setFontSize(12);
    obj.label73:setFontColor("#fff");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setVertTextAlign("center");
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");

    obj.rectangle256 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle256:setParent(obj.rectangle253);
    obj.rectangle256:setWidth(64);
    obj.rectangle256:setName("rectangle256");
    obj.rectangle256:setAlign("left");
    obj.rectangle256:setColor("transparent");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.rectangle256);
    obj.label74:setText("Dano");
    obj.label74:setName("label74");
    obj.label74:setAlign("client");
    obj.label74:setFontSize(12);
    obj.label74:setFontColor("#fff");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setVertTextAlign("center");
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");

    obj.rectangle257 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle257:setParent(obj.rectangle253);
    obj.rectangle257:setWidth(54);
    obj.rectangle257:setName("rectangle257");
    obj.rectangle257:setAlign("left");
    obj.rectangle257:setColor("transparent");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.rectangle257);
    obj.label75:setText("Alcance");
    obj.label75:setName("label75");
    obj.label75:setAlign("client");
    obj.label75:setFontSize(12);
    obj.label75:setFontColor("#fff");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setVertTextAlign("center");
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");

    obj.rectangle258 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle258:setParent(obj.rectangle253);
    obj.rectangle258:setWidth(50);
    obj.rectangle258:setName("rectangle258");
    obj.rectangle258:setAlign("left");
    obj.rectangle258:setColor("transparent");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.rectangle258);
    obj.label76:setText("Crítico");
    obj.label76:setName("label76");
    obj.label76:setAlign("client");
    obj.label76:setFontSize(12);
    obj.label76:setFontColor("#fff");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setVertTextAlign("center");
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");

    obj.rectangle259 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle259:setParent(obj.rectangle252);
    obj.rectangle259:setAlign("top");
    obj.rectangle259:setHeight(25);
    obj.rectangle259:setColor("transparent");
    obj.rectangle259:setName("rectangle259");

    obj.rectangle260 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle260:setParent(obj.rectangle259);
    obj.rectangle260:setWidth(162);
    obj.rectangle260:setAlign("left");
    obj.rectangle260:setColor("transparent");
    obj.rectangle260:setName("rectangle260");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.rectangle260);
    obj.edit65:setField("at01");
    obj.edit65:setName("edit65");
    obj.edit65:setAlign("client");
    obj.edit65:setTransparent(true);
    obj.edit65:setFontSize(12);
    obj.edit65:setFontColor("#fff");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setVertTextAlign("center");

    obj.rectangle261 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle261:setParent(obj.rectangle260);
    obj.rectangle261:setName("rectangle261");
    obj.rectangle261:setAlign("bottom");
    obj.rectangle261:setHeight(1);
    obj.rectangle261:setColor("#fff");
    obj.rectangle261:setMargins({left=5, right=5, bottom=3});
    obj.rectangle261:setOpacity(0.3);

    obj.rectangle262 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle262:setParent(obj.rectangle259);
    obj.rectangle262:setWidth(40);
    obj.rectangle262:setAlign("left");
    obj.rectangle262:setColor("transparent");
    obj.rectangle262:setName("rectangle262");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.rectangle262);
    obj.edit66:setField("ts01");
    obj.edit66:setName("edit66");
    obj.edit66:setAlign("client");
    obj.edit66:setTransparent(true);
    obj.edit66:setFontSize(12);
    obj.edit66:setFontColor("#fff");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setVertTextAlign("center");

    obj.rectangle263 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle263:setParent(obj.rectangle262);
    obj.rectangle263:setName("rectangle263");
    obj.rectangle263:setAlign("bottom");
    obj.rectangle263:setHeight(1);
    obj.rectangle263:setColor("#fff");
    obj.rectangle263:setMargins({left=5, right=5, bottom=3});
    obj.rectangle263:setOpacity(0.3);

    obj.rectangle264 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle264:setParent(obj.rectangle259);
    obj.rectangle264:setWidth(64);
    obj.rectangle264:setAlign("left");
    obj.rectangle264:setColor("transparent");
    obj.rectangle264:setName("rectangle264");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.rectangle264);
    obj.edit67:setField("dn01");
    obj.edit67:setName("edit67");
    obj.edit67:setAlign("client");
    obj.edit67:setTransparent(true);
    obj.edit67:setFontSize(12);
    obj.edit67:setFontColor("#fff");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setVertTextAlign("center");

    obj.rectangle265 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle265:setParent(obj.rectangle264);
    obj.rectangle265:setName("rectangle265");
    obj.rectangle265:setAlign("bottom");
    obj.rectangle265:setHeight(1);
    obj.rectangle265:setColor("#fff");
    obj.rectangle265:setMargins({left=5, right=5, bottom=3});
    obj.rectangle265:setOpacity(0.3);

    obj.rectangle266 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle266:setParent(obj.rectangle259);
    obj.rectangle266:setWidth(54);
    obj.rectangle266:setAlign("left");
    obj.rectangle266:setColor("transparent");
    obj.rectangle266:setName("rectangle266");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.rectangle266);
    obj.edit68:setField("al01");
    obj.edit68:setName("edit68");
    obj.edit68:setAlign("client");
    obj.edit68:setTransparent(true);
    obj.edit68:setFontSize(12);
    obj.edit68:setFontColor("#fff");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setVertTextAlign("center");

    obj.rectangle267 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle267:setParent(obj.rectangle266);
    obj.rectangle267:setName("rectangle267");
    obj.rectangle267:setAlign("bottom");
    obj.rectangle267:setHeight(1);
    obj.rectangle267:setColor("#fff");
    obj.rectangle267:setMargins({left=5, right=5, bottom=3});
    obj.rectangle267:setOpacity(0.3);

    obj.rectangle268 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle268:setParent(obj.rectangle259);
    obj.rectangle268:setWidth(50);
    obj.rectangle268:setAlign("left");
    obj.rectangle268:setColor("transparent");
    obj.rectangle268:setName("rectangle268");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.rectangle268);
    obj.edit69:setField("ct01");
    obj.edit69:setName("edit69");
    obj.edit69:setAlign("client");
    obj.edit69:setTransparent(true);
    obj.edit69:setFontSize(12);
    obj.edit69:setFontColor("#fff");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setVertTextAlign("center");

    obj.rectangle269 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle269:setParent(obj.rectangle268);
    obj.rectangle269:setName("rectangle269");
    obj.rectangle269:setAlign("bottom");
    obj.rectangle269:setHeight(1);
    obj.rectangle269:setColor("#fff");
    obj.rectangle269:setMargins({left=5, right=5, bottom=3});
    obj.rectangle269:setOpacity(0.3);

    obj.rectangle270 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle270:setParent(obj.rectangle252);
    obj.rectangle270:setAlign("top");
    obj.rectangle270:setHeight(25);
    obj.rectangle270:setColor("transparent");
    obj.rectangle270:setName("rectangle270");

    obj.rectangle271 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle271:setParent(obj.rectangle270);
    obj.rectangle271:setWidth(162);
    obj.rectangle271:setAlign("left");
    obj.rectangle271:setColor("transparent");
    obj.rectangle271:setName("rectangle271");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.rectangle271);
    obj.edit70:setField("at02");
    obj.edit70:setName("edit70");
    obj.edit70:setAlign("client");
    obj.edit70:setTransparent(true);
    obj.edit70:setFontSize(12);
    obj.edit70:setFontColor("#fff");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setVertTextAlign("center");

    obj.rectangle272 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle272:setParent(obj.rectangle271);
    obj.rectangle272:setName("rectangle272");
    obj.rectangle272:setAlign("bottom");
    obj.rectangle272:setHeight(1);
    obj.rectangle272:setColor("#fff");
    obj.rectangle272:setMargins({left=5, right=5, bottom=3});
    obj.rectangle272:setOpacity(0.3);

    obj.rectangle273 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle273:setParent(obj.rectangle270);
    obj.rectangle273:setWidth(40);
    obj.rectangle273:setAlign("left");
    obj.rectangle273:setColor("transparent");
    obj.rectangle273:setName("rectangle273");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.rectangle273);
    obj.edit71:setField("ts02");
    obj.edit71:setName("edit71");
    obj.edit71:setAlign("client");
    obj.edit71:setTransparent(true);
    obj.edit71:setFontSize(12);
    obj.edit71:setFontColor("#fff");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setVertTextAlign("center");

    obj.rectangle274 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle274:setParent(obj.rectangle273);
    obj.rectangle274:setName("rectangle274");
    obj.rectangle274:setAlign("bottom");
    obj.rectangle274:setHeight(1);
    obj.rectangle274:setColor("#fff");
    obj.rectangle274:setMargins({left=5, right=5, bottom=3});
    obj.rectangle274:setOpacity(0.3);

    obj.rectangle275 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle275:setParent(obj.rectangle270);
    obj.rectangle275:setWidth(64);
    obj.rectangle275:setAlign("left");
    obj.rectangle275:setColor("transparent");
    obj.rectangle275:setName("rectangle275");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.rectangle275);
    obj.edit72:setField("dn02");
    obj.edit72:setName("edit72");
    obj.edit72:setAlign("client");
    obj.edit72:setTransparent(true);
    obj.edit72:setFontSize(12);
    obj.edit72:setFontColor("#fff");
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setVertTextAlign("center");

    obj.rectangle276 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle276:setParent(obj.rectangle275);
    obj.rectangle276:setName("rectangle276");
    obj.rectangle276:setAlign("bottom");
    obj.rectangle276:setHeight(1);
    obj.rectangle276:setColor("#fff");
    obj.rectangle276:setMargins({left=5, right=5, bottom=3});
    obj.rectangle276:setOpacity(0.3);

    obj.rectangle277 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle277:setParent(obj.rectangle270);
    obj.rectangle277:setWidth(54);
    obj.rectangle277:setAlign("left");
    obj.rectangle277:setColor("transparent");
    obj.rectangle277:setName("rectangle277");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.rectangle277);
    obj.edit73:setField("al02");
    obj.edit73:setName("edit73");
    obj.edit73:setAlign("client");
    obj.edit73:setTransparent(true);
    obj.edit73:setFontSize(12);
    obj.edit73:setFontColor("#fff");
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setVertTextAlign("center");

    obj.rectangle278 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle278:setParent(obj.rectangle277);
    obj.rectangle278:setName("rectangle278");
    obj.rectangle278:setAlign("bottom");
    obj.rectangle278:setHeight(1);
    obj.rectangle278:setColor("#fff");
    obj.rectangle278:setMargins({left=5, right=5, bottom=3});
    obj.rectangle278:setOpacity(0.3);

    obj.rectangle279 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle279:setParent(obj.rectangle270);
    obj.rectangle279:setWidth(50);
    obj.rectangle279:setAlign("left");
    obj.rectangle279:setColor("transparent");
    obj.rectangle279:setName("rectangle279");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.rectangle279);
    obj.edit74:setField("ct02");
    obj.edit74:setName("edit74");
    obj.edit74:setAlign("client");
    obj.edit74:setTransparent(true);
    obj.edit74:setFontSize(12);
    obj.edit74:setFontColor("#fff");
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setVertTextAlign("center");

    obj.rectangle280 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle280:setParent(obj.rectangle279);
    obj.rectangle280:setName("rectangle280");
    obj.rectangle280:setAlign("bottom");
    obj.rectangle280:setHeight(1);
    obj.rectangle280:setColor("#fff");
    obj.rectangle280:setMargins({left=5, right=5, bottom=3});
    obj.rectangle280:setOpacity(0.3);

    obj.rectangle281 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle281:setParent(obj.rectangle252);
    obj.rectangle281:setAlign("top");
    obj.rectangle281:setHeight(25);
    obj.rectangle281:setColor("transparent");
    obj.rectangle281:setName("rectangle281");

    obj.rectangle282 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle282:setParent(obj.rectangle281);
    obj.rectangle282:setWidth(162);
    obj.rectangle282:setAlign("left");
    obj.rectangle282:setColor("transparent");
    obj.rectangle282:setName("rectangle282");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.rectangle282);
    obj.edit75:setField("at03");
    obj.edit75:setName("edit75");
    obj.edit75:setAlign("client");
    obj.edit75:setTransparent(true);
    obj.edit75:setFontSize(12);
    obj.edit75:setFontColor("#fff");
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setVertTextAlign("center");

    obj.rectangle283 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle283:setParent(obj.rectangle282);
    obj.rectangle283:setName("rectangle283");
    obj.rectangle283:setAlign("bottom");
    obj.rectangle283:setHeight(1);
    obj.rectangle283:setColor("#fff");
    obj.rectangle283:setMargins({left=5, right=5, bottom=3});
    obj.rectangle283:setOpacity(0.3);

    obj.rectangle284 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle284:setParent(obj.rectangle281);
    obj.rectangle284:setWidth(40);
    obj.rectangle284:setAlign("left");
    obj.rectangle284:setColor("transparent");
    obj.rectangle284:setName("rectangle284");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.rectangle284);
    obj.edit76:setField("ts03");
    obj.edit76:setName("edit76");
    obj.edit76:setAlign("client");
    obj.edit76:setTransparent(true);
    obj.edit76:setFontSize(12);
    obj.edit76:setFontColor("#fff");
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setVertTextAlign("center");

    obj.rectangle285 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle285:setParent(obj.rectangle284);
    obj.rectangle285:setName("rectangle285");
    obj.rectangle285:setAlign("bottom");
    obj.rectangle285:setHeight(1);
    obj.rectangle285:setColor("#fff");
    obj.rectangle285:setMargins({left=5, right=5, bottom=3});
    obj.rectangle285:setOpacity(0.3);

    obj.rectangle286 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle286:setParent(obj.rectangle281);
    obj.rectangle286:setWidth(64);
    obj.rectangle286:setAlign("left");
    obj.rectangle286:setColor("transparent");
    obj.rectangle286:setName("rectangle286");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.rectangle286);
    obj.edit77:setField("dn03");
    obj.edit77:setName("edit77");
    obj.edit77:setAlign("client");
    obj.edit77:setTransparent(true);
    obj.edit77:setFontSize(12);
    obj.edit77:setFontColor("#fff");
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setVertTextAlign("center");

    obj.rectangle287 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle287:setParent(obj.rectangle286);
    obj.rectangle287:setName("rectangle287");
    obj.rectangle287:setAlign("bottom");
    obj.rectangle287:setHeight(1);
    obj.rectangle287:setColor("#fff");
    obj.rectangle287:setMargins({left=5, right=5, bottom=3});
    obj.rectangle287:setOpacity(0.3);

    obj.rectangle288 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle288:setParent(obj.rectangle281);
    obj.rectangle288:setWidth(54);
    obj.rectangle288:setAlign("left");
    obj.rectangle288:setColor("transparent");
    obj.rectangle288:setName("rectangle288");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.rectangle288);
    obj.edit78:setField("al03");
    obj.edit78:setName("edit78");
    obj.edit78:setAlign("client");
    obj.edit78:setTransparent(true);
    obj.edit78:setFontSize(12);
    obj.edit78:setFontColor("#fff");
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setVertTextAlign("center");

    obj.rectangle289 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle289:setParent(obj.rectangle288);
    obj.rectangle289:setName("rectangle289");
    obj.rectangle289:setAlign("bottom");
    obj.rectangle289:setHeight(1);
    obj.rectangle289:setColor("#fff");
    obj.rectangle289:setMargins({left=5, right=5, bottom=3});
    obj.rectangle289:setOpacity(0.3);

    obj.rectangle290 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle290:setParent(obj.rectangle281);
    obj.rectangle290:setWidth(50);
    obj.rectangle290:setAlign("left");
    obj.rectangle290:setColor("transparent");
    obj.rectangle290:setName("rectangle290");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.rectangle290);
    obj.edit79:setField("ct03");
    obj.edit79:setName("edit79");
    obj.edit79:setAlign("client");
    obj.edit79:setTransparent(true);
    obj.edit79:setFontSize(12);
    obj.edit79:setFontColor("#fff");
    obj.edit79:setHorzTextAlign("center");
    obj.edit79:setVertTextAlign("center");

    obj.rectangle291 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle291:setParent(obj.rectangle290);
    obj.rectangle291:setName("rectangle291");
    obj.rectangle291:setAlign("bottom");
    obj.rectangle291:setHeight(1);
    obj.rectangle291:setColor("#fff");
    obj.rectangle291:setMargins({left=5, right=5, bottom=3});
    obj.rectangle291:setOpacity(0.3);

    obj.rectangle292 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle292:setParent(obj.rectangle252);
    obj.rectangle292:setAlign("top");
    obj.rectangle292:setHeight(25);
    obj.rectangle292:setColor("transparent");
    obj.rectangle292:setName("rectangle292");

    obj.rectangle293 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle293:setParent(obj.rectangle292);
    obj.rectangle293:setWidth(162);
    obj.rectangle293:setAlign("left");
    obj.rectangle293:setColor("transparent");
    obj.rectangle293:setName("rectangle293");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.rectangle293);
    obj.edit80:setField("at04");
    obj.edit80:setName("edit80");
    obj.edit80:setAlign("client");
    obj.edit80:setTransparent(true);
    obj.edit80:setFontSize(12);
    obj.edit80:setFontColor("#fff");
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setVertTextAlign("center");

    obj.rectangle294 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle294:setParent(obj.rectangle293);
    obj.rectangle294:setName("rectangle294");
    obj.rectangle294:setAlign("bottom");
    obj.rectangle294:setHeight(1);
    obj.rectangle294:setColor("#fff");
    obj.rectangle294:setMargins({left=5, right=5, bottom=3});
    obj.rectangle294:setOpacity(0.3);

    obj.rectangle295 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle295:setParent(obj.rectangle292);
    obj.rectangle295:setWidth(40);
    obj.rectangle295:setAlign("left");
    obj.rectangle295:setColor("transparent");
    obj.rectangle295:setName("rectangle295");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.rectangle295);
    obj.edit81:setField("ts04");
    obj.edit81:setName("edit81");
    obj.edit81:setAlign("client");
    obj.edit81:setTransparent(true);
    obj.edit81:setFontSize(12);
    obj.edit81:setFontColor("#fff");
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setVertTextAlign("center");

    obj.rectangle296 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle296:setParent(obj.rectangle295);
    obj.rectangle296:setName("rectangle296");
    obj.rectangle296:setAlign("bottom");
    obj.rectangle296:setHeight(1);
    obj.rectangle296:setColor("#fff");
    obj.rectangle296:setMargins({left=5, right=5, bottom=3});
    obj.rectangle296:setOpacity(0.3);

    obj.rectangle297 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle297:setParent(obj.rectangle292);
    obj.rectangle297:setWidth(64);
    obj.rectangle297:setAlign("left");
    obj.rectangle297:setColor("transparent");
    obj.rectangle297:setName("rectangle297");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.rectangle297);
    obj.edit82:setField("dn04");
    obj.edit82:setName("edit82");
    obj.edit82:setAlign("client");
    obj.edit82:setTransparent(true);
    obj.edit82:setFontSize(12);
    obj.edit82:setFontColor("#fff");
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setVertTextAlign("center");

    obj.rectangle298 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle298:setParent(obj.rectangle297);
    obj.rectangle298:setName("rectangle298");
    obj.rectangle298:setAlign("bottom");
    obj.rectangle298:setHeight(1);
    obj.rectangle298:setColor("#fff");
    obj.rectangle298:setMargins({left=5, right=5, bottom=3});
    obj.rectangle298:setOpacity(0.3);

    obj.rectangle299 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle299:setParent(obj.rectangle292);
    obj.rectangle299:setWidth(54);
    obj.rectangle299:setAlign("left");
    obj.rectangle299:setColor("transparent");
    obj.rectangle299:setName("rectangle299");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.rectangle299);
    obj.edit83:setField("al04");
    obj.edit83:setName("edit83");
    obj.edit83:setAlign("client");
    obj.edit83:setTransparent(true);
    obj.edit83:setFontSize(12);
    obj.edit83:setFontColor("#fff");
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setVertTextAlign("center");

    obj.rectangle300 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle300:setParent(obj.rectangle299);
    obj.rectangle300:setName("rectangle300");
    obj.rectangle300:setAlign("bottom");
    obj.rectangle300:setHeight(1);
    obj.rectangle300:setColor("#fff");
    obj.rectangle300:setMargins({left=5, right=5, bottom=3});
    obj.rectangle300:setOpacity(0.3);

    obj.rectangle301 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle301:setParent(obj.rectangle292);
    obj.rectangle301:setWidth(50);
    obj.rectangle301:setAlign("left");
    obj.rectangle301:setColor("transparent");
    obj.rectangle301:setName("rectangle301");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.rectangle301);
    obj.edit84:setField("ct04");
    obj.edit84:setName("edit84");
    obj.edit84:setAlign("client");
    obj.edit84:setTransparent(true);
    obj.edit84:setFontSize(12);
    obj.edit84:setFontColor("#fff");
    obj.edit84:setHorzTextAlign("center");
    obj.edit84:setVertTextAlign("center");

    obj.rectangle302 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle302:setParent(obj.rectangle301);
    obj.rectangle302:setName("rectangle302");
    obj.rectangle302:setAlign("bottom");
    obj.rectangle302:setHeight(1);
    obj.rectangle302:setColor("#fff");
    obj.rectangle302:setMargins({left=5, right=5, bottom=3});
    obj.rectangle302:setOpacity(0.3);

    obj.rectangle303 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle303:setParent(obj.rectangle252);
    obj.rectangle303:setAlign("top");
    obj.rectangle303:setHeight(25);
    obj.rectangle303:setColor("transparent");
    obj.rectangle303:setName("rectangle303");

    obj.rectangle304 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle304:setParent(obj.rectangle303);
    obj.rectangle304:setWidth(162);
    obj.rectangle304:setAlign("left");
    obj.rectangle304:setColor("transparent");
    obj.rectangle304:setName("rectangle304");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.rectangle304);
    obj.edit85:setField("at05");
    obj.edit85:setName("edit85");
    obj.edit85:setAlign("client");
    obj.edit85:setTransparent(true);
    obj.edit85:setFontSize(12);
    obj.edit85:setFontColor("#fff");
    obj.edit85:setHorzTextAlign("center");
    obj.edit85:setVertTextAlign("center");

    obj.rectangle305 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle305:setParent(obj.rectangle304);
    obj.rectangle305:setName("rectangle305");
    obj.rectangle305:setAlign("bottom");
    obj.rectangle305:setHeight(1);
    obj.rectangle305:setColor("#fff");
    obj.rectangle305:setMargins({left=5, right=5, bottom=3});
    obj.rectangle305:setOpacity(0.3);

    obj.rectangle306 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle306:setParent(obj.rectangle303);
    obj.rectangle306:setWidth(40);
    obj.rectangle306:setAlign("left");
    obj.rectangle306:setColor("transparent");
    obj.rectangle306:setName("rectangle306");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.rectangle306);
    obj.edit86:setField("ts05");
    obj.edit86:setName("edit86");
    obj.edit86:setAlign("client");
    obj.edit86:setTransparent(true);
    obj.edit86:setFontSize(12);
    obj.edit86:setFontColor("#fff");
    obj.edit86:setHorzTextAlign("center");
    obj.edit86:setVertTextAlign("center");

    obj.rectangle307 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle307:setParent(obj.rectangle306);
    obj.rectangle307:setName("rectangle307");
    obj.rectangle307:setAlign("bottom");
    obj.rectangle307:setHeight(1);
    obj.rectangle307:setColor("#fff");
    obj.rectangle307:setMargins({left=5, right=5, bottom=3});
    obj.rectangle307:setOpacity(0.3);

    obj.rectangle308 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle308:setParent(obj.rectangle303);
    obj.rectangle308:setWidth(64);
    obj.rectangle308:setAlign("left");
    obj.rectangle308:setColor("transparent");
    obj.rectangle308:setName("rectangle308");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.rectangle308);
    obj.edit87:setField("dn05");
    obj.edit87:setName("edit87");
    obj.edit87:setAlign("client");
    obj.edit87:setTransparent(true);
    obj.edit87:setFontSize(12);
    obj.edit87:setFontColor("#fff");
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setVertTextAlign("center");

    obj.rectangle309 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle309:setParent(obj.rectangle308);
    obj.rectangle309:setName("rectangle309");
    obj.rectangle309:setAlign("bottom");
    obj.rectangle309:setHeight(1);
    obj.rectangle309:setColor("#fff");
    obj.rectangle309:setMargins({left=5, right=5, bottom=3});
    obj.rectangle309:setOpacity(0.3);

    obj.rectangle310 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle310:setParent(obj.rectangle303);
    obj.rectangle310:setWidth(54);
    obj.rectangle310:setAlign("left");
    obj.rectangle310:setColor("transparent");
    obj.rectangle310:setName("rectangle310");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.rectangle310);
    obj.edit88:setField("al05");
    obj.edit88:setName("edit88");
    obj.edit88:setAlign("client");
    obj.edit88:setTransparent(true);
    obj.edit88:setFontSize(12);
    obj.edit88:setFontColor("#fff");
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setVertTextAlign("center");

    obj.rectangle311 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle311:setParent(obj.rectangle310);
    obj.rectangle311:setName("rectangle311");
    obj.rectangle311:setAlign("bottom");
    obj.rectangle311:setHeight(1);
    obj.rectangle311:setColor("#fff");
    obj.rectangle311:setMargins({left=5, right=5, bottom=3});
    obj.rectangle311:setOpacity(0.3);

    obj.rectangle312 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle312:setParent(obj.rectangle303);
    obj.rectangle312:setWidth(50);
    obj.rectangle312:setAlign("left");
    obj.rectangle312:setColor("transparent");
    obj.rectangle312:setName("rectangle312");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.rectangle312);
    obj.edit89:setField("ct05");
    obj.edit89:setName("edit89");
    obj.edit89:setAlign("client");
    obj.edit89:setTransparent(true);
    obj.edit89:setFontSize(12);
    obj.edit89:setFontColor("#fff");
    obj.edit89:setHorzTextAlign("center");
    obj.edit89:setVertTextAlign("center");

    obj.rectangle313 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle313:setParent(obj.rectangle312);
    obj.rectangle313:setName("rectangle313");
    obj.rectangle313:setAlign("bottom");
    obj.rectangle313:setHeight(1);
    obj.rectangle313:setColor("#fff");
    obj.rectangle313:setMargins({left=5, right=5, bottom=3});
    obj.rectangle313:setOpacity(0.3);

    obj.rectangle314 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle314:setParent(obj.rectangle252);
    obj.rectangle314:setAlign("top");
    obj.rectangle314:setHeight(25);
    obj.rectangle314:setColor("transparent");
    obj.rectangle314:setName("rectangle314");

    obj.rectangle315 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle315:setParent(obj.rectangle314);
    obj.rectangle315:setWidth(162);
    obj.rectangle315:setAlign("left");
    obj.rectangle315:setColor("transparent");
    obj.rectangle315:setName("rectangle315");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.rectangle315);
    obj.edit90:setField("at06");
    obj.edit90:setName("edit90");
    obj.edit90:setAlign("client");
    obj.edit90:setTransparent(true);
    obj.edit90:setFontSize(12);
    obj.edit90:setFontColor("#fff");
    obj.edit90:setHorzTextAlign("center");
    obj.edit90:setVertTextAlign("center");

    obj.rectangle316 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle316:setParent(obj.rectangle315);
    obj.rectangle316:setName("rectangle316");
    obj.rectangle316:setAlign("bottom");
    obj.rectangle316:setHeight(1);
    obj.rectangle316:setColor("#fff");
    obj.rectangle316:setMargins({left=5, right=5, bottom=3});
    obj.rectangle316:setOpacity(0.3);

    obj.rectangle317 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle317:setParent(obj.rectangle314);
    obj.rectangle317:setWidth(40);
    obj.rectangle317:setAlign("left");
    obj.rectangle317:setColor("transparent");
    obj.rectangle317:setName("rectangle317");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.rectangle317);
    obj.edit91:setField("ts06");
    obj.edit91:setName("edit91");
    obj.edit91:setAlign("client");
    obj.edit91:setTransparent(true);
    obj.edit91:setFontSize(12);
    obj.edit91:setFontColor("#fff");
    obj.edit91:setHorzTextAlign("center");
    obj.edit91:setVertTextAlign("center");

    obj.rectangle318 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle318:setParent(obj.rectangle317);
    obj.rectangle318:setName("rectangle318");
    obj.rectangle318:setAlign("bottom");
    obj.rectangle318:setHeight(1);
    obj.rectangle318:setColor("#fff");
    obj.rectangle318:setMargins({left=5, right=5, bottom=3});
    obj.rectangle318:setOpacity(0.3);

    obj.rectangle319 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle319:setParent(obj.rectangle314);
    obj.rectangle319:setWidth(64);
    obj.rectangle319:setAlign("left");
    obj.rectangle319:setColor("transparent");
    obj.rectangle319:setName("rectangle319");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.rectangle319);
    obj.edit92:setField("dn06");
    obj.edit92:setName("edit92");
    obj.edit92:setAlign("client");
    obj.edit92:setTransparent(true);
    obj.edit92:setFontSize(12);
    obj.edit92:setFontColor("#fff");
    obj.edit92:setHorzTextAlign("center");
    obj.edit92:setVertTextAlign("center");

    obj.rectangle320 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle320:setParent(obj.rectangle319);
    obj.rectangle320:setName("rectangle320");
    obj.rectangle320:setAlign("bottom");
    obj.rectangle320:setHeight(1);
    obj.rectangle320:setColor("#fff");
    obj.rectangle320:setMargins({left=5, right=5, bottom=3});
    obj.rectangle320:setOpacity(0.3);

    obj.rectangle321 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle321:setParent(obj.rectangle314);
    obj.rectangle321:setWidth(54);
    obj.rectangle321:setAlign("left");
    obj.rectangle321:setColor("transparent");
    obj.rectangle321:setName("rectangle321");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.rectangle321);
    obj.edit93:setField("al06");
    obj.edit93:setName("edit93");
    obj.edit93:setAlign("client");
    obj.edit93:setTransparent(true);
    obj.edit93:setFontSize(12);
    obj.edit93:setFontColor("#fff");
    obj.edit93:setHorzTextAlign("center");
    obj.edit93:setVertTextAlign("center");

    obj.rectangle322 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle322:setParent(obj.rectangle321);
    obj.rectangle322:setName("rectangle322");
    obj.rectangle322:setAlign("bottom");
    obj.rectangle322:setHeight(1);
    obj.rectangle322:setColor("#fff");
    obj.rectangle322:setMargins({left=5, right=5, bottom=3});
    obj.rectangle322:setOpacity(0.3);

    obj.rectangle323 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle323:setParent(obj.rectangle314);
    obj.rectangle323:setWidth(50);
    obj.rectangle323:setAlign("left");
    obj.rectangle323:setColor("transparent");
    obj.rectangle323:setName("rectangle323");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.rectangle323);
    obj.edit94:setField("ct06");
    obj.edit94:setName("edit94");
    obj.edit94:setAlign("client");
    obj.edit94:setTransparent(true);
    obj.edit94:setFontSize(12);
    obj.edit94:setFontColor("#fff");
    obj.edit94:setHorzTextAlign("center");
    obj.edit94:setVertTextAlign("center");

    obj.rectangle324 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle324:setParent(obj.rectangle323);
    obj.rectangle324:setName("rectangle324");
    obj.rectangle324:setAlign("bottom");
    obj.rectangle324:setHeight(1);
    obj.rectangle324:setColor("#fff");
    obj.rectangle324:setMargins({left=5, right=5, bottom=3});
    obj.rectangle324:setOpacity(0.3);

    obj.rectangle325 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle325:setParent(obj.rectangle252);
    obj.rectangle325:setAlign("top");
    obj.rectangle325:setHeight(25);
    obj.rectangle325:setColor("transparent");
    obj.rectangle325:setName("rectangle325");

    obj.rectangle326 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle326:setParent(obj.rectangle325);
    obj.rectangle326:setWidth(162);
    obj.rectangle326:setAlign("left");
    obj.rectangle326:setColor("transparent");
    obj.rectangle326:setName("rectangle326");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.rectangle326);
    obj.edit95:setField("at07");
    obj.edit95:setName("edit95");
    obj.edit95:setAlign("client");
    obj.edit95:setTransparent(true);
    obj.edit95:setFontSize(12);
    obj.edit95:setFontColor("#fff");
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setVertTextAlign("center");

    obj.rectangle327 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle327:setParent(obj.rectangle326);
    obj.rectangle327:setName("rectangle327");
    obj.rectangle327:setAlign("bottom");
    obj.rectangle327:setHeight(1);
    obj.rectangle327:setColor("#fff");
    obj.rectangle327:setMargins({left=5, right=5, bottom=3});
    obj.rectangle327:setOpacity(0.3);

    obj.rectangle328 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle328:setParent(obj.rectangle325);
    obj.rectangle328:setWidth(40);
    obj.rectangle328:setAlign("left");
    obj.rectangle328:setColor("transparent");
    obj.rectangle328:setName("rectangle328");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.rectangle328);
    obj.edit96:setField("ts07");
    obj.edit96:setName("edit96");
    obj.edit96:setAlign("client");
    obj.edit96:setTransparent(true);
    obj.edit96:setFontSize(12);
    obj.edit96:setFontColor("#fff");
    obj.edit96:setHorzTextAlign("center");
    obj.edit96:setVertTextAlign("center");

    obj.rectangle329 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle329:setParent(obj.rectangle328);
    obj.rectangle329:setName("rectangle329");
    obj.rectangle329:setAlign("bottom");
    obj.rectangle329:setHeight(1);
    obj.rectangle329:setColor("#fff");
    obj.rectangle329:setMargins({left=5, right=5, bottom=3});
    obj.rectangle329:setOpacity(0.3);

    obj.rectangle330 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle330:setParent(obj.rectangle325);
    obj.rectangle330:setWidth(64);
    obj.rectangle330:setAlign("left");
    obj.rectangle330:setColor("transparent");
    obj.rectangle330:setName("rectangle330");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.rectangle330);
    obj.edit97:setField("dn07");
    obj.edit97:setName("edit97");
    obj.edit97:setAlign("client");
    obj.edit97:setTransparent(true);
    obj.edit97:setFontSize(12);
    obj.edit97:setFontColor("#fff");
    obj.edit97:setHorzTextAlign("center");
    obj.edit97:setVertTextAlign("center");

    obj.rectangle331 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle331:setParent(obj.rectangle330);
    obj.rectangle331:setName("rectangle331");
    obj.rectangle331:setAlign("bottom");
    obj.rectangle331:setHeight(1);
    obj.rectangle331:setColor("#fff");
    obj.rectangle331:setMargins({left=5, right=5, bottom=3});
    obj.rectangle331:setOpacity(0.3);

    obj.rectangle332 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle332:setParent(obj.rectangle325);
    obj.rectangle332:setWidth(54);
    obj.rectangle332:setAlign("left");
    obj.rectangle332:setColor("transparent");
    obj.rectangle332:setName("rectangle332");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.rectangle332);
    obj.edit98:setField("al07");
    obj.edit98:setName("edit98");
    obj.edit98:setAlign("client");
    obj.edit98:setTransparent(true);
    obj.edit98:setFontSize(12);
    obj.edit98:setFontColor("#fff");
    obj.edit98:setHorzTextAlign("center");
    obj.edit98:setVertTextAlign("center");

    obj.rectangle333 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle333:setParent(obj.rectangle332);
    obj.rectangle333:setName("rectangle333");
    obj.rectangle333:setAlign("bottom");
    obj.rectangle333:setHeight(1);
    obj.rectangle333:setColor("#fff");
    obj.rectangle333:setMargins({left=5, right=5, bottom=3});
    obj.rectangle333:setOpacity(0.3);

    obj.rectangle334 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle334:setParent(obj.rectangle325);
    obj.rectangle334:setWidth(50);
    obj.rectangle334:setAlign("left");
    obj.rectangle334:setColor("transparent");
    obj.rectangle334:setName("rectangle334");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.rectangle334);
    obj.edit99:setField("ct07");
    obj.edit99:setName("edit99");
    obj.edit99:setAlign("client");
    obj.edit99:setTransparent(true);
    obj.edit99:setFontSize(12);
    obj.edit99:setFontColor("#fff");
    obj.edit99:setHorzTextAlign("center");
    obj.edit99:setVertTextAlign("center");

    obj.rectangle335 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle335:setParent(obj.rectangle334);
    obj.rectangle335:setName("rectangle335");
    obj.rectangle335:setAlign("bottom");
    obj.rectangle335:setHeight(1);
    obj.rectangle335:setColor("#fff");
    obj.rectangle335:setMargins({left=5, right=5, bottom=3});
    obj.rectangle335:setOpacity(0.3);

    obj.rectangle336 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle336:setParent(obj.rectangle252);
    obj.rectangle336:setAlign("top");
    obj.rectangle336:setHeight(25);
    obj.rectangle336:setColor("transparent");
    obj.rectangle336:setName("rectangle336");

    obj.rectangle337 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle337:setParent(obj.rectangle336);
    obj.rectangle337:setWidth(162);
    obj.rectangle337:setAlign("left");
    obj.rectangle337:setColor("transparent");
    obj.rectangle337:setName("rectangle337");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.rectangle337);
    obj.edit100:setField("at08");
    obj.edit100:setName("edit100");
    obj.edit100:setAlign("client");
    obj.edit100:setTransparent(true);
    obj.edit100:setFontSize(12);
    obj.edit100:setFontColor("#fff");
    obj.edit100:setHorzTextAlign("center");
    obj.edit100:setVertTextAlign("center");

    obj.rectangle338 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle338:setParent(obj.rectangle337);
    obj.rectangle338:setName("rectangle338");
    obj.rectangle338:setAlign("bottom");
    obj.rectangle338:setHeight(1);
    obj.rectangle338:setColor("#fff");
    obj.rectangle338:setMargins({left=5, right=5, bottom=3});
    obj.rectangle338:setOpacity(0.3);

    obj.rectangle339 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle339:setParent(obj.rectangle336);
    obj.rectangle339:setWidth(40);
    obj.rectangle339:setAlign("left");
    obj.rectangle339:setColor("transparent");
    obj.rectangle339:setName("rectangle339");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.rectangle339);
    obj.edit101:setField("ts08");
    obj.edit101:setName("edit101");
    obj.edit101:setAlign("client");
    obj.edit101:setTransparent(true);
    obj.edit101:setFontSize(12);
    obj.edit101:setFontColor("#fff");
    obj.edit101:setHorzTextAlign("center");
    obj.edit101:setVertTextAlign("center");

    obj.rectangle340 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle340:setParent(obj.rectangle339);
    obj.rectangle340:setName("rectangle340");
    obj.rectangle340:setAlign("bottom");
    obj.rectangle340:setHeight(1);
    obj.rectangle340:setColor("#fff");
    obj.rectangle340:setMargins({left=5, right=5, bottom=3});
    obj.rectangle340:setOpacity(0.3);

    obj.rectangle341 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle341:setParent(obj.rectangle336);
    obj.rectangle341:setWidth(64);
    obj.rectangle341:setAlign("left");
    obj.rectangle341:setColor("transparent");
    obj.rectangle341:setName("rectangle341");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.rectangle341);
    obj.edit102:setField("dn08");
    obj.edit102:setName("edit102");
    obj.edit102:setAlign("client");
    obj.edit102:setTransparent(true);
    obj.edit102:setFontSize(12);
    obj.edit102:setFontColor("#fff");
    obj.edit102:setHorzTextAlign("center");
    obj.edit102:setVertTextAlign("center");

    obj.rectangle342 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle342:setParent(obj.rectangle341);
    obj.rectangle342:setName("rectangle342");
    obj.rectangle342:setAlign("bottom");
    obj.rectangle342:setHeight(1);
    obj.rectangle342:setColor("#fff");
    obj.rectangle342:setMargins({left=5, right=5, bottom=3});
    obj.rectangle342:setOpacity(0.3);

    obj.rectangle343 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle343:setParent(obj.rectangle336);
    obj.rectangle343:setWidth(54);
    obj.rectangle343:setAlign("left");
    obj.rectangle343:setColor("transparent");
    obj.rectangle343:setName("rectangle343");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.rectangle343);
    obj.edit103:setField("al08");
    obj.edit103:setName("edit103");
    obj.edit103:setAlign("client");
    obj.edit103:setTransparent(true);
    obj.edit103:setFontSize(12);
    obj.edit103:setFontColor("#fff");
    obj.edit103:setHorzTextAlign("center");
    obj.edit103:setVertTextAlign("center");

    obj.rectangle344 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle344:setParent(obj.rectangle343);
    obj.rectangle344:setName("rectangle344");
    obj.rectangle344:setAlign("bottom");
    obj.rectangle344:setHeight(1);
    obj.rectangle344:setColor("#fff");
    obj.rectangle344:setMargins({left=5, right=5, bottom=3});
    obj.rectangle344:setOpacity(0.3);

    obj.rectangle345 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle345:setParent(obj.rectangle336);
    obj.rectangle345:setWidth(50);
    obj.rectangle345:setAlign("left");
    obj.rectangle345:setColor("transparent");
    obj.rectangle345:setName("rectangle345");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.rectangle345);
    obj.edit104:setField("ct08");
    obj.edit104:setName("edit104");
    obj.edit104:setAlign("client");
    obj.edit104:setTransparent(true);
    obj.edit104:setFontSize(12);
    obj.edit104:setFontColor("#fff");
    obj.edit104:setHorzTextAlign("center");
    obj.edit104:setVertTextAlign("center");

    obj.rectangle346 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle346:setParent(obj.rectangle345);
    obj.rectangle346:setName("rectangle346");
    obj.rectangle346:setAlign("bottom");
    obj.rectangle346:setHeight(1);
    obj.rectangle346:setColor("#fff");
    obj.rectangle346:setMargins({left=5, right=5, bottom=3});
    obj.rectangle346:setOpacity(0.3);

    obj.rectangle347 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle347:setParent(obj.rectangle252);
    obj.rectangle347:setAlign("top");
    obj.rectangle347:setHeight(25);
    obj.rectangle347:setColor("transparent");
    obj.rectangle347:setName("rectangle347");

    obj.rectangle348 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle348:setParent(obj.rectangle347);
    obj.rectangle348:setWidth(162);
    obj.rectangle348:setAlign("left");
    obj.rectangle348:setColor("transparent");
    obj.rectangle348:setName("rectangle348");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.rectangle348);
    obj.edit105:setField("at09");
    obj.edit105:setName("edit105");
    obj.edit105:setAlign("client");
    obj.edit105:setTransparent(true);
    obj.edit105:setFontSize(12);
    obj.edit105:setFontColor("#fff");
    obj.edit105:setHorzTextAlign("center");
    obj.edit105:setVertTextAlign("center");

    obj.rectangle349 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle349:setParent(obj.rectangle348);
    obj.rectangle349:setName("rectangle349");
    obj.rectangle349:setAlign("bottom");
    obj.rectangle349:setHeight(1);
    obj.rectangle349:setColor("#fff");
    obj.rectangle349:setMargins({left=5, right=5, bottom=3});
    obj.rectangle349:setOpacity(0.3);

    obj.rectangle350 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle350:setParent(obj.rectangle347);
    obj.rectangle350:setWidth(40);
    obj.rectangle350:setAlign("left");
    obj.rectangle350:setColor("transparent");
    obj.rectangle350:setName("rectangle350");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.rectangle350);
    obj.edit106:setField("ts09");
    obj.edit106:setName("edit106");
    obj.edit106:setAlign("client");
    obj.edit106:setTransparent(true);
    obj.edit106:setFontSize(12);
    obj.edit106:setFontColor("#fff");
    obj.edit106:setHorzTextAlign("center");
    obj.edit106:setVertTextAlign("center");

    obj.rectangle351 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle351:setParent(obj.rectangle350);
    obj.rectangle351:setName("rectangle351");
    obj.rectangle351:setAlign("bottom");
    obj.rectangle351:setHeight(1);
    obj.rectangle351:setColor("#fff");
    obj.rectangle351:setMargins({left=5, right=5, bottom=3});
    obj.rectangle351:setOpacity(0.3);

    obj.rectangle352 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle352:setParent(obj.rectangle347);
    obj.rectangle352:setWidth(64);
    obj.rectangle352:setAlign("left");
    obj.rectangle352:setColor("transparent");
    obj.rectangle352:setName("rectangle352");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.rectangle352);
    obj.edit107:setField("dn09");
    obj.edit107:setName("edit107");
    obj.edit107:setAlign("client");
    obj.edit107:setTransparent(true);
    obj.edit107:setFontSize(12);
    obj.edit107:setFontColor("#fff");
    obj.edit107:setHorzTextAlign("center");
    obj.edit107:setVertTextAlign("center");

    obj.rectangle353 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle353:setParent(obj.rectangle352);
    obj.rectangle353:setName("rectangle353");
    obj.rectangle353:setAlign("bottom");
    obj.rectangle353:setHeight(1);
    obj.rectangle353:setColor("#fff");
    obj.rectangle353:setMargins({left=5, right=5, bottom=3});
    obj.rectangle353:setOpacity(0.3);

    obj.rectangle354 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle354:setParent(obj.rectangle347);
    obj.rectangle354:setWidth(54);
    obj.rectangle354:setAlign("left");
    obj.rectangle354:setColor("transparent");
    obj.rectangle354:setName("rectangle354");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.rectangle354);
    obj.edit108:setField("al09");
    obj.edit108:setName("edit108");
    obj.edit108:setAlign("client");
    obj.edit108:setTransparent(true);
    obj.edit108:setFontSize(12);
    obj.edit108:setFontColor("#fff");
    obj.edit108:setHorzTextAlign("center");
    obj.edit108:setVertTextAlign("center");

    obj.rectangle355 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle355:setParent(obj.rectangle354);
    obj.rectangle355:setName("rectangle355");
    obj.rectangle355:setAlign("bottom");
    obj.rectangle355:setHeight(1);
    obj.rectangle355:setColor("#fff");
    obj.rectangle355:setMargins({left=5, right=5, bottom=3});
    obj.rectangle355:setOpacity(0.3);

    obj.rectangle356 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle356:setParent(obj.rectangle347);
    obj.rectangle356:setWidth(50);
    obj.rectangle356:setAlign("left");
    obj.rectangle356:setColor("transparent");
    obj.rectangle356:setName("rectangle356");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.rectangle356);
    obj.edit109:setField("ct09");
    obj.edit109:setName("edit109");
    obj.edit109:setAlign("client");
    obj.edit109:setTransparent(true);
    obj.edit109:setFontSize(12);
    obj.edit109:setFontColor("#fff");
    obj.edit109:setHorzTextAlign("center");
    obj.edit109:setVertTextAlign("center");

    obj.rectangle357 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle357:setParent(obj.rectangle356);
    obj.rectangle357:setName("rectangle357");
    obj.rectangle357:setAlign("bottom");
    obj.rectangle357:setHeight(1);
    obj.rectangle357:setColor("#fff");
    obj.rectangle357:setMargins({left=5, right=5, bottom=3});
    obj.rectangle357:setOpacity(0.3);

    obj.rectangle358 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle358:setParent(obj.rectangle252);
    obj.rectangle358:setAlign("top");
    obj.rectangle358:setHeight(25);
    obj.rectangle358:setColor("transparent");
    obj.rectangle358:setName("rectangle358");

    obj.rectangle359 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle359:setParent(obj.rectangle358);
    obj.rectangle359:setWidth(162);
    obj.rectangle359:setAlign("left");
    obj.rectangle359:setColor("transparent");
    obj.rectangle359:setName("rectangle359");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.rectangle359);
    obj.edit110:setField("at10");
    obj.edit110:setName("edit110");
    obj.edit110:setAlign("client");
    obj.edit110:setTransparent(true);
    obj.edit110:setFontSize(12);
    obj.edit110:setFontColor("#fff");
    obj.edit110:setHorzTextAlign("center");
    obj.edit110:setVertTextAlign("center");

    obj.rectangle360 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle360:setParent(obj.rectangle359);
    obj.rectangle360:setName("rectangle360");
    obj.rectangle360:setAlign("bottom");
    obj.rectangle360:setHeight(1);
    obj.rectangle360:setColor("#fff");
    obj.rectangle360:setMargins({left=5, right=5, bottom=3});
    obj.rectangle360:setOpacity(0.3);

    obj.rectangle361 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle361:setParent(obj.rectangle358);
    obj.rectangle361:setWidth(40);
    obj.rectangle361:setAlign("left");
    obj.rectangle361:setColor("transparent");
    obj.rectangle361:setName("rectangle361");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.rectangle361);
    obj.edit111:setField("ts10");
    obj.edit111:setName("edit111");
    obj.edit111:setAlign("client");
    obj.edit111:setTransparent(true);
    obj.edit111:setFontSize(12);
    obj.edit111:setFontColor("#fff");
    obj.edit111:setHorzTextAlign("center");
    obj.edit111:setVertTextAlign("center");

    obj.rectangle362 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle362:setParent(obj.rectangle361);
    obj.rectangle362:setName("rectangle362");
    obj.rectangle362:setAlign("bottom");
    obj.rectangle362:setHeight(1);
    obj.rectangle362:setColor("#fff");
    obj.rectangle362:setMargins({left=5, right=5, bottom=3});
    obj.rectangle362:setOpacity(0.3);

    obj.rectangle363 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle363:setParent(obj.rectangle358);
    obj.rectangle363:setWidth(64);
    obj.rectangle363:setAlign("left");
    obj.rectangle363:setColor("transparent");
    obj.rectangle363:setName("rectangle363");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.rectangle363);
    obj.edit112:setField("dn10");
    obj.edit112:setName("edit112");
    obj.edit112:setAlign("client");
    obj.edit112:setTransparent(true);
    obj.edit112:setFontSize(12);
    obj.edit112:setFontColor("#fff");
    obj.edit112:setHorzTextAlign("center");
    obj.edit112:setVertTextAlign("center");

    obj.rectangle364 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle364:setParent(obj.rectangle363);
    obj.rectangle364:setName("rectangle364");
    obj.rectangle364:setAlign("bottom");
    obj.rectangle364:setHeight(1);
    obj.rectangle364:setColor("#fff");
    obj.rectangle364:setMargins({left=5, right=5, bottom=3});
    obj.rectangle364:setOpacity(0.3);

    obj.rectangle365 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle365:setParent(obj.rectangle358);
    obj.rectangle365:setWidth(54);
    obj.rectangle365:setAlign("left");
    obj.rectangle365:setColor("transparent");
    obj.rectangle365:setName("rectangle365");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.rectangle365);
    obj.edit113:setField("al10");
    obj.edit113:setName("edit113");
    obj.edit113:setAlign("client");
    obj.edit113:setTransparent(true);
    obj.edit113:setFontSize(12);
    obj.edit113:setFontColor("#fff");
    obj.edit113:setHorzTextAlign("center");
    obj.edit113:setVertTextAlign("center");

    obj.rectangle366 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle366:setParent(obj.rectangle365);
    obj.rectangle366:setName("rectangle366");
    obj.rectangle366:setAlign("bottom");
    obj.rectangle366:setHeight(1);
    obj.rectangle366:setColor("#fff");
    obj.rectangle366:setMargins({left=5, right=5, bottom=3});
    obj.rectangle366:setOpacity(0.3);

    obj.rectangle367 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle367:setParent(obj.rectangle358);
    obj.rectangle367:setWidth(50);
    obj.rectangle367:setAlign("left");
    obj.rectangle367:setColor("transparent");
    obj.rectangle367:setName("rectangle367");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.rectangle367);
    obj.edit114:setField("ct10");
    obj.edit114:setName("edit114");
    obj.edit114:setAlign("client");
    obj.edit114:setTransparent(true);
    obj.edit114:setFontSize(12);
    obj.edit114:setFontColor("#fff");
    obj.edit114:setHorzTextAlign("center");
    obj.edit114:setVertTextAlign("center");

    obj.rectangle368 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle368:setParent(obj.rectangle367);
    obj.rectangle368:setName("rectangle368");
    obj.rectangle368:setAlign("bottom");
    obj.rectangle368:setHeight(1);
    obj.rectangle368:setColor("#fff");
    obj.rectangle368:setMargins({left=5, right=5, bottom=3});
    obj.rectangle368:setOpacity(0.3);

    obj.rectangle369 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle369:setParent(obj.rectangle252);
    obj.rectangle369:setAlign("top");
    obj.rectangle369:setHeight(25);
    obj.rectangle369:setColor("transparent");
    obj.rectangle369:setName("rectangle369");

    obj.rectangle370 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle370:setParent(obj.rectangle369);
    obj.rectangle370:setWidth(162);
    obj.rectangle370:setAlign("left");
    obj.rectangle370:setColor("transparent");
    obj.rectangle370:setName("rectangle370");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.rectangle370);
    obj.edit115:setField("at11");
    obj.edit115:setName("edit115");
    obj.edit115:setAlign("client");
    obj.edit115:setTransparent(true);
    obj.edit115:setFontSize(12);
    obj.edit115:setFontColor("#fff");
    obj.edit115:setHorzTextAlign("center");
    obj.edit115:setVertTextAlign("center");

    obj.rectangle371 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle371:setParent(obj.rectangle370);
    obj.rectangle371:setName("rectangle371");
    obj.rectangle371:setAlign("bottom");
    obj.rectangle371:setHeight(1);
    obj.rectangle371:setColor("#fff");
    obj.rectangle371:setMargins({left=5, right=5, bottom=3});
    obj.rectangle371:setOpacity(0.3);

    obj.rectangle372 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle372:setParent(obj.rectangle369);
    obj.rectangle372:setWidth(40);
    obj.rectangle372:setAlign("left");
    obj.rectangle372:setColor("transparent");
    obj.rectangle372:setName("rectangle372");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.rectangle372);
    obj.edit116:setField("ts11");
    obj.edit116:setName("edit116");
    obj.edit116:setAlign("client");
    obj.edit116:setTransparent(true);
    obj.edit116:setFontSize(12);
    obj.edit116:setFontColor("#fff");
    obj.edit116:setHorzTextAlign("center");
    obj.edit116:setVertTextAlign("center");

    obj.rectangle373 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle373:setParent(obj.rectangle372);
    obj.rectangle373:setName("rectangle373");
    obj.rectangle373:setAlign("bottom");
    obj.rectangle373:setHeight(1);
    obj.rectangle373:setColor("#fff");
    obj.rectangle373:setMargins({left=5, right=5, bottom=3});
    obj.rectangle373:setOpacity(0.3);

    obj.rectangle374 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle374:setParent(obj.rectangle369);
    obj.rectangle374:setWidth(64);
    obj.rectangle374:setAlign("left");
    obj.rectangle374:setColor("transparent");
    obj.rectangle374:setName("rectangle374");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.rectangle374);
    obj.edit117:setField("dn11");
    obj.edit117:setName("edit117");
    obj.edit117:setAlign("client");
    obj.edit117:setTransparent(true);
    obj.edit117:setFontSize(12);
    obj.edit117:setFontColor("#fff");
    obj.edit117:setHorzTextAlign("center");
    obj.edit117:setVertTextAlign("center");

    obj.rectangle375 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle375:setParent(obj.rectangle374);
    obj.rectangle375:setName("rectangle375");
    obj.rectangle375:setAlign("bottom");
    obj.rectangle375:setHeight(1);
    obj.rectangle375:setColor("#fff");
    obj.rectangle375:setMargins({left=5, right=5, bottom=3});
    obj.rectangle375:setOpacity(0.3);

    obj.rectangle376 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle376:setParent(obj.rectangle369);
    obj.rectangle376:setWidth(54);
    obj.rectangle376:setAlign("left");
    obj.rectangle376:setColor("transparent");
    obj.rectangle376:setName("rectangle376");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.rectangle376);
    obj.edit118:setField("al11");
    obj.edit118:setName("edit118");
    obj.edit118:setAlign("client");
    obj.edit118:setTransparent(true);
    obj.edit118:setFontSize(12);
    obj.edit118:setFontColor("#fff");
    obj.edit118:setHorzTextAlign("center");
    obj.edit118:setVertTextAlign("center");

    obj.rectangle377 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle377:setParent(obj.rectangle376);
    obj.rectangle377:setName("rectangle377");
    obj.rectangle377:setAlign("bottom");
    obj.rectangle377:setHeight(1);
    obj.rectangle377:setColor("#fff");
    obj.rectangle377:setMargins({left=5, right=5, bottom=3});
    obj.rectangle377:setOpacity(0.3);

    obj.rectangle378 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle378:setParent(obj.rectangle369);
    obj.rectangle378:setWidth(50);
    obj.rectangle378:setAlign("left");
    obj.rectangle378:setColor("transparent");
    obj.rectangle378:setName("rectangle378");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.rectangle378);
    obj.edit119:setField("ct11");
    obj.edit119:setName("edit119");
    obj.edit119:setAlign("client");
    obj.edit119:setTransparent(true);
    obj.edit119:setFontSize(12);
    obj.edit119:setFontColor("#fff");
    obj.edit119:setHorzTextAlign("center");
    obj.edit119:setVertTextAlign("center");

    obj.rectangle379 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle379:setParent(obj.rectangle378);
    obj.rectangle379:setName("rectangle379");
    obj.rectangle379:setAlign("bottom");
    obj.rectangle379:setHeight(1);
    obj.rectangle379:setColor("#fff");
    obj.rectangle379:setMargins({left=5, right=5, bottom=3});
    obj.rectangle379:setOpacity(0.3);

    obj.rectangle380 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle380:setParent(obj.rectangle252);
    obj.rectangle380:setAlign("top");
    obj.rectangle380:setHeight(25);
    obj.rectangle380:setColor("transparent");
    obj.rectangle380:setName("rectangle380");

    obj.rectangle381 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle381:setParent(obj.rectangle380);
    obj.rectangle381:setWidth(162);
    obj.rectangle381:setAlign("left");
    obj.rectangle381:setColor("transparent");
    obj.rectangle381:setName("rectangle381");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.rectangle381);
    obj.edit120:setField("at12");
    obj.edit120:setName("edit120");
    obj.edit120:setAlign("client");
    obj.edit120:setTransparent(true);
    obj.edit120:setFontSize(12);
    obj.edit120:setFontColor("#fff");
    obj.edit120:setHorzTextAlign("center");
    obj.edit120:setVertTextAlign("center");

    obj.rectangle382 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle382:setParent(obj.rectangle381);
    obj.rectangle382:setName("rectangle382");
    obj.rectangle382:setAlign("bottom");
    obj.rectangle382:setHeight(1);
    obj.rectangle382:setColor("#fff");
    obj.rectangle382:setMargins({left=5, right=5, bottom=3});
    obj.rectangle382:setOpacity(0.3);

    obj.rectangle383 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle383:setParent(obj.rectangle380);
    obj.rectangle383:setWidth(40);
    obj.rectangle383:setAlign("left");
    obj.rectangle383:setColor("transparent");
    obj.rectangle383:setName("rectangle383");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.rectangle383);
    obj.edit121:setField("ts12");
    obj.edit121:setName("edit121");
    obj.edit121:setAlign("client");
    obj.edit121:setTransparent(true);
    obj.edit121:setFontSize(12);
    obj.edit121:setFontColor("#fff");
    obj.edit121:setHorzTextAlign("center");
    obj.edit121:setVertTextAlign("center");

    obj.rectangle384 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle384:setParent(obj.rectangle383);
    obj.rectangle384:setName("rectangle384");
    obj.rectangle384:setAlign("bottom");
    obj.rectangle384:setHeight(1);
    obj.rectangle384:setColor("#fff");
    obj.rectangle384:setMargins({left=5, right=5, bottom=3});
    obj.rectangle384:setOpacity(0.3);

    obj.rectangle385 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle385:setParent(obj.rectangle380);
    obj.rectangle385:setWidth(64);
    obj.rectangle385:setAlign("left");
    obj.rectangle385:setColor("transparent");
    obj.rectangle385:setName("rectangle385");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.rectangle385);
    obj.edit122:setField("dn12");
    obj.edit122:setName("edit122");
    obj.edit122:setAlign("client");
    obj.edit122:setTransparent(true);
    obj.edit122:setFontSize(12);
    obj.edit122:setFontColor("#fff");
    obj.edit122:setHorzTextAlign("center");
    obj.edit122:setVertTextAlign("center");

    obj.rectangle386 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle386:setParent(obj.rectangle385);
    obj.rectangle386:setName("rectangle386");
    obj.rectangle386:setAlign("bottom");
    obj.rectangle386:setHeight(1);
    obj.rectangle386:setColor("#fff");
    obj.rectangle386:setMargins({left=5, right=5, bottom=3});
    obj.rectangle386:setOpacity(0.3);

    obj.rectangle387 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle387:setParent(obj.rectangle380);
    obj.rectangle387:setWidth(54);
    obj.rectangle387:setAlign("left");
    obj.rectangle387:setColor("transparent");
    obj.rectangle387:setName("rectangle387");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.rectangle387);
    obj.edit123:setField("al12");
    obj.edit123:setName("edit123");
    obj.edit123:setAlign("client");
    obj.edit123:setTransparent(true);
    obj.edit123:setFontSize(12);
    obj.edit123:setFontColor("#fff");
    obj.edit123:setHorzTextAlign("center");
    obj.edit123:setVertTextAlign("center");

    obj.rectangle388 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle388:setParent(obj.rectangle387);
    obj.rectangle388:setName("rectangle388");
    obj.rectangle388:setAlign("bottom");
    obj.rectangle388:setHeight(1);
    obj.rectangle388:setColor("#fff");
    obj.rectangle388:setMargins({left=5, right=5, bottom=3});
    obj.rectangle388:setOpacity(0.3);

    obj.rectangle389 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle389:setParent(obj.rectangle380);
    obj.rectangle389:setWidth(50);
    obj.rectangle389:setAlign("left");
    obj.rectangle389:setColor("transparent");
    obj.rectangle389:setName("rectangle389");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.rectangle389);
    obj.edit124:setField("ct12");
    obj.edit124:setName("edit124");
    obj.edit124:setAlign("client");
    obj.edit124:setTransparent(true);
    obj.edit124:setFontSize(12);
    obj.edit124:setFontColor("#fff");
    obj.edit124:setHorzTextAlign("center");
    obj.edit124:setVertTextAlign("center");

    obj.rectangle390 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle390:setParent(obj.rectangle389);
    obj.rectangle390:setName("rectangle390");
    obj.rectangle390:setAlign("bottom");
    obj.rectangle390:setHeight(1);
    obj.rectangle390:setColor("#fff");
    obj.rectangle390:setMargins({left=5, right=5, bottom=3});
    obj.rectangle390:setOpacity(0.3);

    obj.rectangle391 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle391:setParent(obj.rectangle252);
    obj.rectangle391:setAlign("top");
    obj.rectangle391:setHeight(25);
    obj.rectangle391:setColor("transparent");
    obj.rectangle391:setName("rectangle391");

    obj.rectangle392 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle392:setParent(obj.rectangle391);
    obj.rectangle392:setWidth(162);
    obj.rectangle392:setAlign("left");
    obj.rectangle392:setColor("transparent");
    obj.rectangle392:setName("rectangle392");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.rectangle392);
    obj.edit125:setField("at13");
    obj.edit125:setName("edit125");
    obj.edit125:setAlign("client");
    obj.edit125:setTransparent(true);
    obj.edit125:setFontSize(12);
    obj.edit125:setFontColor("#fff");
    obj.edit125:setHorzTextAlign("center");
    obj.edit125:setVertTextAlign("center");

    obj.rectangle393 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle393:setParent(obj.rectangle392);
    obj.rectangle393:setName("rectangle393");
    obj.rectangle393:setAlign("bottom");
    obj.rectangle393:setHeight(1);
    obj.rectangle393:setColor("#fff");
    obj.rectangle393:setMargins({left=5, right=5, bottom=3});
    obj.rectangle393:setOpacity(0.3);

    obj.rectangle394 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle394:setParent(obj.rectangle391);
    obj.rectangle394:setWidth(40);
    obj.rectangle394:setAlign("left");
    obj.rectangle394:setColor("transparent");
    obj.rectangle394:setName("rectangle394");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.rectangle394);
    obj.edit126:setField("ts13");
    obj.edit126:setName("edit126");
    obj.edit126:setAlign("client");
    obj.edit126:setTransparent(true);
    obj.edit126:setFontSize(12);
    obj.edit126:setFontColor("#fff");
    obj.edit126:setHorzTextAlign("center");
    obj.edit126:setVertTextAlign("center");

    obj.rectangle395 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle395:setParent(obj.rectangle394);
    obj.rectangle395:setName("rectangle395");
    obj.rectangle395:setAlign("bottom");
    obj.rectangle395:setHeight(1);
    obj.rectangle395:setColor("#fff");
    obj.rectangle395:setMargins({left=5, right=5, bottom=3});
    obj.rectangle395:setOpacity(0.3);

    obj.rectangle396 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle396:setParent(obj.rectangle391);
    obj.rectangle396:setWidth(64);
    obj.rectangle396:setAlign("left");
    obj.rectangle396:setColor("transparent");
    obj.rectangle396:setName("rectangle396");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.rectangle396);
    obj.edit127:setField("dn13");
    obj.edit127:setName("edit127");
    obj.edit127:setAlign("client");
    obj.edit127:setTransparent(true);
    obj.edit127:setFontSize(12);
    obj.edit127:setFontColor("#fff");
    obj.edit127:setHorzTextAlign("center");
    obj.edit127:setVertTextAlign("center");

    obj.rectangle397 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle397:setParent(obj.rectangle396);
    obj.rectangle397:setName("rectangle397");
    obj.rectangle397:setAlign("bottom");
    obj.rectangle397:setHeight(1);
    obj.rectangle397:setColor("#fff");
    obj.rectangle397:setMargins({left=5, right=5, bottom=3});
    obj.rectangle397:setOpacity(0.3);

    obj.rectangle398 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle398:setParent(obj.rectangle391);
    obj.rectangle398:setWidth(54);
    obj.rectangle398:setAlign("left");
    obj.rectangle398:setColor("transparent");
    obj.rectangle398:setName("rectangle398");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.rectangle398);
    obj.edit128:setField("al13");
    obj.edit128:setName("edit128");
    obj.edit128:setAlign("client");
    obj.edit128:setTransparent(true);
    obj.edit128:setFontSize(12);
    obj.edit128:setFontColor("#fff");
    obj.edit128:setHorzTextAlign("center");
    obj.edit128:setVertTextAlign("center");

    obj.rectangle399 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle399:setParent(obj.rectangle398);
    obj.rectangle399:setName("rectangle399");
    obj.rectangle399:setAlign("bottom");
    obj.rectangle399:setHeight(1);
    obj.rectangle399:setColor("#fff");
    obj.rectangle399:setMargins({left=5, right=5, bottom=3});
    obj.rectangle399:setOpacity(0.3);

    obj.rectangle400 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle400:setParent(obj.rectangle391);
    obj.rectangle400:setWidth(50);
    obj.rectangle400:setAlign("left");
    obj.rectangle400:setColor("transparent");
    obj.rectangle400:setName("rectangle400");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.rectangle400);
    obj.edit129:setField("ct13");
    obj.edit129:setName("edit129");
    obj.edit129:setAlign("client");
    obj.edit129:setTransparent(true);
    obj.edit129:setFontSize(12);
    obj.edit129:setFontColor("#fff");
    obj.edit129:setHorzTextAlign("center");
    obj.edit129:setVertTextAlign("center");

    obj.rectangle401 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle401:setParent(obj.rectangle400);
    obj.rectangle401:setName("rectangle401");
    obj.rectangle401:setAlign("bottom");
    obj.rectangle401:setHeight(1);
    obj.rectangle401:setColor("#fff");
    obj.rectangle401:setMargins({left=5, right=5, bottom=3});
    obj.rectangle401:setOpacity(0.3);

    obj.rectangle402 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle402:setParent(obj.rectangle252);
    obj.rectangle402:setAlign("top");
    obj.rectangle402:setHeight(25);
    obj.rectangle402:setColor("transparent");
    obj.rectangle402:setName("rectangle402");

    obj.rectangle403 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle403:setParent(obj.rectangle402);
    obj.rectangle403:setWidth(162);
    obj.rectangle403:setAlign("left");
    obj.rectangle403:setColor("transparent");
    obj.rectangle403:setName("rectangle403");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.rectangle403);
    obj.edit130:setField("at14");
    obj.edit130:setName("edit130");
    obj.edit130:setAlign("client");
    obj.edit130:setTransparent(true);
    obj.edit130:setFontSize(12);
    obj.edit130:setFontColor("#fff");
    obj.edit130:setHorzTextAlign("center");
    obj.edit130:setVertTextAlign("center");

    obj.rectangle404 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle404:setParent(obj.rectangle403);
    obj.rectangle404:setName("rectangle404");
    obj.rectangle404:setAlign("bottom");
    obj.rectangle404:setHeight(1);
    obj.rectangle404:setColor("#fff");
    obj.rectangle404:setMargins({left=5, right=5, bottom=3});
    obj.rectangle404:setOpacity(0.3);

    obj.rectangle405 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle405:setParent(obj.rectangle402);
    obj.rectangle405:setWidth(40);
    obj.rectangle405:setAlign("left");
    obj.rectangle405:setColor("transparent");
    obj.rectangle405:setName("rectangle405");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.rectangle405);
    obj.edit131:setField("ts14");
    obj.edit131:setName("edit131");
    obj.edit131:setAlign("client");
    obj.edit131:setTransparent(true);
    obj.edit131:setFontSize(12);
    obj.edit131:setFontColor("#fff");
    obj.edit131:setHorzTextAlign("center");
    obj.edit131:setVertTextAlign("center");

    obj.rectangle406 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle406:setParent(obj.rectangle405);
    obj.rectangle406:setName("rectangle406");
    obj.rectangle406:setAlign("bottom");
    obj.rectangle406:setHeight(1);
    obj.rectangle406:setColor("#fff");
    obj.rectangle406:setMargins({left=5, right=5, bottom=3});
    obj.rectangle406:setOpacity(0.3);

    obj.rectangle407 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle407:setParent(obj.rectangle402);
    obj.rectangle407:setWidth(64);
    obj.rectangle407:setAlign("left");
    obj.rectangle407:setColor("transparent");
    obj.rectangle407:setName("rectangle407");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.rectangle407);
    obj.edit132:setField("dn14");
    obj.edit132:setName("edit132");
    obj.edit132:setAlign("client");
    obj.edit132:setTransparent(true);
    obj.edit132:setFontSize(12);
    obj.edit132:setFontColor("#fff");
    obj.edit132:setHorzTextAlign("center");
    obj.edit132:setVertTextAlign("center");

    obj.rectangle408 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle408:setParent(obj.rectangle407);
    obj.rectangle408:setName("rectangle408");
    obj.rectangle408:setAlign("bottom");
    obj.rectangle408:setHeight(1);
    obj.rectangle408:setColor("#fff");
    obj.rectangle408:setMargins({left=5, right=5, bottom=3});
    obj.rectangle408:setOpacity(0.3);

    obj.rectangle409 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle409:setParent(obj.rectangle402);
    obj.rectangle409:setWidth(54);
    obj.rectangle409:setAlign("left");
    obj.rectangle409:setColor("transparent");
    obj.rectangle409:setName("rectangle409");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.rectangle409);
    obj.edit133:setField("al14");
    obj.edit133:setName("edit133");
    obj.edit133:setAlign("client");
    obj.edit133:setTransparent(true);
    obj.edit133:setFontSize(12);
    obj.edit133:setFontColor("#fff");
    obj.edit133:setHorzTextAlign("center");
    obj.edit133:setVertTextAlign("center");

    obj.rectangle410 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle410:setParent(obj.rectangle409);
    obj.rectangle410:setName("rectangle410");
    obj.rectangle410:setAlign("bottom");
    obj.rectangle410:setHeight(1);
    obj.rectangle410:setColor("#fff");
    obj.rectangle410:setMargins({left=5, right=5, bottom=3});
    obj.rectangle410:setOpacity(0.3);

    obj.rectangle411 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle411:setParent(obj.rectangle402);
    obj.rectangle411:setWidth(50);
    obj.rectangle411:setAlign("left");
    obj.rectangle411:setColor("transparent");
    obj.rectangle411:setName("rectangle411");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.rectangle411);
    obj.edit134:setField("ct14");
    obj.edit134:setName("edit134");
    obj.edit134:setAlign("client");
    obj.edit134:setTransparent(true);
    obj.edit134:setFontSize(12);
    obj.edit134:setFontColor("#fff");
    obj.edit134:setHorzTextAlign("center");
    obj.edit134:setVertTextAlign("center");

    obj.rectangle412 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle412:setParent(obj.rectangle411);
    obj.rectangle412:setName("rectangle412");
    obj.rectangle412:setAlign("bottom");
    obj.rectangle412:setHeight(1);
    obj.rectangle412:setColor("#fff");
    obj.rectangle412:setMargins({left=5, right=5, bottom=3});
    obj.rectangle412:setOpacity(0.3);

    obj.rectangle413 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle413:setParent(obj.rectangle252);
    obj.rectangle413:setAlign("top");
    obj.rectangle413:setHeight(25);
    obj.rectangle413:setColor("transparent");
    obj.rectangle413:setName("rectangle413");

    obj.rectangle414 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle414:setParent(obj.rectangle413);
    obj.rectangle414:setWidth(162);
    obj.rectangle414:setAlign("left");
    obj.rectangle414:setColor("transparent");
    obj.rectangle414:setName("rectangle414");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.rectangle414);
    obj.edit135:setField("at15");
    obj.edit135:setName("edit135");
    obj.edit135:setAlign("client");
    obj.edit135:setTransparent(true);
    obj.edit135:setFontSize(12);
    obj.edit135:setFontColor("#fff");
    obj.edit135:setHorzTextAlign("center");
    obj.edit135:setVertTextAlign("center");

    obj.rectangle415 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle415:setParent(obj.rectangle414);
    obj.rectangle415:setName("rectangle415");
    obj.rectangle415:setAlign("bottom");
    obj.rectangle415:setHeight(1);
    obj.rectangle415:setColor("#fff");
    obj.rectangle415:setMargins({left=5, right=5, bottom=3});
    obj.rectangle415:setOpacity(0.3);

    obj.rectangle416 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle416:setParent(obj.rectangle413);
    obj.rectangle416:setWidth(40);
    obj.rectangle416:setAlign("left");
    obj.rectangle416:setColor("transparent");
    obj.rectangle416:setName("rectangle416");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.rectangle416);
    obj.edit136:setField("ts15");
    obj.edit136:setName("edit136");
    obj.edit136:setAlign("client");
    obj.edit136:setTransparent(true);
    obj.edit136:setFontSize(12);
    obj.edit136:setFontColor("#fff");
    obj.edit136:setHorzTextAlign("center");
    obj.edit136:setVertTextAlign("center");

    obj.rectangle417 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle417:setParent(obj.rectangle416);
    obj.rectangle417:setName("rectangle417");
    obj.rectangle417:setAlign("bottom");
    obj.rectangle417:setHeight(1);
    obj.rectangle417:setColor("#fff");
    obj.rectangle417:setMargins({left=5, right=5, bottom=3});
    obj.rectangle417:setOpacity(0.3);

    obj.rectangle418 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle418:setParent(obj.rectangle413);
    obj.rectangle418:setWidth(64);
    obj.rectangle418:setAlign("left");
    obj.rectangle418:setColor("transparent");
    obj.rectangle418:setName("rectangle418");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.rectangle418);
    obj.edit137:setField("dn15");
    obj.edit137:setName("edit137");
    obj.edit137:setAlign("client");
    obj.edit137:setTransparent(true);
    obj.edit137:setFontSize(12);
    obj.edit137:setFontColor("#fff");
    obj.edit137:setHorzTextAlign("center");
    obj.edit137:setVertTextAlign("center");

    obj.rectangle419 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle419:setParent(obj.rectangle418);
    obj.rectangle419:setName("rectangle419");
    obj.rectangle419:setAlign("bottom");
    obj.rectangle419:setHeight(1);
    obj.rectangle419:setColor("#fff");
    obj.rectangle419:setMargins({left=5, right=5, bottom=3});
    obj.rectangle419:setOpacity(0.3);

    obj.rectangle420 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle420:setParent(obj.rectangle413);
    obj.rectangle420:setWidth(54);
    obj.rectangle420:setAlign("left");
    obj.rectangle420:setColor("transparent");
    obj.rectangle420:setName("rectangle420");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.rectangle420);
    obj.edit138:setField("al15");
    obj.edit138:setName("edit138");
    obj.edit138:setAlign("client");
    obj.edit138:setTransparent(true);
    obj.edit138:setFontSize(12);
    obj.edit138:setFontColor("#fff");
    obj.edit138:setHorzTextAlign("center");
    obj.edit138:setVertTextAlign("center");

    obj.rectangle421 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle421:setParent(obj.rectangle420);
    obj.rectangle421:setName("rectangle421");
    obj.rectangle421:setAlign("bottom");
    obj.rectangle421:setHeight(1);
    obj.rectangle421:setColor("#fff");
    obj.rectangle421:setMargins({left=5, right=5, bottom=3});
    obj.rectangle421:setOpacity(0.3);

    obj.rectangle422 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle422:setParent(obj.rectangle413);
    obj.rectangle422:setWidth(50);
    obj.rectangle422:setAlign("left");
    obj.rectangle422:setColor("transparent");
    obj.rectangle422:setName("rectangle422");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.rectangle422);
    obj.edit139:setField("ct15");
    obj.edit139:setName("edit139");
    obj.edit139:setAlign("client");
    obj.edit139:setTransparent(true);
    obj.edit139:setFontSize(12);
    obj.edit139:setFontColor("#fff");
    obj.edit139:setHorzTextAlign("center");
    obj.edit139:setVertTextAlign("center");

    obj.rectangle423 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle423:setParent(obj.rectangle422);
    obj.rectangle423:setName("rectangle423");
    obj.rectangle423:setAlign("bottom");
    obj.rectangle423:setHeight(1);
    obj.rectangle423:setColor("#fff");
    obj.rectangle423:setMargins({left=5, right=5, bottom=3});
    obj.rectangle423:setOpacity(0.3);

    obj.rectangle424 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle424:setParent(obj.rectangle252);
    obj.rectangle424:setAlign("top");
    obj.rectangle424:setHeight(25);
    obj.rectangle424:setColor("transparent");
    obj.rectangle424:setName("rectangle424");

    obj.rectangle425 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle425:setParent(obj.rectangle424);
    obj.rectangle425:setWidth(162);
    obj.rectangle425:setAlign("left");
    obj.rectangle425:setColor("transparent");
    obj.rectangle425:setName("rectangle425");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.rectangle425);
    obj.edit140:setField("at16");
    obj.edit140:setName("edit140");
    obj.edit140:setAlign("client");
    obj.edit140:setTransparent(true);
    obj.edit140:setFontSize(12);
    obj.edit140:setFontColor("#fff");
    obj.edit140:setHorzTextAlign("center");
    obj.edit140:setVertTextAlign("center");

    obj.rectangle426 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle426:setParent(obj.rectangle425);
    obj.rectangle426:setName("rectangle426");
    obj.rectangle426:setAlign("bottom");
    obj.rectangle426:setHeight(1);
    obj.rectangle426:setColor("#fff");
    obj.rectangle426:setMargins({left=5, right=5, bottom=3});
    obj.rectangle426:setOpacity(0.3);

    obj.rectangle427 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle427:setParent(obj.rectangle424);
    obj.rectangle427:setWidth(40);
    obj.rectangle427:setAlign("left");
    obj.rectangle427:setColor("transparent");
    obj.rectangle427:setName("rectangle427");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.rectangle427);
    obj.edit141:setField("ts16");
    obj.edit141:setName("edit141");
    obj.edit141:setAlign("client");
    obj.edit141:setTransparent(true);
    obj.edit141:setFontSize(12);
    obj.edit141:setFontColor("#fff");
    obj.edit141:setHorzTextAlign("center");
    obj.edit141:setVertTextAlign("center");

    obj.rectangle428 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle428:setParent(obj.rectangle427);
    obj.rectangle428:setName("rectangle428");
    obj.rectangle428:setAlign("bottom");
    obj.rectangle428:setHeight(1);
    obj.rectangle428:setColor("#fff");
    obj.rectangle428:setMargins({left=5, right=5, bottom=3});
    obj.rectangle428:setOpacity(0.3);

    obj.rectangle429 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle429:setParent(obj.rectangle424);
    obj.rectangle429:setWidth(64);
    obj.rectangle429:setAlign("left");
    obj.rectangle429:setColor("transparent");
    obj.rectangle429:setName("rectangle429");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.rectangle429);
    obj.edit142:setField("dn16");
    obj.edit142:setName("edit142");
    obj.edit142:setAlign("client");
    obj.edit142:setTransparent(true);
    obj.edit142:setFontSize(12);
    obj.edit142:setFontColor("#fff");
    obj.edit142:setHorzTextAlign("center");
    obj.edit142:setVertTextAlign("center");

    obj.rectangle430 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle430:setParent(obj.rectangle429);
    obj.rectangle430:setName("rectangle430");
    obj.rectangle430:setAlign("bottom");
    obj.rectangle430:setHeight(1);
    obj.rectangle430:setColor("#fff");
    obj.rectangle430:setMargins({left=5, right=5, bottom=3});
    obj.rectangle430:setOpacity(0.3);

    obj.rectangle431 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle431:setParent(obj.rectangle424);
    obj.rectangle431:setWidth(54);
    obj.rectangle431:setAlign("left");
    obj.rectangle431:setColor("transparent");
    obj.rectangle431:setName("rectangle431");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.rectangle431);
    obj.edit143:setField("al16");
    obj.edit143:setName("edit143");
    obj.edit143:setAlign("client");
    obj.edit143:setTransparent(true);
    obj.edit143:setFontSize(12);
    obj.edit143:setFontColor("#fff");
    obj.edit143:setHorzTextAlign("center");
    obj.edit143:setVertTextAlign("center");

    obj.rectangle432 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle432:setParent(obj.rectangle431);
    obj.rectangle432:setName("rectangle432");
    obj.rectangle432:setAlign("bottom");
    obj.rectangle432:setHeight(1);
    obj.rectangle432:setColor("#fff");
    obj.rectangle432:setMargins({left=5, right=5, bottom=3});
    obj.rectangle432:setOpacity(0.3);

    obj.rectangle433 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle433:setParent(obj.rectangle424);
    obj.rectangle433:setWidth(50);
    obj.rectangle433:setAlign("left");
    obj.rectangle433:setColor("transparent");
    obj.rectangle433:setName("rectangle433");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.rectangle433);
    obj.edit144:setField("ct16");
    obj.edit144:setName("edit144");
    obj.edit144:setAlign("client");
    obj.edit144:setTransparent(true);
    obj.edit144:setFontSize(12);
    obj.edit144:setFontColor("#fff");
    obj.edit144:setHorzTextAlign("center");
    obj.edit144:setVertTextAlign("center");

    obj.rectangle434 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle434:setParent(obj.rectangle433);
    obj.rectangle434:setName("rectangle434");
    obj.rectangle434:setAlign("bottom");
    obj.rectangle434:setHeight(1);
    obj.rectangle434:setColor("#fff");
    obj.rectangle434:setMargins({left=5, right=5, bottom=3});
    obj.rectangle434:setOpacity(0.3);

    obj.rectangle435 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle435:setParent(obj.rectangle252);
    obj.rectangle435:setAlign("top");
    obj.rectangle435:setHeight(25);
    obj.rectangle435:setColor("transparent");
    obj.rectangle435:setName("rectangle435");

    obj.rectangle436 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle436:setParent(obj.rectangle435);
    obj.rectangle436:setWidth(162);
    obj.rectangle436:setAlign("left");
    obj.rectangle436:setColor("transparent");
    obj.rectangle436:setName("rectangle436");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.rectangle436);
    obj.edit145:setField("at17");
    obj.edit145:setName("edit145");
    obj.edit145:setAlign("client");
    obj.edit145:setTransparent(true);
    obj.edit145:setFontSize(12);
    obj.edit145:setFontColor("#fff");
    obj.edit145:setHorzTextAlign("center");
    obj.edit145:setVertTextAlign("center");

    obj.rectangle437 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle437:setParent(obj.rectangle436);
    obj.rectangle437:setName("rectangle437");
    obj.rectangle437:setAlign("bottom");
    obj.rectangle437:setHeight(1);
    obj.rectangle437:setColor("#fff");
    obj.rectangle437:setMargins({left=5, right=5, bottom=3});
    obj.rectangle437:setOpacity(0.3);

    obj.rectangle438 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle438:setParent(obj.rectangle435);
    obj.rectangle438:setWidth(40);
    obj.rectangle438:setAlign("left");
    obj.rectangle438:setColor("transparent");
    obj.rectangle438:setName("rectangle438");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.rectangle438);
    obj.edit146:setField("ts17");
    obj.edit146:setName("edit146");
    obj.edit146:setAlign("client");
    obj.edit146:setTransparent(true);
    obj.edit146:setFontSize(12);
    obj.edit146:setFontColor("#fff");
    obj.edit146:setHorzTextAlign("center");
    obj.edit146:setVertTextAlign("center");

    obj.rectangle439 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle439:setParent(obj.rectangle438);
    obj.rectangle439:setName("rectangle439");
    obj.rectangle439:setAlign("bottom");
    obj.rectangle439:setHeight(1);
    obj.rectangle439:setColor("#fff");
    obj.rectangle439:setMargins({left=5, right=5, bottom=3});
    obj.rectangle439:setOpacity(0.3);

    obj.rectangle440 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle440:setParent(obj.rectangle435);
    obj.rectangle440:setWidth(64);
    obj.rectangle440:setAlign("left");
    obj.rectangle440:setColor("transparent");
    obj.rectangle440:setName("rectangle440");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.rectangle440);
    obj.edit147:setField("dn17");
    obj.edit147:setName("edit147");
    obj.edit147:setAlign("client");
    obj.edit147:setTransparent(true);
    obj.edit147:setFontSize(12);
    obj.edit147:setFontColor("#fff");
    obj.edit147:setHorzTextAlign("center");
    obj.edit147:setVertTextAlign("center");

    obj.rectangle441 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle441:setParent(obj.rectangle440);
    obj.rectangle441:setName("rectangle441");
    obj.rectangle441:setAlign("bottom");
    obj.rectangle441:setHeight(1);
    obj.rectangle441:setColor("#fff");
    obj.rectangle441:setMargins({left=5, right=5, bottom=3});
    obj.rectangle441:setOpacity(0.3);

    obj.rectangle442 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle442:setParent(obj.rectangle435);
    obj.rectangle442:setWidth(54);
    obj.rectangle442:setAlign("left");
    obj.rectangle442:setColor("transparent");
    obj.rectangle442:setName("rectangle442");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.rectangle442);
    obj.edit148:setField("al17");
    obj.edit148:setName("edit148");
    obj.edit148:setAlign("client");
    obj.edit148:setTransparent(true);
    obj.edit148:setFontSize(12);
    obj.edit148:setFontColor("#fff");
    obj.edit148:setHorzTextAlign("center");
    obj.edit148:setVertTextAlign("center");

    obj.rectangle443 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle443:setParent(obj.rectangle442);
    obj.rectangle443:setName("rectangle443");
    obj.rectangle443:setAlign("bottom");
    obj.rectangle443:setHeight(1);
    obj.rectangle443:setColor("#fff");
    obj.rectangle443:setMargins({left=5, right=5, bottom=3});
    obj.rectangle443:setOpacity(0.3);

    obj.rectangle444 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle444:setParent(obj.rectangle435);
    obj.rectangle444:setWidth(50);
    obj.rectangle444:setAlign("left");
    obj.rectangle444:setColor("transparent");
    obj.rectangle444:setName("rectangle444");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.rectangle444);
    obj.edit149:setField("ct17");
    obj.edit149:setName("edit149");
    obj.edit149:setAlign("client");
    obj.edit149:setTransparent(true);
    obj.edit149:setFontSize(12);
    obj.edit149:setFontColor("#fff");
    obj.edit149:setHorzTextAlign("center");
    obj.edit149:setVertTextAlign("center");

    obj.rectangle445 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle445:setParent(obj.rectangle444);
    obj.rectangle445:setName("rectangle445");
    obj.rectangle445:setAlign("bottom");
    obj.rectangle445:setHeight(1);
    obj.rectangle445:setColor("#fff");
    obj.rectangle445:setMargins({left=5, right=5, bottom=3});
    obj.rectangle445:setOpacity(0.3);

    obj.rectangle446 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle446:setParent(obj.rectangle252);
    obj.rectangle446:setName("rectangle446");
    obj.rectangle446:setAlign("top");
    obj.rectangle446:setColor("#222222");
    obj.rectangle446:setHeight(185);
    obj.rectangle446:setMargins({top=5});
    obj.rectangle446:setXradius(5);
    obj.rectangle446:setYradius(5);
    obj.rectangle446:setCornerType("round");
    lfm_setPropAsString(obj.rectangle446, "corners",  "topLeft topRight");

    obj.rectangle447 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle447:setParent(obj.rectangle446);
    obj.rectangle447:setName("rectangle447");
    obj.rectangle447:setAlign("top");
    obj.rectangle447:setColor("transparent");
    obj.rectangle447:setHeight(45);

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.rectangle447);
    obj.label77:setText("Defesa");
    obj.label77:setName("label77");
    obj.label77:setAlign("client");
    obj.label77:setFontSize(30);
    obj.label77:setFontColor("#fff");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setVertTextAlign("center");
    obj.label77:setFontFamily("georgia");
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");

    obj.rectangle448 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle448:setParent(obj.rectangle446);
    obj.rectangle448:setName("rectangle448");
    obj.rectangle448:setAlign("top");
    obj.rectangle448:setColor("transparent");
    obj.rectangle448:setHeight(65);
    obj.rectangle448:setMargins({left=60, right=60});

    obj.rectangle449 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle449:setParent(obj.rectangle448);
    obj.rectangle449:setName("rectangle449");
    obj.rectangle449:setAlign("left");
    obj.rectangle449:setColor("transparent");
    obj.rectangle449:setWidth(40);
    obj.rectangle449:setMargins({top=10});

    obj.rectangle450 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle450:setParent(obj.rectangle449);
    obj.rectangle450:setName("rectangle450");
    obj.rectangle450:setAlign("top");
    obj.rectangle450:setColor("transparent");
    obj.rectangle450:setHeight(40);
    obj.rectangle450:setStrokeColor("#fff");
    obj.rectangle450:setStrokeSize(2);
    obj.rectangle450:setXradius(10);
    obj.rectangle450:setYradius(10);
    obj.rectangle450:setCornerType("bevel");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.rectangle450);
    obj.label78:setText("10");
    obj.label78:setName("label78");
    obj.label78:setAlign("client");
    obj.label78:setFontSize(20);
    obj.label78:setFontColor("#fff");
    obj.label78:setHorzTextAlign("center");
    obj.label78:setVertTextAlign("center");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.rectangle449);
    obj.label79:setText("Base");
    obj.label79:setName("label79");
    obj.label79:setAlign("top");
    obj.label79:setFontSize(12);
    obj.label79:setFontColor("#fff");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setVertTextAlign("center");

    obj.rectangle451 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle451:setParent(obj.rectangle448);
    obj.rectangle451:setName("rectangle451");
    obj.rectangle451:setAlign("left");
    obj.rectangle451:setColor("transparent");
    obj.rectangle451:setWidth(30);
    obj.rectangle451:setMargins({top=10, bottom=20});

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.rectangle451);
    obj.label80:setName("label80");
    obj.label80:setAlign("client");
    obj.label80:setFontSize(20);
    obj.label80:setFontColor("#fff");
    obj.label80:setHorzTextAlign("center");
    obj.label80:setVertTextAlign("center");
    obj.label80:setText("+");

    obj.rectangle452 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle452:setParent(obj.rectangle448);
    obj.rectangle452:setName("rectangle452");
    obj.rectangle452:setAlign("left");
    obj.rectangle452:setColor("transparent");
    obj.rectangle452:setWidth(40);
    obj.rectangle452:setMargins({top=10});

    obj.rectangle453 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle453:setParent(obj.rectangle452);
    obj.rectangle453:setName("rectangle453");
    obj.rectangle453:setAlign("top");
    obj.rectangle453:setColor("transparent");
    obj.rectangle453:setHeight(40);
    obj.rectangle453:setStrokeColor("#fff");
    obj.rectangle453:setStrokeSize(2);
    obj.rectangle453:setXradius(20);
    obj.rectangle453:setYradius(20);
    obj.rectangle453:setCornerType("round");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.rectangle453);
    obj.label81:setField("AGI");
    obj.label81:setName("label81");
    obj.label81:setAlign("client");
    obj.label81:setFontSize(20);
    obj.label81:setFontColor("#fff");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setVertTextAlign("center");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.rectangle452);
    obj.label82:setText("AGI");
    obj.label82:setName("label82");
    obj.label82:setAlign("top");
    obj.label82:setFontSize(12);
    obj.label82:setFontColor("#fff");
    obj.label82:setHorzTextAlign("center");
    obj.label82:setVertTextAlign("center");

    obj.rectangle454 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle454:setParent(obj.rectangle448);
    obj.rectangle454:setName("rectangle454");
    obj.rectangle454:setAlign("left");
    obj.rectangle454:setColor("transparent");
    obj.rectangle454:setWidth(30);
    obj.rectangle454:setMargins({top=10, bottom=20});

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.rectangle454);
    obj.label83:setName("label83");
    obj.label83:setAlign("client");
    obj.label83:setFontSize(20);
    obj.label83:setFontColor("#fff");
    obj.label83:setHorzTextAlign("center");
    obj.label83:setVertTextAlign("center");
    obj.label83:setText("+");

    obj.rectangle455 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle455:setParent(obj.rectangle448);
    obj.rectangle455:setName("rectangle455");
    obj.rectangle455:setAlign("left");
    obj.rectangle455:setColor("transparent");
    obj.rectangle455:setWidth(40);
    obj.rectangle455:setMargins({top=10});

    obj.rectangle456 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle456:setParent(obj.rectangle455);
    obj.rectangle456:setName("rectangle456");
    obj.rectangle456:setAlign("top");
    obj.rectangle456:setColor("transparent");
    obj.rectangle456:setHeight(40);
    obj.rectangle456:setStrokeColor("#fff");
    obj.rectangle456:setStrokeSize(2);
    obj.rectangle456:setXradius(20);
    obj.rectangle456:setYradius(20);
    obj.rectangle456:setCornerType("round");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.rectangle456);
    obj.edit150:setField("equipDEF");
    obj.edit150:setName("edit150");
    obj.edit150:setAlign("client");
    obj.edit150:setFontSize(20);
    obj.edit150:setFontColor("#fff");
    obj.edit150:setHorzTextAlign("center");
    obj.edit150:setVertTextAlign("center");
    obj.edit150:setTransparent(true);
    obj.edit150:setType("number");
    obj.edit150:setMin(0);
    obj.edit150:setMax(99);

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.rectangle455);
    obj.label84:setText("Equip.");
    obj.label84:setName("label84");
    obj.label84:setAlign("top");
    obj.label84:setFontSize(12);
    obj.label84:setFontColor("#fff");
    obj.label84:setHorzTextAlign("center");
    obj.label84:setVertTextAlign("center");

    obj.rectangle457 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle457:setParent(obj.rectangle448);
    obj.rectangle457:setName("rectangle457");
    obj.rectangle457:setAlign("left");
    obj.rectangle457:setColor("transparent");
    obj.rectangle457:setWidth(30);
    obj.rectangle457:setMargins({top=10, bottom=20});

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.rectangle457);
    obj.label85:setName("label85");
    obj.label85:setAlign("client");
    obj.label85:setFontSize(20);
    obj.label85:setFontColor("#fff");
    obj.label85:setHorzTextAlign("center");
    obj.label85:setVertTextAlign("center");
    obj.label85:setText("+");

    obj.rectangle458 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle458:setParent(obj.rectangle448);
    obj.rectangle458:setName("rectangle458");
    obj.rectangle458:setAlign("left");
    obj.rectangle458:setColor("transparent");
    obj.rectangle458:setWidth(40);
    obj.rectangle458:setMargins({top=10});

    obj.rectangle459 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle459:setParent(obj.rectangle458);
    obj.rectangle459:setName("rectangle459");
    obj.rectangle459:setAlign("top");
    obj.rectangle459:setColor("transparent");
    obj.rectangle459:setHeight(40);
    obj.rectangle459:setStrokeColor("#fff");
    obj.rectangle459:setStrokeSize(2);
    obj.rectangle459:setXradius(20);
    obj.rectangle459:setYradius(20);
    obj.rectangle459:setCornerType("round");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.rectangle459);
    obj.edit151:setField("outrosDEF");
    obj.edit151:setName("edit151");
    obj.edit151:setAlign("client");
    obj.edit151:setFontSize(20);
    obj.edit151:setFontColor("#fff");
    obj.edit151:setHorzTextAlign("center");
    obj.edit151:setVertTextAlign("center");
    obj.edit151:setTransparent(true);
    obj.edit151:setType("number");
    obj.edit151:setMin(0);
    obj.edit151:setMax(99);

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.rectangle458);
    obj.label86:setText("Outros");
    obj.label86:setName("label86");
    obj.label86:setAlign("top");
    obj.label86:setFontSize(12);
    obj.label86:setFontColor("#fff");
    obj.label86:setHorzTextAlign("center");
    obj.label86:setVertTextAlign("center");

    obj.rectangle460 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle460:setParent(obj.rectangle446);
    obj.rectangle460:setName("rectangle460");
    obj.rectangle460:setAlign("top");
    obj.rectangle460:setColor("transparent");
    obj.rectangle460:setHeight(65);
    obj.rectangle460:setMargins({left=150, right=150});

    obj.rectangle461 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle461:setParent(obj.rectangle460);
    obj.rectangle461:setName("rectangle461");
    obj.rectangle461:setAlign("left");
    obj.rectangle461:setColor("transparent");
    obj.rectangle461:setWidth(70);
    obj.rectangle461:setMargins({top=10});

    obj.rectangle462 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle462:setParent(obj.rectangle461);
    obj.rectangle462:setXradius(10);
    obj.rectangle462:setYradius(10);
    obj.rectangle462:setName("rectangle462");
    obj.rectangle462:setAlign("top");
    obj.rectangle462:setColor("transparent");
    obj.rectangle462:setHeight(40);
    obj.rectangle462:setStrokeColor("#fff");
    obj.rectangle462:setStrokeSize(2);
    obj.rectangle462:setCornerType("round");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.rectangle462);
    obj.label87:setField("totalDEF");
    obj.label87:setName("label87");
    obj.label87:setAlign("client");
    obj.label87:setFontSize(20);
    obj.label87:setFontColor("#fff");
    obj.label87:setHorzTextAlign("center");
    obj.label87:setVertTextAlign("center");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.rectangle461);
    obj.label88:setText("Defesa Total");
    obj.label88:setName("label88");
    obj.label88:setAlign("top");
    obj.label88:setFontSize(12);
    obj.label88:setFontColor("#fff");
    obj.label88:setHorzTextAlign("center");
    obj.label88:setVertTextAlign("center");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle446);
    obj.dataLink2:setFields({'AGI', 'equipDEF', 'outrosDEF'});
    obj.dataLink2:setName("dataLink2");

    obj.rectangle463 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle463:setParent(obj.rectangle252);
    obj.rectangle463:setName("rectangle463");
    obj.rectangle463:setAlign("bottom");
    obj.rectangle463:setHeight(25);
    obj.rectangle463:setColor("#070707");
    obj.rectangle463:setXradius(5);
    obj.rectangle463:setYradius(5);
    obj.rectangle463:setCornerType("round");
    lfm_setPropAsString(obj.rectangle463, "corners",  "bottomLeft bottomRight");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle463);
    obj.button9:setHint("Informações Vitais");
    obj.button9:setName("button9");
    obj.button9:setAlign("client");
    obj.button9:setOpacity(0);

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.rectangle463);
    obj.label89:setName("label89");
    obj.label89:setAlign("client");
    obj.label89:setFontSize(12);
    obj.label89:setFontColor("#fff");
    obj.label89:setHorzTextAlign("center");
    obj.label89:setVertTextAlign("center");
    obj.label89:setText("PV, PE e Sanidade");

    obj.infosVitais = GUI.fromHandle(_obj_newObject("popup"));
    obj.infosVitais:setParent(obj.layCombate);
    obj.infosVitais:setName("infosVitais");
    obj.infosVitais:setAlign("client");
    obj.infosVitais:setBackOpacity(0);
    obj.infosVitais:setDrawContainer(false);

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.infosVitais);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setAlign("client");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setMargins({top=35});

    obj.rectangle464 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle464:setParent(obj.flowLayout4);
    obj.rectangle464:setName("rectangle464");
    obj.rectangle464:setHeight(800);
    obj.rectangle464:setWidth(400);
    obj.rectangle464:setColor("#121212");
    obj.rectangle464:setCornerType("round");
    obj.rectangle464:setXradius(20);
    obj.rectangle464:setYradius(20);

    obj.rectangle465 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle465:setParent(obj.rectangle464);
    obj.rectangle465:setName("rectangle465");
    obj.rectangle465:setAlign("top");
    obj.rectangle465:setHeight(30);
    obj.rectangle465:setMargins({top=20, right=20, left=350});
    obj.rectangle465:setColor("#ffe000");
    obj.rectangle465:setXradius(5);
    obj.rectangle465:setYradius(5);
    obj.rectangle465:setCornerType("round");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.rectangle465);
    obj.label90:setName("label90");
    obj.label90:setAlign("client");
    obj.label90:setFontSize(20);
    obj.label90:setFontColor("#000");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setVertTextAlign("center");
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setText("<");
    obj.label90:setMargins({bottom=5});

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle465);
    obj.button10:setHint("Voltar");
    obj.button10:setName("button10");
    obj.button10:setAlign("client");
    obj.button10:setOpacity(0);

    obj.rectangle466 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle466:setParent(obj.rectangle464);
    obj.rectangle466:setName("rectangle466");
    obj.rectangle466:setAlign("top");
    obj.rectangle466:setHeight(660);
    obj.rectangle466:setMargins({top=20, right=20, left=20});
    obj.rectangle466:setColor("transparent");

    obj.rectangle467 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle467:setParent(obj.rectangle466);
    obj.rectangle467:setName("rectangle467");
    obj.rectangle467:setAlign("top");
    obj.rectangle467:setHeight(200);
    obj.rectangle467:setColor("transparent");

    obj.rectangle468 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle468:setParent(obj.rectangle467);
    obj.rectangle468:setName("rectangle468");
    obj.rectangle468:setAlign("top");
    obj.rectangle468:setHeight(50);
    obj.rectangle468:setColor("#222");
    obj.rectangle468:setMargins({top=10, bottom=10, left=20, right=20});
    obj.rectangle468:setXradius(5);
    obj.rectangle468:setYradius(5);
    obj.rectangle468:setCornerType("round");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.rectangle468);
    obj.label91:setText("Pontos de vida");
    obj.label91:setName("label91");
    obj.label91:setAlign("client");
    obj.label91:setFontSize(24);
    obj.label91:setFontColor("#fff");
    obj.label91:setHorzTextAlign("center");
    obj.label91:setVertTextAlign("center");
    obj.label91:setFontFamily("georgia");

    obj.rectangle469 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle469:setParent(obj.rectangle467);
    obj.rectangle469:setName("rectangle469");
    obj.rectangle469:setAlign("top");
    obj.rectangle469:setHeight(70);
    obj.rectangle469:setColor("transparent");

    obj.rectangle470 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle470:setParent(obj.rectangle469);
    obj.rectangle470:setName("rectangle470");
    obj.rectangle470:setAlign("left");
    obj.rectangle470:setWidth(150);
    obj.rectangle470:setColor("#222");
    obj.rectangle470:setMargins({top=5, bottom=15, left=20});
    obj.rectangle470:setXradius(5);
    obj.rectangle470:setYradius(5);
    obj.rectangle470:setCornerType("round");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.rectangle470);
    obj.edit152:setField("pvAtual");
    obj.edit152:setName("edit152");
    obj.edit152:setAlign("client");
    obj.edit152:setFontSize(20);
    obj.edit152:setFontColor("#fff");
    obj.edit152:setHorzTextAlign("center");
    obj.edit152:setVertTextAlign("center");
    obj.edit152:setTransparent(true);

    obj.rectangle471 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle471:setParent(obj.rectangle469);
    obj.rectangle471:setName("rectangle471");
    obj.rectangle471:setAlign("left");
    obj.rectangle471:setWidth(150);
    obj.rectangle471:setColor("#222");
    obj.rectangle471:setMargins({top=5, bottom=15, left=20});
    obj.rectangle471:setXradius(5);
    obj.rectangle471:setYradius(5);
    obj.rectangle471:setCornerType("round");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.rectangle471);
    obj.edit153:setField("pvMax");
    obj.edit153:setName("edit153");
    obj.edit153:setAlign("client");
    obj.edit153:setFontSize(20);
    obj.edit153:setFontColor("#fff");
    obj.edit153:setHorzTextAlign("center");
    obj.edit153:setVertTextAlign("center");
    obj.edit153:setTransparent(true);

    obj.progressBar1 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar1:setParent(obj.rectangle467);
    obj.progressBar1:setColor("red");
    obj.progressBar1:setField("pvAtual");
    obj.progressBar1:setFieldMax("pvMax");
    obj.progressBar1:setName("progressBar1");
    obj.progressBar1:setAlign("top");
    obj.progressBar1:setMin(0);
    obj.progressBar1:setMouseGlow(true);
    obj.progressBar1:setHeight(60);
    obj.progressBar1:setMargins({right=20, left=20});

    obj.rectangle472 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle472:setParent(obj.rectangle466);
    obj.rectangle472:setMargins({top=30});
    obj.rectangle472:setName("rectangle472");
    obj.rectangle472:setAlign("top");
    obj.rectangle472:setHeight(200);
    obj.rectangle472:setColor("transparent");

    obj.rectangle473 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle473:setParent(obj.rectangle472);
    obj.rectangle473:setName("rectangle473");
    obj.rectangle473:setAlign("top");
    obj.rectangle473:setHeight(50);
    obj.rectangle473:setColor("#222");
    obj.rectangle473:setMargins({top=10, bottom=10, left=20, right=20});
    obj.rectangle473:setXradius(5);
    obj.rectangle473:setYradius(5);
    obj.rectangle473:setCornerType("round");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.rectangle473);
    obj.label92:setText("Sanidade");
    obj.label92:setName("label92");
    obj.label92:setAlign("client");
    obj.label92:setFontSize(24);
    obj.label92:setFontColor("#fff");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setVertTextAlign("center");
    obj.label92:setFontFamily("georgia");

    obj.rectangle474 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle474:setParent(obj.rectangle472);
    obj.rectangle474:setName("rectangle474");
    obj.rectangle474:setAlign("top");
    obj.rectangle474:setHeight(70);
    obj.rectangle474:setColor("transparent");

    obj.rectangle475 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle475:setParent(obj.rectangle474);
    obj.rectangle475:setName("rectangle475");
    obj.rectangle475:setAlign("left");
    obj.rectangle475:setWidth(150);
    obj.rectangle475:setColor("#222");
    obj.rectangle475:setMargins({top=5, bottom=15, left=20});
    obj.rectangle475:setXradius(5);
    obj.rectangle475:setYradius(5);
    obj.rectangle475:setCornerType("round");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.rectangle475);
    obj.edit154:setField("sanidAtual");
    obj.edit154:setName("edit154");
    obj.edit154:setAlign("client");
    obj.edit154:setFontSize(20);
    obj.edit154:setFontColor("#fff");
    obj.edit154:setHorzTextAlign("center");
    obj.edit154:setVertTextAlign("center");
    obj.edit154:setTransparent(true);

    obj.rectangle476 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle476:setParent(obj.rectangle474);
    obj.rectangle476:setName("rectangle476");
    obj.rectangle476:setAlign("left");
    obj.rectangle476:setWidth(150);
    obj.rectangle476:setColor("#222");
    obj.rectangle476:setMargins({top=5, bottom=15, left=20});
    obj.rectangle476:setXradius(5);
    obj.rectangle476:setYradius(5);
    obj.rectangle476:setCornerType("round");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.rectangle476);
    obj.edit155:setField("sanidMax");
    obj.edit155:setName("edit155");
    obj.edit155:setAlign("client");
    obj.edit155:setFontSize(20);
    obj.edit155:setFontColor("#fff");
    obj.edit155:setHorzTextAlign("center");
    obj.edit155:setVertTextAlign("center");
    obj.edit155:setTransparent(true);

    obj.progressBar2 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar2:setParent(obj.rectangle472);
    obj.progressBar2:setColor("#2387EB");
    obj.progressBar2:setField("sanidAtual");
    obj.progressBar2:setFieldMax("sanidMax");
    obj.progressBar2:setName("progressBar2");
    obj.progressBar2:setAlign("top");
    obj.progressBar2:setMin(0);
    obj.progressBar2:setMouseGlow(true);
    obj.progressBar2:setHeight(60);
    obj.progressBar2:setMargins({right=20, left=20});

    obj.rectangle477 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle477:setParent(obj.rectangle466);
    obj.rectangle477:setMargins({top=30});
    obj.rectangle477:setName("rectangle477");
    obj.rectangle477:setAlign("top");
    obj.rectangle477:setHeight(200);
    obj.rectangle477:setColor("transparent");

    obj.rectangle478 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle478:setParent(obj.rectangle477);
    obj.rectangle478:setName("rectangle478");
    obj.rectangle478:setAlign("top");
    obj.rectangle478:setHeight(50);
    obj.rectangle478:setColor("#222");
    obj.rectangle478:setMargins({top=10, bottom=10, left=20, right=20});
    obj.rectangle478:setXradius(5);
    obj.rectangle478:setYradius(5);
    obj.rectangle478:setCornerType("round");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.rectangle478);
    obj.label93:setText("Pontos de esforço");
    obj.label93:setName("label93");
    obj.label93:setAlign("client");
    obj.label93:setFontSize(24);
    obj.label93:setFontColor("#fff");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setVertTextAlign("center");
    obj.label93:setFontFamily("georgia");

    obj.rectangle479 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle479:setParent(obj.rectangle477);
    obj.rectangle479:setName("rectangle479");
    obj.rectangle479:setAlign("top");
    obj.rectangle479:setHeight(70);
    obj.rectangle479:setColor("transparent");

    obj.rectangle480 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle480:setParent(obj.rectangle479);
    obj.rectangle480:setName("rectangle480");
    obj.rectangle480:setAlign("left");
    obj.rectangle480:setWidth(150);
    obj.rectangle480:setColor("#222");
    obj.rectangle480:setMargins({top=5, bottom=15, left=20});
    obj.rectangle480:setXradius(5);
    obj.rectangle480:setYradius(5);
    obj.rectangle480:setCornerType("round");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.rectangle480);
    obj.edit156:setField("peAtual");
    obj.edit156:setName("edit156");
    obj.edit156:setAlign("client");
    obj.edit156:setFontSize(20);
    obj.edit156:setFontColor("#fff");
    obj.edit156:setHorzTextAlign("center");
    obj.edit156:setVertTextAlign("center");
    obj.edit156:setTransparent(true);

    obj.rectangle481 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle481:setParent(obj.rectangle479);
    obj.rectangle481:setName("rectangle481");
    obj.rectangle481:setAlign("left");
    obj.rectangle481:setWidth(150);
    obj.rectangle481:setColor("#222");
    obj.rectangle481:setMargins({top=5, bottom=15, left=20});
    obj.rectangle481:setXradius(5);
    obj.rectangle481:setYradius(5);
    obj.rectangle481:setCornerType("round");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.rectangle481);
    obj.edit157:setField("peMax");
    obj.edit157:setName("edit157");
    obj.edit157:setAlign("client");
    obj.edit157:setFontSize(20);
    obj.edit157:setFontColor("#fff");
    obj.edit157:setHorzTextAlign("center");
    obj.edit157:setVertTextAlign("center");
    obj.edit157:setTransparent(true);

    obj.progressBar3 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar3:setParent(obj.rectangle477);
    obj.progressBar3:setColor("#8D65EB");
    obj.progressBar3:setField("peAtual");
    obj.progressBar3:setFieldMax("peMax");
    obj.progressBar3:setName("progressBar3");
    obj.progressBar3:setAlign("top");
    obj.progressBar3:setMin(0);
    obj.progressBar3:setMouseGlow(true);
    obj.progressBar3:setHeight(60);
    obj.progressBar3:setMargins({right=20, left=20});

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.rectangle464);
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setAlign("bottom");
    obj.flowLayout5:setMargins({bottom=20});
    obj.flowLayout5:setHorzAlign("center");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setOrientation("horizontal");

    obj.rectangle482 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle482:setParent(obj.flowLayout5);
    obj.rectangle482:setName("rectangle482");
    obj.rectangle482:setColor("#ffe000");
    obj.rectangle482:setHeight(30);
    obj.rectangle482:setWidth(30);
    obj.rectangle482:setXradius(15);
    obj.rectangle482:setYradius(15);
    obj.rectangle482:setCornerType("round");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.rectangle482);
    obj.label94:setText("A");
    obj.label94:setName("label94");
    obj.label94:setFontSize(18);
    obj.label94:setFontColor("#121212");
    obj.label94:setHorzTextAlign("center");
    obj.label94:setVertTextAlign("center");
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setAlign("client");
    obj.label94:setFontFamily("georgia");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle482);
    obj.button11:setHint("Agilidade");
    obj.button11:setName("button11");
    obj.button11:setAlign("client");
    obj.button11:setOpacity(0);

    obj.rectangle483 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle483:setParent(obj.flowLayout5);
    obj.rectangle483:setMargins({left=15});
    obj.rectangle483:setName("rectangle483");
    obj.rectangle483:setColor("#ffe000");
    obj.rectangle483:setHeight(30);
    obj.rectangle483:setWidth(30);
    obj.rectangle483:setXradius(15);
    obj.rectangle483:setYradius(15);
    obj.rectangle483:setCornerType("round");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.rectangle483);
    obj.label95:setText("F");
    obj.label95:setName("label95");
    obj.label95:setFontSize(18);
    obj.label95:setFontColor("#121212");
    obj.label95:setHorzTextAlign("center");
    obj.label95:setVertTextAlign("center");
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setAlign("client");
    obj.label95:setFontFamily("georgia");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle483);
    obj.button12:setHint("Força");
    obj.button12:setName("button12");
    obj.button12:setAlign("client");
    obj.button12:setOpacity(0);

    obj.rectangle484 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle484:setParent(obj.flowLayout5);
    obj.rectangle484:setMargins({left=15});
    obj.rectangle484:setName("rectangle484");
    obj.rectangle484:setColor("#ffe000");
    obj.rectangle484:setHeight(30);
    obj.rectangle484:setWidth(30);
    obj.rectangle484:setXradius(15);
    obj.rectangle484:setYradius(15);
    obj.rectangle484:setCornerType("round");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.rectangle484);
    obj.label96:setText("I");
    obj.label96:setName("label96");
    obj.label96:setFontSize(18);
    obj.label96:setFontColor("#121212");
    obj.label96:setHorzTextAlign("center");
    obj.label96:setVertTextAlign("center");
    lfm_setPropAsString(obj.label96, "fontStyle",  "bold");
    obj.label96:setAlign("client");
    obj.label96:setFontFamily("georgia");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle484);
    obj.button13:setHint("Intelecto");
    obj.button13:setName("button13");
    obj.button13:setAlign("client");
    obj.button13:setOpacity(0);

    obj.rectangle485 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle485:setParent(obj.flowLayout5);
    obj.rectangle485:setMargins({left=15});
    obj.rectangle485:setName("rectangle485");
    obj.rectangle485:setColor("#ffe000");
    obj.rectangle485:setHeight(30);
    obj.rectangle485:setWidth(30);
    obj.rectangle485:setXradius(15);
    obj.rectangle485:setYradius(15);
    obj.rectangle485:setCornerType("round");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.rectangle485);
    obj.label97:setText("P");
    obj.label97:setName("label97");
    obj.label97:setFontSize(18);
    obj.label97:setFontColor("#121212");
    obj.label97:setHorzTextAlign("center");
    obj.label97:setVertTextAlign("center");
    lfm_setPropAsString(obj.label97, "fontStyle",  "bold");
    obj.label97:setAlign("client");
    obj.label97:setFontFamily("georgia");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle485);
    obj.button14:setHint("Presença");
    obj.button14:setName("button14");
    obj.button14:setAlign("client");
    obj.button14:setOpacity(0);

    obj.rectangle486 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle486:setParent(obj.flowLayout5);
    obj.rectangle486:setMargins({left=15});
    obj.rectangle486:setName("rectangle486");
    obj.rectangle486:setColor("#ffe000");
    obj.rectangle486:setHeight(30);
    obj.rectangle486:setWidth(30);
    obj.rectangle486:setXradius(15);
    obj.rectangle486:setYradius(15);
    obj.rectangle486:setCornerType("round");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.rectangle486);
    obj.label98:setText("V");
    obj.label98:setName("label98");
    obj.label98:setFontSize(18);
    obj.label98:setFontColor("#121212");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setVertTextAlign("center");
    lfm_setPropAsString(obj.label98, "fontStyle",  "bold");
    obj.label98:setAlign("client");
    obj.label98:setFontFamily("georgia");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle486);
    obj.button15:setHint("Vigor");
    obj.button15:setName("button15");
    obj.button15:setAlign("client");
    obj.button15:setOpacity(0);

    obj.layRituais = GUI.fromHandle(_obj_newObject("layout"));
    obj.layRituais:setParent(obj.rectangle3);
    obj.layRituais:setName("layRituais");
    obj.layRituais:setVisible(false);
    obj.layRituais:setAlign("client");

    obj.layHabil = GUI.fromHandle(_obj_newObject("layout"));
    obj.layHabil:setParent(obj.rectangle3);
    obj.layHabil:setName("layHabil");
    obj.layHabil:setAlign("client");

    obj.layInvent = GUI.fromHandle(_obj_newObject("layout"));
    obj.layInvent:setParent(obj.rectangle3);
    obj.layInvent:setName("layInvent");
    obj.layInvent:setAlign("client");

    obj.layAnota = GUI.fromHandle(_obj_newObject("layout"));
    obj.layAnota:setParent(obj.rectangle3);
    obj.layAnota:setName("layAnota");
    obj.layAnota:setVisible(false);
    obj.layAnota:setAlign("client");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.layAnota);
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setAlign("top");
    obj.flowLayout6:setHorzAlign("center");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setOrientation("vertical");
    obj.flowLayout6:setWidth(400);
    obj.flowLayout6:setMaxColumns(1);

    obj.rectangle487 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle487:setParent(obj.flowLayout6);
    obj.rectangle487:setName("rectangle487");
    obj.rectangle487:setHeight(680);
    obj.rectangle487:setWidth(370);
    obj.rectangle487:setColor("transparent");

    obj.rectangle488 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle488:setParent(obj.rectangle487);
    obj.rectangle488:setName("rectangle488");
    obj.rectangle488:setAlign("client");
    obj.rectangle488:setColor("#494949");
    obj.rectangle488:setXradius(4);
    obj.rectangle488:setYradius(4);
    obj.rectangle488:setCornerType("round");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle487);
    obj.richEdit1:setName("richEdit1");
    obj.richEdit1:setAlign("client");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "transparent");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("txt");

    obj.layBook = GUI.fromHandle(_obj_newObject("layout"));
    obj.layBook:setParent(obj.rectangle3);
    obj.layBook:setName("layBook");
    obj.layBook:setAlign("client");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.rectangle2);
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setAlign("bottom");
    obj.flowLayout7:setMargins({bottom=20});
    obj.flowLayout7:setHorzAlign("center");
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setOrientation("horizontal");

    obj.rectangle489 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle489:setParent(obj.flowLayout7);
    obj.rectangle489:setName("rectangle489");
    obj.rectangle489:setColor("#ffe000");
    obj.rectangle489:setHeight(30);
    obj.rectangle489:setWidth(30);
    obj.rectangle489:setXradius(15);
    obj.rectangle489:setYradius(15);
    obj.rectangle489:setCornerType("round");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.rectangle489);
    obj.label99:setText("A");
    obj.label99:setName("label99");
    obj.label99:setFontSize(18);
    obj.label99:setFontColor("#121212");
    obj.label99:setHorzTextAlign("center");
    obj.label99:setVertTextAlign("center");
    lfm_setPropAsString(obj.label99, "fontStyle",  "bold");
    obj.label99:setAlign("client");
    obj.label99:setFontFamily("georgia");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle489);
    obj.button16:setHint("Agilidade");
    obj.button16:setName("button16");
    obj.button16:setAlign("client");
    obj.button16:setOpacity(0);

    obj.rectangle490 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle490:setParent(obj.flowLayout7);
    obj.rectangle490:setMargins({left=15});
    obj.rectangle490:setName("rectangle490");
    obj.rectangle490:setColor("#ffe000");
    obj.rectangle490:setHeight(30);
    obj.rectangle490:setWidth(30);
    obj.rectangle490:setXradius(15);
    obj.rectangle490:setYradius(15);
    obj.rectangle490:setCornerType("round");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.rectangle490);
    obj.label100:setText("F");
    obj.label100:setName("label100");
    obj.label100:setFontSize(18);
    obj.label100:setFontColor("#121212");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setVertTextAlign("center");
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setAlign("client");
    obj.label100:setFontFamily("georgia");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle490);
    obj.button17:setHint("Força");
    obj.button17:setName("button17");
    obj.button17:setAlign("client");
    obj.button17:setOpacity(0);

    obj.rectangle491 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle491:setParent(obj.flowLayout7);
    obj.rectangle491:setMargins({left=15});
    obj.rectangle491:setName("rectangle491");
    obj.rectangle491:setColor("#ffe000");
    obj.rectangle491:setHeight(30);
    obj.rectangle491:setWidth(30);
    obj.rectangle491:setXradius(15);
    obj.rectangle491:setYradius(15);
    obj.rectangle491:setCornerType("round");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.rectangle491);
    obj.label101:setText("I");
    obj.label101:setName("label101");
    obj.label101:setFontSize(18);
    obj.label101:setFontColor("#121212");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setVertTextAlign("center");
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setAlign("client");
    obj.label101:setFontFamily("georgia");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle491);
    obj.button18:setHint("Intelecto");
    obj.button18:setName("button18");
    obj.button18:setAlign("client");
    obj.button18:setOpacity(0);

    obj.rectangle492 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle492:setParent(obj.flowLayout7);
    obj.rectangle492:setMargins({left=15});
    obj.rectangle492:setName("rectangle492");
    obj.rectangle492:setColor("#ffe000");
    obj.rectangle492:setHeight(30);
    obj.rectangle492:setWidth(30);
    obj.rectangle492:setXradius(15);
    obj.rectangle492:setYradius(15);
    obj.rectangle492:setCornerType("round");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.rectangle492);
    obj.label102:setText("P");
    obj.label102:setName("label102");
    obj.label102:setFontSize(18);
    obj.label102:setFontColor("#121212");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setVertTextAlign("center");
    lfm_setPropAsString(obj.label102, "fontStyle",  "bold");
    obj.label102:setAlign("client");
    obj.label102:setFontFamily("georgia");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle492);
    obj.button19:setHint("Presença");
    obj.button19:setName("button19");
    obj.button19:setAlign("client");
    obj.button19:setOpacity(0);

    obj.rectangle493 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle493:setParent(obj.flowLayout7);
    obj.rectangle493:setMargins({left=15});
    obj.rectangle493:setName("rectangle493");
    obj.rectangle493:setColor("#ffe000");
    obj.rectangle493:setHeight(30);
    obj.rectangle493:setWidth(30);
    obj.rectangle493:setXradius(15);
    obj.rectangle493:setYradius(15);
    obj.rectangle493:setCornerType("round");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.rectangle493);
    obj.label103:setText("V");
    obj.label103:setName("label103");
    obj.label103:setFontSize(18);
    obj.label103:setFontColor("#121212");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setVertTextAlign("center");
    lfm_setPropAsString(obj.label103, "fontStyle",  "bold");
    obj.label103:setAlign("client");
    obj.label103:setFontFamily("georgia");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle493);
    obj.button20:setHint("Vigor");
    obj.button20:setName("button20");
    obj.button20:setAlign("client");
    obj.button20:setOpacity(0);

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            TrocarAba('F');
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            TrocarAba('P');
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            TrocarAba('A');
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            TrocarAba('R');
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            TrocarAba('H');
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            TrocarAba('I');
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            TrocarAba('N');
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            TrocarAba('B');
        end, obj);

    obj._e_event8 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            escolherClasse = sheet.classe;
            									
            									if(escolherClasse == '01') then
            										self.sem_trilha.visible = true;
            										self.combatente_trilha.visible = false;
            										self.especialista_trilha.visible = false;
            										self.ocultista_trilha.visible = false;
            									elseif(escolherClasse == '02') then
            										self.sem_trilha.visible = true;
            										self.combatente_trilha.visible = false;
            										self.especialista_trilha.visible = false;
            										self.ocultista_trilha.visible = false;
            									elseif(escolherClasse == '03') then
            										self.sem_trilha.visible = false;
            										self.combatente_trilha.visible = true;
            										self.especialista_trilha.visible = false;
            										self.ocultista_trilha.visible = false;
            									elseif(escolherClasse == '04') then
            										self.sem_trilha.visible = false;
            										self.combatente_trilha.visible = false;
            										self.especialista_trilha.visible = true;
            										self.ocultista_trilha.visible = false;
            									elseif(escolherClasse == '05') then
            										self.sem_trilha.visible = false;
            										self.combatente_trilha.visible = false;
            										self.especialista_trilha.visible = false;
            										self.ocultista_trilha.visible = true;
            									end;
        end, obj);

    obj._e_event9 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalDEF = (tonumber(sheet.AGI) or 0) +
            														(tonumber(sheet.equipDEF) or 0) +
            														(tonumber(sheet.outrosDEF) or 0) + 10;
        end, obj);

    obj._e_event10 = obj.button9:addEventListener("onClick",
        function (_)
            self.infosVitais:show('top', self.infosVitaisB);
        end, obj);

    obj._e_event11 = obj.button10:addEventListener("onClick",
        function (_)
            self.infosVitais:close('top', self.infosVitaisB);
        end, obj);

    obj._e_event12 = obj.button11:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.AGI .. ("d20")); 
                                                                    
                                                                    if sheet.AGI == 0 then
                                                                    
                                                                        rolagem = Firecast.interpretarRolagem("2d20");
                                                                        
                                                                    end;
                                                                    
                                                                    local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                                                    mesaDoPersonagem.chat:rolarDados(rolagem, "Agilidade");
        end, obj);

    obj._e_event13 = obj.button12:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.FOR .. ("d20")); 
                                                                    
                                                                    if sheet.FOR == 0 then
                                                                    
                                                                        rolagem = Firecast.interpretarRolagem("2d20");
                                                                        
                                                                    end;
                                                                    
                                                                    local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                                                    mesaDoPersonagem.chat:rolarDados(rolagem, "Força");
        end, obj);

    obj._e_event14 = obj.button13:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.INT .. ("d20")); 
                                                                    
                                                                    if sheet.INT == 0 then
                                                                    
                                                                        rolagem = Firecast.interpretarRolagem("2d20");
                                                                        
                                                                    end;
                                                                    
                                                                    local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                                                    mesaDoPersonagem.chat:rolarDados(rolagem, "Intelecto");
        end, obj);

    obj._e_event15 = obj.button14:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.PRE .. ("d20")); 
                                                                    
                                                                    if sheet.PRE == 0 then
                                                                    
                                                                        rolagem = Firecast.interpretarRolagem("2d20");
                                                                        
                                                                    end;
                                                                    
                                                                    local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                                                    mesaDoPersonagem.chat:rolarDados(rolagem, "Presença");
        end, obj);

    obj._e_event16 = obj.button15:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.VIG .. ("d20")); 
                                                                    
                                                                    if sheet.VIG == 0 then
                                                                    
                                                                        rolagem = Firecast.interpretarRolagem("2d20");
                                                                        
                                                                    end;
                                                                    
                                                                    local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                                                    mesaDoPersonagem.chat:rolarDados(rolagem, "Vigor");
        end, obj);

    obj._e_event17 = obj.button16:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.AGI .. ("d20")); 
                                            
                                            if sheet.AGI == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Agilidade");
        end, obj);

    obj._e_event18 = obj.button17:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.FOR .. ("d20")); 
                                            
                                            if sheet.FOR == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Força");
        end, obj);

    obj._e_event19 = obj.button18:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.INT .. ("d20")); 
                                            
                                            if sheet.INT == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Intelecto");
        end, obj);

    obj._e_event20 = obj.button19:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.PRE .. ("d20")); 
                                            
                                            if sheet.PRE == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Presença");
        end, obj);

    obj._e_event21 = obj.button20:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.VIG .. ("d20")); 
                                            
                                            if sheet.VIG == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Vigor");
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.rectangle193 ~= nil then self.rectangle193:destroy(); self.rectangle193 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.comboBox14 ~= nil then self.comboBox14:destroy(); self.comboBox14 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.rectangle491 ~= nil then self.rectangle491:destroy(); self.rectangle491 = nil; end;
        if self.rectangle481 ~= nil then self.rectangle481:destroy(); self.rectangle481 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.rectangle345 ~= nil then self.rectangle345:destroy(); self.rectangle345 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.rectangle278 ~= nil then self.rectangle278:destroy(); self.rectangle278 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle396 ~= nil then self.rectangle396:destroy(); self.rectangle396 = nil; end;
        if self.rectangle186 ~= nil then self.rectangle186:destroy(); self.rectangle186 = nil; end;
        if self.rectangle121 ~= nil then self.rectangle121:destroy(); self.rectangle121 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.rectangle200 ~= nil then self.rectangle200:destroy(); self.rectangle200 = nil; end;
        if self.rectangle374 ~= nil then self.rectangle374:destroy(); self.rectangle374 = nil; end;
        if self.rectangle156 ~= nil then self.rectangle156:destroy(); self.rectangle156 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.rectangle436 ~= nil then self.rectangle436:destroy(); self.rectangle436 = nil; end;
        if self.rectangle440 ~= nil then self.rectangle440:destroy(); self.rectangle440 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.rectangle324 ~= nil then self.rectangle324:destroy(); self.rectangle324 = nil; end;
        if self.rectangle336 ~= nil then self.rectangle336:destroy(); self.rectangle336 = nil; end;
        if self.rectangle106 ~= nil then self.rectangle106:destroy(); self.rectangle106 = nil; end;
        if self.rectangle110 ~= nil then self.rectangle110:destroy(); self.rectangle110 = nil; end;
        if self.rectangle188 ~= nil then self.rectangle188:destroy(); self.rectangle188 = nil; end;
        if self.rectangle227 ~= nil then self.rectangle227:destroy(); self.rectangle227 = nil; end;
        if self.rectangle257 ~= nil then self.rectangle257:destroy(); self.rectangle257 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.comboBox31 ~= nil then self.comboBox31:destroy(); self.comboBox31 = nil; end;
        if self.comboBox21 ~= nil then self.comboBox21:destroy(); self.comboBox21 = nil; end;
        if self.rectangle413 ~= nil then self.rectangle413:destroy(); self.rectangle413 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle338 ~= nil then self.rectangle338:destroy(); self.rectangle338 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle455 ~= nil then self.rectangle455:destroy(); self.rectangle455 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.rectangle469 ~= nil then self.rectangle469:destroy(); self.rectangle469 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.rectangle381 ~= nil then self.rectangle381:destroy(); self.rectangle381 = nil; end;
        if self.rectangle295 ~= nil then self.rectangle295:destroy(); self.rectangle295 = nil; end;
        if self.rectangle285 ~= nil then self.rectangle285:destroy(); self.rectangle285 = nil; end;
        if self.sem_trilha ~= nil then self.sem_trilha:destroy(); self.sem_trilha = nil; end;
        if self.layInvent ~= nil then self.layInvent:destroy(); self.layInvent = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.rectangle301 ~= nil then self.rectangle301:destroy(); self.rectangle301 = nil; end;
        if self.rectangle311 ~= nil then self.rectangle311:destroy(); self.rectangle311 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layCombate ~= nil then self.layCombate:destroy(); self.layCombate = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.rectangle472 ~= nil then self.rectangle472:destroy(); self.rectangle472 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle401 ~= nil then self.rectangle401:destroy(); self.rectangle401 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rectangle213 ~= nil then self.rectangle213:destroy(); self.rectangle213 = nil; end;
        if self.rectangle141 ~= nil then self.rectangle141:destroy(); self.rectangle141 = nil; end;
        if self.rectangle260 ~= nil then self.rectangle260:destroy(); self.rectangle260 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.rectangle478 ~= nil then self.rectangle478:destroy(); self.rectangle478 = nil; end;
        if self.rectangle219 ~= nil then self.rectangle219:destroy(); self.rectangle219 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.rectangle168 ~= nil then self.rectangle168:destroy(); self.rectangle168 = nil; end;
        if self.rectangle190 ~= nil then self.rectangle190:destroy(); self.rectangle190 = nil; end;
        if self.rectangle249 ~= nil then self.rectangle249:destroy(); self.rectangle249 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.rectangle424 ~= nil then self.rectangle424:destroy(); self.rectangle424 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.rectangle340 ~= nil then self.rectangle340:destroy(); self.rectangle340 = nil; end;
        if self.rectangle166 ~= nil then self.rectangle166:destroy(); self.rectangle166 = nil; end;
        if self.rectangle174 ~= nil then self.rectangle174:destroy(); self.rectangle174 = nil; end;
        if self.rectangle247 ~= nil then self.rectangle247:destroy(); self.rectangle247 = nil; end;
        if self.rectangle277 ~= nil then self.rectangle277:destroy(); self.rectangle277 = nil; end;
        if self.rectangle185 ~= nil then self.rectangle185:destroy(); self.rectangle185 = nil; end;
        if self.rectangle124 ~= nil then self.rectangle124:destroy(); self.rectangle124 = nil; end;
        if self.rectangle205 ~= nil then self.rectangle205:destroy(); self.rectangle205 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.rectangle488 ~= nil then self.rectangle488:destroy(); self.rectangle488 = nil; end;
        if self.rectangle371 ~= nil then self.rectangle371:destroy(); self.rectangle371 = nil; end;
        if self.rectangle153 ~= nil then self.rectangle153:destroy(); self.rectangle153 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.rectangle445 ~= nil then self.rectangle445:destroy(); self.rectangle445 = nil; end;
        if self.rectangle431 ~= nil then self.rectangle431:destroy(); self.rectangle431 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.rectangle391 ~= nil then self.rectangle391:destroy(); self.rectangle391 = nil; end;
        if self.rectangle105 ~= nil then self.rectangle105:destroy(); self.rectangle105 = nil; end;
        if self.rectangle115 ~= nil then self.rectangle115:destroy(); self.rectangle115 = nil; end;
        if self.rectangle224 ~= nil then self.rectangle224:destroy(); self.rectangle224 = nil; end;
        if self.rectangle252 ~= nil then self.rectangle252:destroy(); self.rectangle252 = nil; end;
        if self.comboBox22 ~= nil then self.comboBox22:destroy(); self.comboBox22 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.rectangle258 ~= nil then self.rectangle258:destroy(); self.rectangle258 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.rectangle384 ~= nil then self.rectangle384:destroy(); self.rectangle384 = nil; end;
        if self.comboBox28 ~= nil then self.comboBox28:destroy(); self.comboBox28 = nil; end;
        if self.rectangle298 ~= nil then self.rectangle298:destroy(); self.rectangle298 = nil; end;
        if self.rectangle286 ~= nil then self.rectangle286:destroy(); self.rectangle286 = nil; end;
        if self.rectangle418 ~= nil then self.rectangle418:destroy(); self.rectangle418 = nil; end;
        if self.rectangle354 ~= nil then self.rectangle354:destroy(); self.rectangle354 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.infosVitais ~= nil then self.infosVitais:destroy(); self.infosVitais = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.rectangle452 ~= nil then self.rectangle452:destroy(); self.rectangle452 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.rectangle460 ~= nil then self.rectangle460:destroy(); self.rectangle460 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.rectangle304 ~= nil then self.rectangle304:destroy(); self.rectangle304 = nil; end;
        if self.rectangle312 ~= nil then self.rectangle312:destroy(); self.rectangle312 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.rectangle130 ~= nil then self.rectangle130:destroy(); self.rectangle130 = nil; end;
        if self.rectangle233 ~= nil then self.rectangle233:destroy(); self.rectangle233 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.rectangle318 ~= nil then self.rectangle318:destroy(); self.rectangle318 = nil; end;
        if self.rectangle475 ~= nil then self.rectangle475:destroy(); self.rectangle475 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.rectangle216 ~= nil then self.rectangle216:destroy(); self.rectangle216 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.rectangle364 ~= nil then self.rectangle364:destroy(); self.rectangle364 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle146 ~= nil then self.rectangle146:destroy(); self.rectangle146 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.rectangle267 ~= nil then self.rectangle267:destroy(); self.rectangle267 = nil; end;
        if self.rectangle195 ~= nil then self.rectangle195:destroy(); self.rectangle195 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.rectangle421 ~= nil then self.rectangle421:destroy(); self.rectangle421 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.rectangle343 ~= nil then self.rectangle343:destroy(); self.rectangle343 = nil; end;
        if self.rectangle161 ~= nil then self.rectangle161:destroy(); self.rectangle161 = nil; end;
        if self.rectangle171 ~= nil then self.rectangle171:destroy(); self.rectangle171 = nil; end;
        if self.rectangle240 ~= nil then self.rectangle240:destroy(); self.rectangle240 = nil; end;
        if self.rectangle272 ~= nil then self.rectangle272:destroy(); self.rectangle272 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.rectangle127 ~= nil then self.rectangle127:destroy(); self.rectangle127 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.rectangle206 ~= nil then self.rectangle206:destroy(); self.rectangle206 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.progressBar2 ~= nil then self.progressBar2:destroy(); self.progressBar2 = nil; end;
        if self.rectangle485 ~= nil then self.rectangle485:destroy(); self.rectangle485 = nil; end;
        if self.rectangle150 ~= nil then self.rectangle150:destroy(); self.rectangle150 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.rectangle392 ~= nil then self.rectangle392:destroy(); self.rectangle392 = nil; end;
        if self.rectangle108 ~= nil then self.rectangle108:destroy(); self.rectangle108 = nil; end;
        if self.rectangle229 ~= nil then self.rectangle229:destroy(); self.rectangle229 = nil; end;
        if self.rectangle182 ~= nil then self.rectangle182:destroy(); self.rectangle182 = nil; end;
        if self.rectangle378 ~= nil then self.rectangle378:destroy(); self.rectangle378 = nil; end;
        if self.comboBox27 ~= nil then self.comboBox27:destroy(); self.comboBox27 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle320 ~= nil then self.rectangle320:destroy(); self.rectangle320 = nil; end;
        if self.rectangle332 ~= nil then self.rectangle332:destroy(); self.rectangle332 = nil; end;
        if self.rectangle102 ~= nil then self.rectangle102:destroy(); self.rectangle102 = nil; end;
        if self.rectangle223 ~= nil then self.rectangle223:destroy(); self.rectangle223 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.rectangle387 ~= nil then self.rectangle387:destroy(); self.rectangle387 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.combatente_trilha ~= nil then self.combatente_trilha:destroy(); self.combatente_trilha = nil; end;
        if self.rectangle417 ~= nil then self.rectangle417:destroy(); self.rectangle417 = nil; end;
        if self.rectangle351 ~= nil then self.rectangle351:destroy(); self.rectangle351 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle465 ~= nil then self.rectangle465:destroy(); self.rectangle465 = nil; end;
        if self.rectangle451 ~= nil then self.rectangle451:destroy(); self.rectangle451 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rectangle307 ~= nil then self.rectangle307:destroy(); self.rectangle307 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.rectangle135 ~= nil then self.rectangle135:destroy(); self.rectangle135 = nil; end;
        if self.rectangle236 ~= nil then self.rectangle236:destroy(); self.rectangle236 = nil; end;
        if self.rectangle317 ~= nil then self.rectangle317:destroy(); self.rectangle317 = nil; end;
        if self.rectangle291 ~= nil then self.rectangle291:destroy(); self.rectangle291 = nil; end;
        if self.rectangle281 ~= nil then self.rectangle281:destroy(); self.rectangle281 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle238 ~= nil then self.rectangle238:destroy(); self.rectangle238 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.rectangle369 ~= nil then self.rectangle369:destroy(); self.rectangle369 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.rectangle405 ~= nil then self.rectangle405:destroy(); self.rectangle405 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.rectangle363 ~= nil then self.rectangle363:destroy(); self.rectangle363 = nil; end;
        if self.rectangle145 ~= nil then self.rectangle145:destroy(); self.rectangle145 = nil; end;
        if self.rectangle264 ~= nil then self.rectangle264:destroy(); self.rectangle264 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.rectangle99 ~= nil then self.rectangle99:destroy(); self.rectangle99 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.rectangle422 ~= nil then self.rectangle422:destroy(); self.rectangle422 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.rectangle172 ~= nil then self.rectangle172:destroy(); self.rectangle172 = nil; end;
        if self.rectangle271 ~= nil then self.rectangle271:destroy(); self.rectangle271 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.comboBox17 ~= nil then self.comboBox17:destroy(); self.comboBox17 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.progressBar1 ~= nil then self.progressBar1:destroy(); self.progressBar1 = nil; end;
        if self.rectangle482 ~= nil then self.rectangle482:destroy(); self.rectangle482 = nil; end;
        if self.layAnota ~= nil then self.layAnota:destroy(); self.layAnota = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.rectangle490 ~= nil then self.rectangle490:destroy(); self.rectangle490 = nil; end;
        if self.rectangle344 ~= nil then self.rectangle344:destroy(); self.rectangle344 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.rectangle178 ~= nil then self.rectangle178:destroy(); self.rectangle178 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle397 ~= nil then self.rectangle397:destroy(); self.rectangle397 = nil; end;
        if self.rectangle181 ~= nil then self.rectangle181:destroy(); self.rectangle181 = nil; end;
        if self.rectangle120 ~= nil then self.rectangle120:destroy(); self.rectangle120 = nil; end;
        if self.rectangle201 ~= nil then self.rectangle201:destroy(); self.rectangle201 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rectangle375 ~= nil then self.rectangle375:destroy(); self.rectangle375 = nil; end;
        if self.rectangle157 ~= nil then self.rectangle157:destroy(); self.rectangle157 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.rectangle435 ~= nil then self.rectangle435:destroy(); self.rectangle435 = nil; end;
        if self.rectangle441 ~= nil then self.rectangle441:destroy(); self.rectangle441 = nil; end;
        if self.rectangle327 ~= nil then self.rectangle327:destroy(); self.rectangle327 = nil; end;
        if self.rectangle337 ~= nil then self.rectangle337:destroy(); self.rectangle337 = nil; end;
        if self.rectangle101 ~= nil then self.rectangle101:destroy(); self.rectangle101 = nil; end;
        if self.rectangle111 ~= nil then self.rectangle111:destroy(); self.rectangle111 = nil; end;
        if self.rectangle220 ~= nil then self.rectangle220:destroy(); self.rectangle220 = nil; end;
        if self.rectangle256 ~= nil then self.rectangle256:destroy(); self.rectangle256 = nil; end;
        if self.comboBox30 ~= nil then self.comboBox30:destroy(); self.comboBox30 = nil; end;
        if self.rectangle412 ~= nil then self.rectangle412:destroy(); self.rectangle412 = nil; end;
        if self.rectangle352 ~= nil then self.rectangle352:destroy(); self.rectangle352 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle339 ~= nil then self.rectangle339:destroy(); self.rectangle339 = nil; end;
        if self.rectangle466 ~= nil then self.rectangle466:destroy(); self.rectangle466 = nil; end;
        if self.rectangle454 ~= nil then self.rectangle454:destroy(); self.rectangle454 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.rectangle380 ~= nil then self.rectangle380:destroy(); self.rectangle380 = nil; end;
        if self.rectangle136 ~= nil then self.rectangle136:destroy(); self.rectangle136 = nil; end;
        if self.rectangle235 ~= nil then self.rectangle235:destroy(); self.rectangle235 = nil; end;
        if self.rectangle294 ~= nil then self.rectangle294:destroy(); self.rectangle294 = nil; end;
        if self.rectangle282 ~= nil then self.rectangle282:destroy(); self.rectangle282 = nil; end;
        if self.layHabil ~= nil then self.layHabil:destroy(); self.layHabil = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.rectangle358 ~= nil then self.rectangle358:destroy(); self.rectangle358 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.rectangle300 ~= nil then self.rectangle300:destroy(); self.rectangle300 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.rectangle288 ~= nil then self.rectangle288:destroy(); self.rectangle288 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle408 ~= nil then self.rectangle408:destroy(); self.rectangle408 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.rectangle471 ~= nil then self.rectangle471:destroy(); self.rectangle471 = nil; end;
        if self.rectangle402 ~= nil then self.rectangle402:destroy(); self.rectangle402 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.rectangle212 ~= nil then self.rectangle212:destroy(); self.rectangle212 = nil; end;
        if self.ocultista_trilha ~= nil then self.ocultista_trilha:destroy(); self.ocultista_trilha = nil; end;
        if self.rectangle140 ~= nil then self.rectangle140:destroy(); self.rectangle140 = nil; end;
        if self.rectangle261 ~= nil then self.rectangle261:destroy(); self.rectangle261 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layFrente ~= nil then self.layFrente:destroy(); self.layFrente = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle218 ~= nil then self.rectangle218:destroy(); self.rectangle218 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.rectangle349 ~= nil then self.rectangle349:destroy(); self.rectangle349 = nil; end;
        if self.rectangle191 ~= nil then self.rectangle191:destroy(); self.rectangle191 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.rectangle425 ~= nil then self.rectangle425:destroy(); self.rectangle425 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.rectangle347 ~= nil then self.rectangle347:destroy(); self.rectangle347 = nil; end;
        if self.rectangle165 ~= nil then self.rectangle165:destroy(); self.rectangle165 = nil; end;
        if self.rectangle175 ~= nil then self.rectangle175:destroy(); self.rectangle175 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle244 ~= nil then self.rectangle244:destroy(); self.rectangle244 = nil; end;
        if self.rectangle276 ~= nil then self.rectangle276:destroy(); self.rectangle276 = nil; end;
        if self.rectangle398 ~= nil then self.rectangle398:destroy(); self.rectangle398 = nil; end;
        if self.rectangle184 ~= nil then self.rectangle184:destroy(); self.rectangle184 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.rectangle123 ~= nil then self.rectangle123:destroy(); self.rectangle123 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.rectangle202 ~= nil then self.rectangle202:destroy(); self.rectangle202 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle489 ~= nil then self.rectangle489:destroy(); self.rectangle489 = nil; end;
        if self.rectangle372 ~= nil then self.rectangle372:destroy(); self.rectangle372 = nil; end;
        if self.rectangle154 ~= nil then self.rectangle154:destroy(); self.rectangle154 = nil; end;
        if self.rectangle446 ~= nil then self.rectangle446:destroy(); self.rectangle446 = nil; end;
        if self.rectangle430 ~= nil then self.rectangle430:destroy(); self.rectangle430 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.rectangle334 ~= nil then self.rectangle334:destroy(); self.rectangle334 = nil; end;
        if self.rectangle104 ~= nil then self.rectangle104:destroy(); self.rectangle104 = nil; end;
        if self.rectangle116 ~= nil then self.rectangle116:destroy(); self.rectangle116 = nil; end;
        if self.rectangle225 ~= nil then self.rectangle225:destroy(); self.rectangle225 = nil; end;
        if self.rectangle251 ~= nil then self.rectangle251:destroy(); self.rectangle251 = nil; end;
        if self.comboBox33 ~= nil then self.comboBox33:destroy(); self.comboBox33 = nil; end;
        if self.comboBox23 ~= nil then self.comboBox23:destroy(); self.comboBox23 = nil; end;
        if self.rectangle411 ~= nil then self.rectangle411:destroy(); self.rectangle411 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.rectangle118 ~= nil then self.rectangle118:destroy(); self.rectangle118 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle383 ~= nil then self.rectangle383:destroy(); self.rectangle383 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.comboBox29 ~= nil then self.comboBox29:destroy(); self.comboBox29 = nil; end;
        if self.rectangle297 ~= nil then self.rectangle297:destroy(); self.rectangle297 = nil; end;
        if self.rectangle287 ~= nil then self.rectangle287:destroy(); self.rectangle287 = nil; end;
        if self.rectangle355 ~= nil then self.rectangle355:destroy(); self.rectangle355 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.rectangle461 ~= nil then self.rectangle461:destroy(); self.rectangle461 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.rectangle303 ~= nil then self.rectangle303:destroy(); self.rectangle303 = nil; end;
        if self.rectangle313 ~= nil then self.rectangle313:destroy(); self.rectangle313 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle131 ~= nil then self.rectangle131:destroy(); self.rectangle131 = nil; end;
        if self.rectangle232 ~= nil then self.rectangle232:destroy(); self.rectangle232 = nil; end;
        if self.rectangle389 ~= nil then self.rectangle389:destroy(); self.rectangle389 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.rectangle319 ~= nil then self.rectangle319:destroy(); self.rectangle319 = nil; end;
        if self.rectangle474 ~= nil then self.rectangle474:destroy(); self.rectangle474 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.rectangle215 ~= nil then self.rectangle215:destroy(); self.rectangle215 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.layBook ~= nil then self.layBook:destroy(); self.layBook = nil; end;
        if self.rectangle367 ~= nil then self.rectangle367:destroy(); self.rectangle367 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle428 ~= nil then self.rectangle428:destroy(); self.rectangle428 = nil; end;
        if self.rectangle196 ~= nil then self.rectangle196:destroy(); self.rectangle196 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.comboBox19 ~= nil then self.comboBox19:destroy(); self.comboBox19 = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.rectangle426 ~= nil then self.rectangle426:destroy(); self.rectangle426 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.rectangle342 ~= nil then self.rectangle342:destroy(); self.rectangle342 = nil; end;
        if self.rectangle160 ~= nil then self.rectangle160:destroy(); self.rectangle160 = nil; end;
        if self.rectangle176 ~= nil then self.rectangle176:destroy(); self.rectangle176 = nil; end;
        if self.rectangle241 ~= nil then self.rectangle241:destroy(); self.rectangle241 = nil; end;
        if self.rectangle275 ~= nil then self.rectangle275:destroy(); self.rectangle275 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.rectangle126 ~= nil then self.rectangle126:destroy(); self.rectangle126 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.rectangle207 ~= nil then self.rectangle207:destroy(); self.rectangle207 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle486 ~= nil then self.rectangle486:destroy(); self.rectangle486 = nil; end;
        if self.rectangle151 ~= nil then self.rectangle151:destroy(); self.rectangle151 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.rectangle433 ~= nil then self.rectangle433:destroy(); self.rectangle433 = nil; end;
        if self.rectangle329 ~= nil then self.rectangle329:destroy(); self.rectangle329 = nil; end;
        if self.rectangle393 ~= nil then self.rectangle393:destroy(); self.rectangle393 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.rectangle379 ~= nil then self.rectangle379:destroy(); self.rectangle379 = nil; end;
        if self.comboBox24 ~= nil then self.comboBox24:destroy(); self.comboBox24 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.rectangle439 ~= nil then self.rectangle439:destroy(); self.rectangle439 = nil; end;
        if self.rectangle323 ~= nil then self.rectangle323:destroy(); self.rectangle323 = nil; end;
        if self.rectangle333 ~= nil then self.rectangle333:destroy(); self.rectangle333 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.rectangle386 ~= nil then self.rectangle386:destroy(); self.rectangle386 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.rectangle416 ~= nil then self.rectangle416:destroy(); self.rectangle416 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle356 ~= nil then self.rectangle356:destroy(); self.rectangle356 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.rectangle462 ~= nil then self.rectangle462:destroy(); self.rectangle462 = nil; end;
        if self.rectangle450 ~= nil then self.rectangle450:destroy(); self.rectangle450 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.rectangle306 ~= nil then self.rectangle306:destroy(); self.rectangle306 = nil; end;
        if self.rectangle314 ~= nil then self.rectangle314:destroy(); self.rectangle314 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.rectangle132 ~= nil then self.rectangle132:destroy(); self.rectangle132 = nil; end;
        if self.rectangle231 ~= nil then self.rectangle231:destroy(); self.rectangle231 = nil; end;
        if self.rectangle290 ~= nil then self.rectangle290:destroy(); self.rectangle290 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.rectangle138 ~= nil then self.rectangle138:destroy(); self.rectangle138 = nil; end;
        if self.rectangle477 ~= nil then self.rectangle477:destroy(); self.rectangle477 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.rectangle368 ~= nil then self.rectangle368:destroy(); self.rectangle368 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.rectangle406 ~= nil then self.rectangle406:destroy(); self.rectangle406 = nil; end;
        if self.rectangle362 ~= nil then self.rectangle362:destroy(); self.rectangle362 = nil; end;
        if self.rectangle144 ~= nil then self.rectangle144:destroy(); self.rectangle144 = nil; end;
        if self.rectangle265 ~= nil then self.rectangle265:destroy(); self.rectangle265 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle423 ~= nil then self.rectangle423:destroy(); self.rectangle423 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.rectangle163 ~= nil then self.rectangle163:destroy(); self.rectangle163 = nil; end;
        if self.rectangle173 ~= nil then self.rectangle173:destroy(); self.rectangle173 = nil; end;
        if self.rectangle242 ~= nil then self.rectangle242:destroy(); self.rectangle242 = nil; end;
        if self.rectangle270 ~= nil then self.rectangle270:destroy(); self.rectangle270 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.comboBox16 ~= nil then self.comboBox16:destroy(); self.comboBox16 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.rectangle129 ~= nil then self.rectangle129:destroy(); self.rectangle129 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.rectangle208 ~= nil then self.rectangle208:destroy(); self.rectangle208 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.rectangle483 ~= nil then self.rectangle483:destroy(); self.rectangle483 = nil; end;
        if self.rectangle493 ~= nil then self.rectangle493:destroy(); self.rectangle493 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.rectangle179 ~= nil then self.rectangle179:destroy(); self.rectangle179 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle448 ~= nil then self.rectangle448:destroy(); self.rectangle448 = nil; end;
        if self.rectangle394 ~= nil then self.rectangle394:destroy(); self.rectangle394 = nil; end;
        if self.rectangle180 ~= nil then self.rectangle180:destroy(); self.rectangle180 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.rectangle376 ~= nil then self.rectangle376:destroy(); self.rectangle376 = nil; end;
        if self.rectangle158 ~= nil then self.rectangle158:destroy(); self.rectangle158 = nil; end;
        if self.rectangle442 ~= nil then self.rectangle442:destroy(); self.rectangle442 = nil; end;
        if self.rectangle434 ~= nil then self.rectangle434:destroy(); self.rectangle434 = nil; end;
        if self.rectangle326 ~= nil then self.rectangle326:destroy(); self.rectangle326 = nil; end;
        if self.rectangle330 ~= nil then self.rectangle330:destroy(); self.rectangle330 = nil; end;
        if self.rectangle100 ~= nil then self.rectangle100:destroy(); self.rectangle100 = nil; end;
        if self.rectangle112 ~= nil then self.rectangle112:destroy(); self.rectangle112 = nil; end;
        if self.rectangle221 ~= nil then self.rectangle221:destroy(); self.rectangle221 = nil; end;
        if self.rectangle255 ~= nil then self.rectangle255:destroy(); self.rectangle255 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.rectangle415 ~= nil then self.rectangle415:destroy(); self.rectangle415 = nil; end;
        if self.layPericias ~= nil then self.layPericias:destroy(); self.layPericias = nil; end;
        if self.rectangle353 ~= nil then self.rectangle353:destroy(); self.rectangle353 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle467 ~= nil then self.rectangle467:destroy(); self.rectangle467 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.rectangle457 ~= nil then self.rectangle457:destroy(); self.rectangle457 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.rectangle309 ~= nil then self.rectangle309:destroy(); self.rectangle309 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.rectangle137 ~= nil then self.rectangle137:destroy(); self.rectangle137 = nil; end;
        if self.rectangle234 ~= nil then self.rectangle234:destroy(); self.rectangle234 = nil; end;
        if self.rectangle293 ~= nil then self.rectangle293:destroy(); self.rectangle293 = nil; end;
        if self.rectangle283 ~= nil then self.rectangle283:destroy(); self.rectangle283 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.rectangle359 ~= nil then self.rectangle359:destroy(); self.rectangle359 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.rectangle459 ~= nil then self.rectangle459:destroy(); self.rectangle459 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.rectangle289 ~= nil then self.rectangle289:destroy(); self.rectangle289 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle409 ~= nil then self.rectangle409:destroy(); self.rectangle409 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.rectangle149 ~= nil then self.rectangle149:destroy(); self.rectangle149 = nil; end;
        if self.rectangle268 ~= nil then self.rectangle268:destroy(); self.rectangle268 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.rectangle470 ~= nil then self.rectangle470:destroy(); self.rectangle470 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.rectangle403 ~= nil then self.rectangle403:destroy(); self.rectangle403 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle211 ~= nil then self.rectangle211:destroy(); self.rectangle211 = nil; end;
        if self.rectangle361 ~= nil then self.rectangle361:destroy(); self.rectangle361 = nil; end;
        if self.rectangle143 ~= nil then self.rectangle143:destroy(); self.rectangle143 = nil; end;
        if self.rectangle262 ~= nil then self.rectangle262:destroy(); self.rectangle262 = nil; end;
        if self.rectangle198 ~= nil then self.rectangle198:destroy(); self.rectangle198 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.rectangle348 ~= nil then self.rectangle348:destroy(); self.rectangle348 = nil; end;
        if self.rectangle192 ~= nil then self.rectangle192:destroy(); self.rectangle192 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.comboBox15 ~= nil then self.comboBox15:destroy(); self.comboBox15 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.rectangle480 ~= nil then self.rectangle480:destroy(); self.rectangle480 = nil; end;
        if self.rectangle346 ~= nil then self.rectangle346:destroy(); self.rectangle346 = nil; end;
        if self.rectangle164 ~= nil then self.rectangle164:destroy(); self.rectangle164 = nil; end;
        if self.rectangle245 ~= nil then self.rectangle245:destroy(); self.rectangle245 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.rectangle279 ~= nil then self.rectangle279:destroy(); self.rectangle279 = nil; end;
        if self.rectangle399 ~= nil then self.rectangle399:destroy(); self.rectangle399 = nil; end;
        if self.rectangle187 ~= nil then self.rectangle187:destroy(); self.rectangle187 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.rectangle122 ~= nil then self.rectangle122:destroy(); self.rectangle122 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.rectangle203 ~= nil then self.rectangle203:destroy(); self.rectangle203 = nil; end;
        if self.rectangle373 ~= nil then self.rectangle373:destroy(); self.rectangle373 = nil; end;
        if self.rectangle155 ~= nil then self.rectangle155:destroy(); self.rectangle155 = nil; end;
        if self.rectangle447 ~= nil then self.rectangle447:destroy(); self.rectangle447 = nil; end;
        if self.rectangle437 ~= nil then self.rectangle437:destroy(); self.rectangle437 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.rectangle325 ~= nil then self.rectangle325:destroy(); self.rectangle325 = nil; end;
        if self.rectangle335 ~= nil then self.rectangle335:destroy(); self.rectangle335 = nil; end;
        if self.rectangle107 ~= nil then self.rectangle107:destroy(); self.rectangle107 = nil; end;
        if self.rectangle117 ~= nil then self.rectangle117:destroy(); self.rectangle117 = nil; end;
        if self.rectangle189 ~= nil then self.rectangle189:destroy(); self.rectangle189 = nil; end;
        if self.rectangle226 ~= nil then self.rectangle226:destroy(); self.rectangle226 = nil; end;
        if self.rectangle250 ~= nil then self.rectangle250:destroy(); self.rectangle250 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.comboBox32 ~= nil then self.comboBox32:destroy(); self.comboBox32 = nil; end;
        if self.comboBox20 ~= nil then self.comboBox20:destroy(); self.comboBox20 = nil; end;
        if self.rectangle410 ~= nil then self.rectangle410:destroy(); self.rectangle410 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.rectangle119 ~= nil then self.rectangle119:destroy(); self.rectangle119 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.rectangle468 ~= nil then self.rectangle468:destroy(); self.rectangle468 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle382 ~= nil then self.rectangle382:destroy(); self.rectangle382 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.rectangle296 ~= nil then self.rectangle296:destroy(); self.rectangle296 = nil; end;
        if self.rectangle284 ~= nil then self.rectangle284:destroy(); self.rectangle284 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.rectangle302 ~= nil then self.rectangle302:destroy(); self.rectangle302 = nil; end;
        if self.rectangle310 ~= nil then self.rectangle310:destroy(); self.rectangle310 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle388 ~= nil then self.rectangle388:destroy(); self.rectangle388 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.rectangle473 ~= nil then self.rectangle473:destroy(); self.rectangle473 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle400 ~= nil then self.rectangle400:destroy(); self.rectangle400 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.rectangle214 ~= nil then self.rectangle214:destroy(); self.rectangle214 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.rectangle479 ~= nil then self.rectangle479:destroy(); self.rectangle479 = nil; end;
        if self.rectangle366 ~= nil then self.rectangle366:destroy(); self.rectangle366 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle429 ~= nil then self.rectangle429:destroy(); self.rectangle429 = nil; end;
        if self.rectangle169 ~= nil then self.rectangle169:destroy(); self.rectangle169 = nil; end;
        if self.rectangle197 ~= nil then self.rectangle197:destroy(); self.rectangle197 = nil; end;
        if self.rectangle248 ~= nil then self.rectangle248:destroy(); self.rectangle248 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.comboBox18 ~= nil then self.comboBox18:destroy(); self.comboBox18 = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.rectangle427 ~= nil then self.rectangle427:destroy(); self.rectangle427 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.rectangle341 ~= nil then self.rectangle341:destroy(); self.rectangle341 = nil; end;
        if self.rectangle167 ~= nil then self.rectangle167:destroy(); self.rectangle167 = nil; end;
        if self.rectangle177 ~= nil then self.rectangle177:destroy(); self.rectangle177 = nil; end;
        if self.rectangle246 ~= nil then self.rectangle246:destroy(); self.rectangle246 = nil; end;
        if self.rectangle274 ~= nil then self.rectangle274:destroy(); self.rectangle274 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.rectangle125 ~= nil then self.rectangle125:destroy(); self.rectangle125 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.rectangle204 ~= nil then self.rectangle204:destroy(); self.rectangle204 = nil; end;
        if self.rectangle487 ~= nil then self.rectangle487:destroy(); self.rectangle487 = nil; end;
        if self.rectangle370 ~= nil then self.rectangle370:destroy(); self.rectangle370 = nil; end;
        if self.rectangle152 ~= nil then self.rectangle152:destroy(); self.rectangle152 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.rectangle444 ~= nil then self.rectangle444:destroy(); self.rectangle444 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.rectangle432 ~= nil then self.rectangle432:destroy(); self.rectangle432 = nil; end;
        if self.rectangle328 ~= nil then self.rectangle328:destroy(); self.rectangle328 = nil; end;
        if self.rectangle390 ~= nil then self.rectangle390:destroy(); self.rectangle390 = nil; end;
        if self.rectangle114 ~= nil then self.rectangle114:destroy(); self.rectangle114 = nil; end;
        if self.rectangle253 ~= nil then self.rectangle253:destroy(); self.rectangle253 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.comboBox25 ~= nil then self.comboBox25:destroy(); self.comboBox25 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.rectangle438 ~= nil then self.rectangle438:destroy(); self.rectangle438 = nil; end;
        if self.rectangle322 ~= nil then self.rectangle322:destroy(); self.rectangle322 = nil; end;
        if self.rectangle259 ~= nil then self.rectangle259:destroy(); self.rectangle259 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle385 ~= nil then self.rectangle385:destroy(); self.rectangle385 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rectangle299 ~= nil then self.rectangle299:destroy(); self.rectangle299 = nil; end;
        if self.rectangle419 ~= nil then self.rectangle419:destroy(); self.rectangle419 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.rectangle357 ~= nil then self.rectangle357:destroy(); self.rectangle357 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.rectangle463 ~= nil then self.rectangle463:destroy(); self.rectangle463 = nil; end;
        if self.rectangle453 ~= nil then self.rectangle453:destroy(); self.rectangle453 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.rectangle305 ~= nil then self.rectangle305:destroy(); self.rectangle305 = nil; end;
        if self.rectangle315 ~= nil then self.rectangle315:destroy(); self.rectangle315 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.rectangle133 ~= nil then self.rectangle133:destroy(); self.rectangle133 = nil; end;
        if self.rectangle230 ~= nil then self.rectangle230:destroy(); self.rectangle230 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.rectangle139 ~= nil then self.rectangle139:destroy(); self.rectangle139 = nil; end;
        if self.rectangle476 ~= nil then self.rectangle476:destroy(); self.rectangle476 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle217 ~= nil then self.rectangle217:destroy(); self.rectangle217 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.rectangle407 ~= nil then self.rectangle407:destroy(); self.rectangle407 = nil; end;
        if self.rectangle365 ~= nil then self.rectangle365:destroy(); self.rectangle365 = nil; end;
        if self.rectangle147 ~= nil then self.rectangle147:destroy(); self.rectangle147 = nil; end;
        if self.rectangle266 ~= nil then self.rectangle266:destroy(); self.rectangle266 = nil; end;
        if self.rectangle194 ~= nil then self.rectangle194:destroy(); self.rectangle194 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.layRituais ~= nil then self.layRituais:destroy(); self.layRituais = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.rectangle420 ~= nil then self.rectangle420:destroy(); self.rectangle420 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.rectangle162 ~= nil then self.rectangle162:destroy(); self.rectangle162 = nil; end;
        if self.rectangle170 ~= nil then self.rectangle170:destroy(); self.rectangle170 = nil; end;
        if self.rectangle243 ~= nil then self.rectangle243:destroy(); self.rectangle243 = nil; end;
        if self.rectangle273 ~= nil then self.rectangle273:destroy(); self.rectangle273 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.rectangle128 ~= nil then self.rectangle128:destroy(); self.rectangle128 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.rectangle209 ~= nil then self.rectangle209:destroy(); self.rectangle209 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.progressBar3 ~= nil then self.progressBar3:destroy(); self.progressBar3 = nil; end;
        if self.rectangle484 ~= nil then self.rectangle484:destroy(); self.rectangle484 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.rectangle492 ~= nil then self.rectangle492:destroy(); self.rectangle492 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.rectangle449 ~= nil then self.rectangle449:destroy(); self.rectangle449 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle395 ~= nil then self.rectangle395:destroy(); self.rectangle395 = nil; end;
        if self.rectangle109 ~= nil then self.rectangle109:destroy(); self.rectangle109 = nil; end;
        if self.rectangle228 ~= nil then self.rectangle228:destroy(); self.rectangle228 = nil; end;
        if self.rectangle183 ~= nil then self.rectangle183:destroy(); self.rectangle183 = nil; end;
        if self.rectangle377 ~= nil then self.rectangle377:destroy(); self.rectangle377 = nil; end;
        if self.comboBox26 ~= nil then self.comboBox26:destroy(); self.comboBox26 = nil; end;
        if self.rectangle159 ~= nil then self.rectangle159:destroy(); self.rectangle159 = nil; end;
        if self.rectangle443 ~= nil then self.rectangle443:destroy(); self.rectangle443 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.rectangle321 ~= nil then self.rectangle321:destroy(); self.rectangle321 = nil; end;
        if self.rectangle331 ~= nil then self.rectangle331:destroy(); self.rectangle331 = nil; end;
        if self.rectangle103 ~= nil then self.rectangle103:destroy(); self.rectangle103 = nil; end;
        if self.rectangle113 ~= nil then self.rectangle113:destroy(); self.rectangle113 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.rectangle222 ~= nil then self.rectangle222:destroy(); self.rectangle222 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.rectangle254 ~= nil then self.rectangle254:destroy(); self.rectangle254 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.rectangle414 ~= nil then self.rectangle414:destroy(); self.rectangle414 = nil; end;
        if self.rectangle350 ~= nil then self.rectangle350:destroy(); self.rectangle350 = nil; end;
        if self.especialista_trilha ~= nil then self.especialista_trilha:destroy(); self.especialista_trilha = nil; end;
        if self.rectangle464 ~= nil then self.rectangle464:destroy(); self.rectangle464 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.rectangle456 ~= nil then self.rectangle456:destroy(); self.rectangle456 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle308 ~= nil then self.rectangle308:destroy(); self.rectangle308 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.rectangle134 ~= nil then self.rectangle134:destroy(); self.rectangle134 = nil; end;
        if self.rectangle237 ~= nil then self.rectangle237:destroy(); self.rectangle237 = nil; end;
        if self.rectangle316 ~= nil then self.rectangle316:destroy(); self.rectangle316 = nil; end;
        if self.rectangle292 ~= nil then self.rectangle292:destroy(); self.rectangle292 = nil; end;
        if self.rectangle280 ~= nil then self.rectangle280:destroy(); self.rectangle280 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.rectangle458 ~= nil then self.rectangle458:destroy(); self.rectangle458 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.rectangle239 ~= nil then self.rectangle239:destroy(); self.rectangle239 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.rectangle148 ~= nil then self.rectangle148:destroy(); self.rectangle148 = nil; end;
        if self.rectangle269 ~= nil then self.rectangle269:destroy(); self.rectangle269 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.rectangle404 ~= nil then self.rectangle404:destroy(); self.rectangle404 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.rectangle210 ~= nil then self.rectangle210:destroy(); self.rectangle210 = nil; end;
        if self.rectangle360 ~= nil then self.rectangle360:destroy(); self.rectangle360 = nil; end;
        if self.rectangle142 ~= nil then self.rectangle142:destroy(); self.rectangle142 = nil; end;
        if self.rectangle263 ~= nil then self.rectangle263:destroy(); self.rectangle263 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.rectangle199 ~= nil then self.rectangle199:destroy(); self.rectangle199 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmficha()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmficha();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmficha = {
    newEditor = newfrmficha, 
    new = newfrmficha, 
    name = "frmficha", 
    dataType = "Ficha.ORP.Gus", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ordem Paranormal", 
    description=""};

frmficha = _frmficha;
Firecast.registrarForm(_frmficha);
Firecast.registrarDataType(_frmficha);

return _frmficha;
