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
    obj.button3:setHint("Ataques");
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
								self.layAtaques.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'P') then
								self.layFrente.visible = false;
								self.layPericias.visible = true;
								self.layAtaques.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'A') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = true;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'R') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = false;
								self.layRituais.visible = true;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'H') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = true;
								self.layInvent.visible = false;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'I') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = true;
								self.layAnota.visible = false;
								self.layBook.visible = false;
							elseif(a == 'N') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = false;
								self.layRituais.visible = false;
								self.layHabil.visible = false;
								self.layInvent.visible = false;
								self.layAnota.visible = true;
								self.layBook.visible = false;
							elseif(a == 'B') then
								self.layFrente.visible = false;
								self.layPericias.visible = false;
								self.layAtaques.visible = false;
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
    obj.layFrente:setVisible(true);
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
    obj.rectangle28:setParent(obj.rectangle24);
    obj.rectangle28:setWidth(58);
    obj.rectangle28:setName("rectangle28");
    obj.rectangle28:setAlign("left");
    obj.rectangle28:setColor("transparent");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.rectangle28);
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

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.rectangle24);
    obj.rectangle29:setWidth(52);
    obj.rectangle29:setName("rectangle29");
    obj.rectangle29:setAlign("left");
    obj.rectangle29:setColor("transparent");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle29);
    obj.edit9:setField("AcrobaciaO");
    obj.edit9:setName("edit9");
    obj.edit9:setAlign("client");
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(12);
    obj.edit9:setFontColor("#fff");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("center");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.scrollBox1);
    obj.rectangle30:setColor("#181818");
    obj.rectangle30:setName("rectangle30");
    obj.rectangle30:setAlign("top");
    obj.rectangle30:setHeight(25);

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.rectangle30);
    obj.rectangle31:setWidth(137);
    obj.rectangle31:setName("rectangle31");
    obj.rectangle31:setAlign("left");
    obj.rectangle31:setColor("transparent");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle31);
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setMargins({left=7});
    obj.label16:setText("Adestramento ♦");
    obj.label16:setName("label16");
    obj.label16:setAlign("client");
    obj.label16:setFontSize(12);
    obj.label16:setFontColor("#fff");
    obj.label16:setVertTextAlign("center");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.rectangle30);
    obj.rectangle32:setWidth(54);
    obj.rectangle32:setName("rectangle32");
    obj.rectangle32:setAlign("left");
    obj.rectangle32:setColor("transparent");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle32);
    obj.label17:setText("PRE");
    obj.label17:setName("label17");
    obj.label17:setAlign("client");
    obj.label17:setFontSize(12);
    obj.label17:setFontColor("#fff");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setVertTextAlign("center");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.rectangle30);
    obj.rectangle33:setWidth(52);
    obj.rectangle33:setName("rectangle33");
    obj.rectangle33:setAlign("left");
    obj.rectangle33:setColor("transparent");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle33);
    obj.edit10:setField("AdestramentoB");
    obj.edit10:setName("edit10");
    obj.edit10:setAlign("client");
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(12);
    obj.edit10:setFontColor("#fff");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("center");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.rectangle30);
    obj.rectangle34:setWidth(58);
    obj.rectangle34:setName("rectangle34");
    obj.rectangle34:setAlign("left");
    obj.rectangle34:setColor("transparent");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.rectangle34);
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

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.rectangle30);
    obj.rectangle35:setWidth(52);
    obj.rectangle35:setName("rectangle35");
    obj.rectangle35:setAlign("left");
    obj.rectangle35:setColor("transparent");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle35);
    obj.edit11:setField("AdestramentoO");
    obj.edit11:setName("edit11");
    obj.edit11:setAlign("client");
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(12);
    obj.edit11:setFontColor("#fff");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.scrollBox1);
    obj.rectangle36:setColor("#202020");
    obj.rectangle36:setName("rectangle36");
    obj.rectangle36:setAlign("top");
    obj.rectangle36:setHeight(25);

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.rectangle36);
    obj.rectangle37:setWidth(137);
    obj.rectangle37:setName("rectangle37");
    obj.rectangle37:setAlign("left");
    obj.rectangle37:setColor("transparent");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle37);
    obj.label18:setHorzTextAlign("leading");
    obj.label18:setMargins({left=7});
    obj.label18:setText("Artes ♦");
    obj.label18:setName("label18");
    obj.label18:setAlign("client");
    obj.label18:setFontSize(12);
    obj.label18:setFontColor("#fff");
    obj.label18:setVertTextAlign("center");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.rectangle36);
    obj.rectangle38:setWidth(54);
    obj.rectangle38:setName("rectangle38");
    obj.rectangle38:setAlign("left");
    obj.rectangle38:setColor("transparent");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle38);
    obj.label19:setText("PRE");
    obj.label19:setName("label19");
    obj.label19:setAlign("client");
    obj.label19:setFontSize(12);
    obj.label19:setFontColor("#fff");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setVertTextAlign("center");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.rectangle36);
    obj.rectangle39:setWidth(52);
    obj.rectangle39:setName("rectangle39");
    obj.rectangle39:setAlign("left");
    obj.rectangle39:setColor("transparent");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle39);
    obj.edit12:setField("ArtesB");
    obj.edit12:setName("edit12");
    obj.edit12:setAlign("client");
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(12);
    obj.edit12:setFontColor("#fff");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.rectangle36);
    obj.rectangle40:setWidth(58);
    obj.rectangle40:setName("rectangle40");
    obj.rectangle40:setAlign("left");
    obj.rectangle40:setColor("transparent");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.rectangle40);
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

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.rectangle36);
    obj.rectangle41:setWidth(52);
    obj.rectangle41:setName("rectangle41");
    obj.rectangle41:setAlign("left");
    obj.rectangle41:setColor("transparent");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle41);
    obj.edit13:setField("ArtesO");
    obj.edit13:setName("edit13");
    obj.edit13:setAlign("client");
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(12);
    obj.edit13:setFontColor("#fff");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.scrollBox1);
    obj.rectangle42:setColor("#181818");
    obj.rectangle42:setName("rectangle42");
    obj.rectangle42:setAlign("top");
    obj.rectangle42:setHeight(25);

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.rectangle42);
    obj.rectangle43:setWidth(137);
    obj.rectangle43:setName("rectangle43");
    obj.rectangle43:setAlign("left");
    obj.rectangle43:setColor("transparent");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle43);
    obj.label20:setHorzTextAlign("leading");
    obj.label20:setMargins({left=7});
    obj.label20:setText("Atletismo ⭐");
    obj.label20:setName("label20");
    obj.label20:setAlign("client");
    obj.label20:setFontSize(12);
    obj.label20:setFontColor("#fff");
    obj.label20:setVertTextAlign("center");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.rectangle42);
    obj.rectangle44:setWidth(54);
    obj.rectangle44:setName("rectangle44");
    obj.rectangle44:setAlign("left");
    obj.rectangle44:setColor("transparent");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle44);
    obj.label21:setText("FOR");
    obj.label21:setName("label21");
    obj.label21:setAlign("client");
    obj.label21:setFontSize(12);
    obj.label21:setFontColor("#fff");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setVertTextAlign("center");

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.rectangle42);
    obj.rectangle45:setWidth(52);
    obj.rectangle45:setName("rectangle45");
    obj.rectangle45:setAlign("left");
    obj.rectangle45:setColor("transparent");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle45);
    obj.edit14:setField("AtletismoB");
    obj.edit14:setName("edit14");
    obj.edit14:setAlign("client");
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(12);
    obj.edit14:setFontColor("#fff");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.rectangle42);
    obj.rectangle46:setWidth(58);
    obj.rectangle46:setName("rectangle46");
    obj.rectangle46:setAlign("left");
    obj.rectangle46:setColor("transparent");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.rectangle46);
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

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.rectangle42);
    obj.rectangle47:setWidth(52);
    obj.rectangle47:setName("rectangle47");
    obj.rectangle47:setAlign("left");
    obj.rectangle47:setColor("transparent");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle47);
    obj.edit15:setField("AtletismoO");
    obj.edit15:setName("edit15");
    obj.edit15:setAlign("client");
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(12);
    obj.edit15:setFontColor("#fff");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.scrollBox1);
    obj.rectangle48:setColor("#202020");
    obj.rectangle48:setName("rectangle48");
    obj.rectangle48:setAlign("top");
    obj.rectangle48:setHeight(25);

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.rectangle48);
    obj.rectangle49:setWidth(137);
    obj.rectangle49:setName("rectangle49");
    obj.rectangle49:setAlign("left");
    obj.rectangle49:setColor("transparent");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle49);
    obj.label22:setHorzTextAlign("leading");
    obj.label22:setMargins({left=7});
    obj.label22:setText("Atualidades");
    obj.label22:setName("label22");
    obj.label22:setAlign("client");
    obj.label22:setFontSize(12);
    obj.label22:setFontColor("#fff");
    obj.label22:setVertTextAlign("center");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.rectangle48);
    obj.rectangle50:setWidth(54);
    obj.rectangle50:setName("rectangle50");
    obj.rectangle50:setAlign("left");
    obj.rectangle50:setColor("transparent");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle50);
    obj.label23:setText("INT");
    obj.label23:setName("label23");
    obj.label23:setAlign("client");
    obj.label23:setFontSize(12);
    obj.label23:setFontColor("#fff");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setVertTextAlign("center");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.rectangle48);
    obj.rectangle51:setWidth(52);
    obj.rectangle51:setName("rectangle51");
    obj.rectangle51:setAlign("left");
    obj.rectangle51:setColor("transparent");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle51);
    obj.edit16:setField("AtualidadesB");
    obj.edit16:setName("edit16");
    obj.edit16:setAlign("client");
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(12);
    obj.edit16:setFontColor("#fff");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.rectangle48);
    obj.rectangle52:setWidth(58);
    obj.rectangle52:setName("rectangle52");
    obj.rectangle52:setAlign("left");
    obj.rectangle52:setColor("transparent");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle52);
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

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.rectangle48);
    obj.rectangle53:setWidth(52);
    obj.rectangle53:setName("rectangle53");
    obj.rectangle53:setAlign("left");
    obj.rectangle53:setColor("transparent");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle53);
    obj.edit17:setField("AtualidadesO");
    obj.edit17:setName("edit17");
    obj.edit17:setAlign("client");
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(12);
    obj.edit17:setFontColor("#fff");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVertTextAlign("center");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.scrollBox1);
    obj.rectangle54:setColor("#181818");
    obj.rectangle54:setName("rectangle54");
    obj.rectangle54:setAlign("top");
    obj.rectangle54:setHeight(25);

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.rectangle54);
    obj.rectangle55:setWidth(137);
    obj.rectangle55:setName("rectangle55");
    obj.rectangle55:setAlign("left");
    obj.rectangle55:setColor("transparent");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle55);
    obj.label24:setHorzTextAlign("leading");
    obj.label24:setMargins({left=7});
    obj.label24:setText("Ciências ♦");
    obj.label24:setName("label24");
    obj.label24:setAlign("client");
    obj.label24:setFontSize(12);
    obj.label24:setFontColor("#fff");
    obj.label24:setVertTextAlign("center");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.rectangle54);
    obj.rectangle56:setWidth(54);
    obj.rectangle56:setName("rectangle56");
    obj.rectangle56:setAlign("left");
    obj.rectangle56:setColor("transparent");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.rectangle56);
    obj.label25:setText("INT");
    obj.label25:setName("label25");
    obj.label25:setAlign("client");
    obj.label25:setFontSize(12);
    obj.label25:setFontColor("#fff");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setVertTextAlign("center");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.rectangle54);
    obj.rectangle57:setWidth(52);
    obj.rectangle57:setName("rectangle57");
    obj.rectangle57:setAlign("left");
    obj.rectangle57:setColor("transparent");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle57);
    obj.edit18:setField("CiênciasB");
    obj.edit18:setName("edit18");
    obj.edit18:setAlign("client");
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(12);
    obj.edit18:setFontColor("#fff");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.rectangle54);
    obj.rectangle58:setWidth(58);
    obj.rectangle58:setName("rectangle58");
    obj.rectangle58:setAlign("left");
    obj.rectangle58:setColor("transparent");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.rectangle58);
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

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.rectangle54);
    obj.rectangle59:setWidth(52);
    obj.rectangle59:setName("rectangle59");
    obj.rectangle59:setAlign("left");
    obj.rectangle59:setColor("transparent");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle59);
    obj.edit19:setField("CiênciasO");
    obj.edit19:setName("edit19");
    obj.edit19:setAlign("client");
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(12);
    obj.edit19:setFontColor("#fff");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.scrollBox1);
    obj.rectangle60:setColor("#202020");
    obj.rectangle60:setName("rectangle60");
    obj.rectangle60:setAlign("top");
    obj.rectangle60:setHeight(25);

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.rectangle60);
    obj.rectangle61:setWidth(137);
    obj.rectangle61:setName("rectangle61");
    obj.rectangle61:setAlign("left");
    obj.rectangle61:setColor("transparent");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.rectangle61);
    obj.label26:setHorzTextAlign("leading");
    obj.label26:setMargins({left=7});
    obj.label26:setText("Crime ♦ ⭐");
    obj.label26:setName("label26");
    obj.label26:setAlign("client");
    obj.label26:setFontSize(12);
    obj.label26:setFontColor("#fff");
    obj.label26:setVertTextAlign("center");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.rectangle60);
    obj.rectangle62:setWidth(54);
    obj.rectangle62:setName("rectangle62");
    obj.rectangle62:setAlign("left");
    obj.rectangle62:setColor("transparent");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.rectangle62);
    obj.label27:setText("AGI");
    obj.label27:setName("label27");
    obj.label27:setAlign("client");
    obj.label27:setFontSize(12);
    obj.label27:setFontColor("#fff");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setVertTextAlign("center");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.rectangle60);
    obj.rectangle63:setWidth(52);
    obj.rectangle63:setName("rectangle63");
    obj.rectangle63:setAlign("left");
    obj.rectangle63:setColor("transparent");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle63);
    obj.edit20:setField("CrimeB");
    obj.edit20:setName("edit20");
    obj.edit20:setAlign("client");
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(12);
    obj.edit20:setFontColor("#fff");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.rectangle60);
    obj.rectangle64:setWidth(58);
    obj.rectangle64:setName("rectangle64");
    obj.rectangle64:setAlign("left");
    obj.rectangle64:setColor("transparent");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.rectangle64);
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

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.rectangle60);
    obj.rectangle65:setWidth(52);
    obj.rectangle65:setName("rectangle65");
    obj.rectangle65:setAlign("left");
    obj.rectangle65:setColor("transparent");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle65);
    obj.edit21:setField("CrimeO");
    obj.edit21:setName("edit21");
    obj.edit21:setAlign("client");
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(12);
    obj.edit21:setFontColor("#fff");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.scrollBox1);
    obj.rectangle66:setColor("#181818");
    obj.rectangle66:setName("rectangle66");
    obj.rectangle66:setAlign("top");
    obj.rectangle66:setHeight(25);

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.rectangle66);
    obj.rectangle67:setWidth(137);
    obj.rectangle67:setName("rectangle67");
    obj.rectangle67:setAlign("left");
    obj.rectangle67:setColor("transparent");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.rectangle67);
    obj.label28:setHorzTextAlign("leading");
    obj.label28:setMargins({left=7});
    obj.label28:setText("Diplomacia");
    obj.label28:setName("label28");
    obj.label28:setAlign("client");
    obj.label28:setFontSize(12);
    obj.label28:setFontColor("#fff");
    obj.label28:setVertTextAlign("center");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.rectangle66);
    obj.rectangle68:setWidth(54);
    obj.rectangle68:setName("rectangle68");
    obj.rectangle68:setAlign("left");
    obj.rectangle68:setColor("transparent");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.rectangle68);
    obj.label29:setText("PRE");
    obj.label29:setName("label29");
    obj.label29:setAlign("client");
    obj.label29:setFontSize(12);
    obj.label29:setFontColor("#fff");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setVertTextAlign("center");

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.rectangle66);
    obj.rectangle69:setWidth(52);
    obj.rectangle69:setName("rectangle69");
    obj.rectangle69:setAlign("left");
    obj.rectangle69:setColor("transparent");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle69);
    obj.edit22:setField("DiplomaciaB");
    obj.edit22:setName("edit22");
    obj.edit22:setAlign("client");
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(12);
    obj.edit22:setFontColor("#fff");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.rectangle66);
    obj.rectangle70:setWidth(58);
    obj.rectangle70:setName("rectangle70");
    obj.rectangle70:setAlign("left");
    obj.rectangle70:setColor("transparent");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.rectangle70);
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

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.rectangle66);
    obj.rectangle71:setWidth(52);
    obj.rectangle71:setName("rectangle71");
    obj.rectangle71:setAlign("left");
    obj.rectangle71:setColor("transparent");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle71);
    obj.edit23:setField("DiplomaciaO");
    obj.edit23:setName("edit23");
    obj.edit23:setAlign("client");
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(12);
    obj.edit23:setFontColor("#fff");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");

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

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.rectangle73);
    obj.label30:setHorzTextAlign("leading");
    obj.label30:setMargins({left=7});
    obj.label30:setText("Enganação");
    obj.label30:setName("label30");
    obj.label30:setAlign("client");
    obj.label30:setFontSize(12);
    obj.label30:setFontColor("#fff");
    obj.label30:setVertTextAlign("center");

    obj.rectangle74 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.rectangle72);
    obj.rectangle74:setWidth(54);
    obj.rectangle74:setName("rectangle74");
    obj.rectangle74:setAlign("left");
    obj.rectangle74:setColor("transparent");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.rectangle74);
    obj.label31:setText("PRE");
    obj.label31:setName("label31");
    obj.label31:setAlign("client");
    obj.label31:setFontSize(12);
    obj.label31:setFontColor("#fff");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setVertTextAlign("center");

    obj.rectangle75 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.rectangle72);
    obj.rectangle75:setWidth(52);
    obj.rectangle75:setName("rectangle75");
    obj.rectangle75:setAlign("left");
    obj.rectangle75:setColor("transparent");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle75);
    obj.edit24:setField("EnganaçãoB");
    obj.edit24:setName("edit24");
    obj.edit24:setAlign("client");
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(12);
    obj.edit24:setFontColor("#fff");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");

    obj.rectangle76 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.rectangle72);
    obj.rectangle76:setWidth(58);
    obj.rectangle76:setName("rectangle76");
    obj.rectangle76:setAlign("left");
    obj.rectangle76:setColor("transparent");

    obj.comboBox14 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox14:setParent(obj.rectangle76);
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

    obj.rectangle77 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.rectangle72);
    obj.rectangle77:setWidth(52);
    obj.rectangle77:setName("rectangle77");
    obj.rectangle77:setAlign("left");
    obj.rectangle77:setColor("transparent");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle77);
    obj.edit25:setField("EnganaçãoO");
    obj.edit25:setName("edit25");
    obj.edit25:setAlign("client");
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(12);
    obj.edit25:setFontColor("#fff");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");

    obj.rectangle78 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.scrollBox1);
    obj.rectangle78:setColor("#181818");
    obj.rectangle78:setName("rectangle78");
    obj.rectangle78:setAlign("top");
    obj.rectangle78:setHeight(25);

    obj.rectangle79 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.rectangle78);
    obj.rectangle79:setWidth(137);
    obj.rectangle79:setName("rectangle79");
    obj.rectangle79:setAlign("left");
    obj.rectangle79:setColor("transparent");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.rectangle79);
    obj.label32:setHorzTextAlign("leading");
    obj.label32:setMargins({left=7});
    obj.label32:setText("Fortitude");
    obj.label32:setName("label32");
    obj.label32:setAlign("client");
    obj.label32:setFontSize(12);
    obj.label32:setFontColor("#fff");
    obj.label32:setVertTextAlign("center");

    obj.rectangle80 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.rectangle78);
    obj.rectangle80:setWidth(54);
    obj.rectangle80:setName("rectangle80");
    obj.rectangle80:setAlign("left");
    obj.rectangle80:setColor("transparent");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.rectangle80);
    obj.label33:setText("VIG");
    obj.label33:setName("label33");
    obj.label33:setAlign("client");
    obj.label33:setFontSize(12);
    obj.label33:setFontColor("#fff");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setVertTextAlign("center");

    obj.rectangle81 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.rectangle78);
    obj.rectangle81:setWidth(52);
    obj.rectangle81:setName("rectangle81");
    obj.rectangle81:setAlign("left");
    obj.rectangle81:setColor("transparent");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle81);
    obj.edit26:setField("FortitudeB");
    obj.edit26:setName("edit26");
    obj.edit26:setAlign("client");
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(12);
    obj.edit26:setFontColor("#fff");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");

    obj.rectangle82 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.rectangle78);
    obj.rectangle82:setWidth(58);
    obj.rectangle82:setName("rectangle82");
    obj.rectangle82:setAlign("left");
    obj.rectangle82:setColor("transparent");

    obj.comboBox15 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox15:setParent(obj.rectangle82);
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

    obj.rectangle83 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.rectangle78);
    obj.rectangle83:setWidth(52);
    obj.rectangle83:setName("rectangle83");
    obj.rectangle83:setAlign("left");
    obj.rectangle83:setColor("transparent");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle83);
    obj.edit27:setField("FortitudeO");
    obj.edit27:setName("edit27");
    obj.edit27:setAlign("client");
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(12);
    obj.edit27:setFontColor("#fff");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");

    obj.rectangle84 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.scrollBox1);
    obj.rectangle84:setColor("#202020");
    obj.rectangle84:setName("rectangle84");
    obj.rectangle84:setAlign("top");
    obj.rectangle84:setHeight(25);

    obj.rectangle85 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.rectangle84);
    obj.rectangle85:setWidth(137);
    obj.rectangle85:setName("rectangle85");
    obj.rectangle85:setAlign("left");
    obj.rectangle85:setColor("transparent");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.rectangle85);
    obj.label34:setHorzTextAlign("leading");
    obj.label34:setMargins({left=7});
    obj.label34:setText("Furtividade ⭐");
    obj.label34:setName("label34");
    obj.label34:setAlign("client");
    obj.label34:setFontSize(12);
    obj.label34:setFontColor("#fff");
    obj.label34:setVertTextAlign("center");

    obj.rectangle86 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.rectangle84);
    obj.rectangle86:setWidth(54);
    obj.rectangle86:setName("rectangle86");
    obj.rectangle86:setAlign("left");
    obj.rectangle86:setColor("transparent");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.rectangle86);
    obj.label35:setText("AGI");
    obj.label35:setName("label35");
    obj.label35:setAlign("client");
    obj.label35:setFontSize(12);
    obj.label35:setFontColor("#fff");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setVertTextAlign("center");

    obj.rectangle87 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.rectangle84);
    obj.rectangle87:setWidth(52);
    obj.rectangle87:setName("rectangle87");
    obj.rectangle87:setAlign("left");
    obj.rectangle87:setColor("transparent");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle87);
    obj.edit28:setField("FurtividadeB");
    obj.edit28:setName("edit28");
    obj.edit28:setAlign("client");
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(12);
    obj.edit28:setFontColor("#fff");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");

    obj.rectangle88 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.rectangle84);
    obj.rectangle88:setWidth(58);
    obj.rectangle88:setName("rectangle88");
    obj.rectangle88:setAlign("left");
    obj.rectangle88:setColor("transparent");

    obj.comboBox16 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox16:setParent(obj.rectangle88);
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

    obj.rectangle89 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.rectangle84);
    obj.rectangle89:setWidth(52);
    obj.rectangle89:setName("rectangle89");
    obj.rectangle89:setAlign("left");
    obj.rectangle89:setColor("transparent");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle89);
    obj.edit29:setField("FurtividadeO");
    obj.edit29:setName("edit29");
    obj.edit29:setAlign("client");
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(12);
    obj.edit29:setFontColor("#fff");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");

    obj.rectangle90 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.scrollBox1);
    obj.rectangle90:setColor("#181818");
    obj.rectangle90:setName("rectangle90");
    obj.rectangle90:setAlign("top");
    obj.rectangle90:setHeight(25);

    obj.rectangle91 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.rectangle90);
    obj.rectangle91:setWidth(137);
    obj.rectangle91:setName("rectangle91");
    obj.rectangle91:setAlign("left");
    obj.rectangle91:setColor("transparent");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.rectangle91);
    obj.label36:setHorzTextAlign("leading");
    obj.label36:setMargins({left=7});
    obj.label36:setText("Iniciativa");
    obj.label36:setName("label36");
    obj.label36:setAlign("client");
    obj.label36:setFontSize(12);
    obj.label36:setFontColor("#fff");
    obj.label36:setVertTextAlign("center");

    obj.rectangle92 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.rectangle90);
    obj.rectangle92:setWidth(54);
    obj.rectangle92:setName("rectangle92");
    obj.rectangle92:setAlign("left");
    obj.rectangle92:setColor("transparent");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.rectangle92);
    obj.label37:setText("AGI");
    obj.label37:setName("label37");
    obj.label37:setAlign("client");
    obj.label37:setFontSize(12);
    obj.label37:setFontColor("#fff");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setVertTextAlign("center");

    obj.rectangle93 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.rectangle90);
    obj.rectangle93:setWidth(52);
    obj.rectangle93:setName("rectangle93");
    obj.rectangle93:setAlign("left");
    obj.rectangle93:setColor("transparent");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle93);
    obj.edit30:setField("IniciativaB");
    obj.edit30:setName("edit30");
    obj.edit30:setAlign("client");
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(12);
    obj.edit30:setFontColor("#fff");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");

    obj.rectangle94 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.rectangle90);
    obj.rectangle94:setWidth(58);
    obj.rectangle94:setName("rectangle94");
    obj.rectangle94:setAlign("left");
    obj.rectangle94:setColor("transparent");

    obj.comboBox17 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox17:setParent(obj.rectangle94);
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

    obj.rectangle95 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.rectangle90);
    obj.rectangle95:setWidth(52);
    obj.rectangle95:setName("rectangle95");
    obj.rectangle95:setAlign("left");
    obj.rectangle95:setColor("transparent");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle95);
    obj.edit31:setField("IniciativaO");
    obj.edit31:setName("edit31");
    obj.edit31:setAlign("client");
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(12);
    obj.edit31:setFontColor("#fff");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");

    obj.rectangle96 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.scrollBox1);
    obj.rectangle96:setColor("#202020");
    obj.rectangle96:setName("rectangle96");
    obj.rectangle96:setAlign("top");
    obj.rectangle96:setHeight(25);

    obj.rectangle97 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.rectangle96);
    obj.rectangle97:setWidth(137);
    obj.rectangle97:setName("rectangle97");
    obj.rectangle97:setAlign("left");
    obj.rectangle97:setColor("transparent");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.rectangle97);
    obj.label38:setHorzTextAlign("leading");
    obj.label38:setMargins({left=7});
    obj.label38:setText("Intimidação");
    obj.label38:setName("label38");
    obj.label38:setAlign("client");
    obj.label38:setFontSize(12);
    obj.label38:setFontColor("#fff");
    obj.label38:setVertTextAlign("center");

    obj.rectangle98 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.rectangle96);
    obj.rectangle98:setWidth(54);
    obj.rectangle98:setName("rectangle98");
    obj.rectangle98:setAlign("left");
    obj.rectangle98:setColor("transparent");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.rectangle98);
    obj.label39:setText("PRE");
    obj.label39:setName("label39");
    obj.label39:setAlign("client");
    obj.label39:setFontSize(12);
    obj.label39:setFontColor("#fff");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setVertTextAlign("center");

    obj.rectangle99 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle99:setParent(obj.rectangle96);
    obj.rectangle99:setWidth(52);
    obj.rectangle99:setName("rectangle99");
    obj.rectangle99:setAlign("left");
    obj.rectangle99:setColor("transparent");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle99);
    obj.edit32:setField("IntimidaçãoB");
    obj.edit32:setName("edit32");
    obj.edit32:setAlign("client");
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(12);
    obj.edit32:setFontColor("#fff");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");

    obj.rectangle100 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle100:setParent(obj.rectangle96);
    obj.rectangle100:setWidth(58);
    obj.rectangle100:setName("rectangle100");
    obj.rectangle100:setAlign("left");
    obj.rectangle100:setColor("transparent");

    obj.comboBox18 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox18:setParent(obj.rectangle100);
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

    obj.rectangle101 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle101:setParent(obj.rectangle96);
    obj.rectangle101:setWidth(52);
    obj.rectangle101:setName("rectangle101");
    obj.rectangle101:setAlign("left");
    obj.rectangle101:setColor("transparent");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle101);
    obj.edit33:setField("IntimidaçãoO");
    obj.edit33:setName("edit33");
    obj.edit33:setAlign("client");
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(12);
    obj.edit33:setFontColor("#fff");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");

    obj.rectangle102 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle102:setParent(obj.scrollBox1);
    obj.rectangle102:setColor("#181818");
    obj.rectangle102:setName("rectangle102");
    obj.rectangle102:setAlign("top");
    obj.rectangle102:setHeight(25);

    obj.rectangle103 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle103:setParent(obj.rectangle102);
    obj.rectangle103:setWidth(137);
    obj.rectangle103:setName("rectangle103");
    obj.rectangle103:setAlign("left");
    obj.rectangle103:setColor("transparent");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.rectangle103);
    obj.label40:setHorzTextAlign("leading");
    obj.label40:setMargins({left=7});
    obj.label40:setText("Intuição");
    obj.label40:setName("label40");
    obj.label40:setAlign("client");
    obj.label40:setFontSize(12);
    obj.label40:setFontColor("#fff");
    obj.label40:setVertTextAlign("center");

    obj.rectangle104 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle104:setParent(obj.rectangle102);
    obj.rectangle104:setWidth(54);
    obj.rectangle104:setName("rectangle104");
    obj.rectangle104:setAlign("left");
    obj.rectangle104:setColor("transparent");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.rectangle104);
    obj.label41:setText("INT");
    obj.label41:setName("label41");
    obj.label41:setAlign("client");
    obj.label41:setFontSize(12);
    obj.label41:setFontColor("#fff");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setVertTextAlign("center");

    obj.rectangle105 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle105:setParent(obj.rectangle102);
    obj.rectangle105:setWidth(52);
    obj.rectangle105:setName("rectangle105");
    obj.rectangle105:setAlign("left");
    obj.rectangle105:setColor("transparent");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle105);
    obj.edit34:setField("IntuiçãoB");
    obj.edit34:setName("edit34");
    obj.edit34:setAlign("client");
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(12);
    obj.edit34:setFontColor("#fff");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");

    obj.rectangle106 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle106:setParent(obj.rectangle102);
    obj.rectangle106:setWidth(58);
    obj.rectangle106:setName("rectangle106");
    obj.rectangle106:setAlign("left");
    obj.rectangle106:setColor("transparent");

    obj.comboBox19 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox19:setParent(obj.rectangle106);
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

    obj.rectangle107 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle107:setParent(obj.rectangle102);
    obj.rectangle107:setWidth(52);
    obj.rectangle107:setName("rectangle107");
    obj.rectangle107:setAlign("left");
    obj.rectangle107:setColor("transparent");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle107);
    obj.edit35:setField("IntuiçãoO");
    obj.edit35:setName("edit35");
    obj.edit35:setAlign("client");
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(12);
    obj.edit35:setFontColor("#fff");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");

    obj.rectangle108 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle108:setParent(obj.scrollBox1);
    obj.rectangle108:setColor("#202020");
    obj.rectangle108:setName("rectangle108");
    obj.rectangle108:setAlign("top");
    obj.rectangle108:setHeight(25);

    obj.rectangle109 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle109:setParent(obj.rectangle108);
    obj.rectangle109:setWidth(137);
    obj.rectangle109:setName("rectangle109");
    obj.rectangle109:setAlign("left");
    obj.rectangle109:setColor("transparent");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.rectangle109);
    obj.label42:setHorzTextAlign("leading");
    obj.label42:setMargins({left=7});
    obj.label42:setText("Investigação ⭐");
    obj.label42:setName("label42");
    obj.label42:setAlign("client");
    obj.label42:setFontSize(12);
    obj.label42:setFontColor("#fff");
    obj.label42:setVertTextAlign("center");

    obj.rectangle110 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle110:setParent(obj.rectangle108);
    obj.rectangle110:setWidth(54);
    obj.rectangle110:setName("rectangle110");
    obj.rectangle110:setAlign("left");
    obj.rectangle110:setColor("transparent");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.rectangle110);
    obj.label43:setText("INT");
    obj.label43:setName("label43");
    obj.label43:setAlign("client");
    obj.label43:setFontSize(12);
    obj.label43:setFontColor("#fff");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setVertTextAlign("center");

    obj.rectangle111 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle111:setParent(obj.rectangle108);
    obj.rectangle111:setWidth(52);
    obj.rectangle111:setName("rectangle111");
    obj.rectangle111:setAlign("left");
    obj.rectangle111:setColor("transparent");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle111);
    obj.edit36:setField("InvestigaçãoB");
    obj.edit36:setName("edit36");
    obj.edit36:setAlign("client");
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(12);
    obj.edit36:setFontColor("#fff");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");

    obj.rectangle112 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle112:setParent(obj.rectangle108);
    obj.rectangle112:setWidth(58);
    obj.rectangle112:setName("rectangle112");
    obj.rectangle112:setAlign("left");
    obj.rectangle112:setColor("transparent");

    obj.comboBox20 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox20:setParent(obj.rectangle112);
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

    obj.rectangle113 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle113:setParent(obj.rectangle108);
    obj.rectangle113:setWidth(52);
    obj.rectangle113:setName("rectangle113");
    obj.rectangle113:setAlign("left");
    obj.rectangle113:setColor("transparent");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.rectangle113);
    obj.edit37:setField("InvestigaçãoO");
    obj.edit37:setName("edit37");
    obj.edit37:setAlign("client");
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(12);
    obj.edit37:setFontColor("#fff");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");

    obj.rectangle114 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle114:setParent(obj.scrollBox1);
    obj.rectangle114:setColor("#181818");
    obj.rectangle114:setName("rectangle114");
    obj.rectangle114:setAlign("top");
    obj.rectangle114:setHeight(25);

    obj.rectangle115 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle115:setParent(obj.rectangle114);
    obj.rectangle115:setWidth(137);
    obj.rectangle115:setName("rectangle115");
    obj.rectangle115:setAlign("left");
    obj.rectangle115:setColor("transparent");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.rectangle115);
    obj.label44:setHorzTextAlign("leading");
    obj.label44:setMargins({left=7});
    obj.label44:setText("Luta");
    obj.label44:setName("label44");
    obj.label44:setAlign("client");
    obj.label44:setFontSize(12);
    obj.label44:setFontColor("#fff");
    obj.label44:setVertTextAlign("center");

    obj.rectangle116 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle116:setParent(obj.rectangle114);
    obj.rectangle116:setWidth(54);
    obj.rectangle116:setName("rectangle116");
    obj.rectangle116:setAlign("left");
    obj.rectangle116:setColor("transparent");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.rectangle116);
    obj.label45:setText("FOR");
    obj.label45:setName("label45");
    obj.label45:setAlign("client");
    obj.label45:setFontSize(12);
    obj.label45:setFontColor("#fff");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setVertTextAlign("center");

    obj.rectangle117 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle117:setParent(obj.rectangle114);
    obj.rectangle117:setWidth(52);
    obj.rectangle117:setName("rectangle117");
    obj.rectangle117:setAlign("left");
    obj.rectangle117:setColor("transparent");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.rectangle117);
    obj.edit38:setField("LutaB");
    obj.edit38:setName("edit38");
    obj.edit38:setAlign("client");
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(12);
    obj.edit38:setFontColor("#fff");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");

    obj.rectangle118 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle118:setParent(obj.rectangle114);
    obj.rectangle118:setWidth(58);
    obj.rectangle118:setName("rectangle118");
    obj.rectangle118:setAlign("left");
    obj.rectangle118:setColor("transparent");

    obj.comboBox21 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox21:setParent(obj.rectangle118);
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

    obj.rectangle119 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle119:setParent(obj.rectangle114);
    obj.rectangle119:setWidth(52);
    obj.rectangle119:setName("rectangle119");
    obj.rectangle119:setAlign("left");
    obj.rectangle119:setColor("transparent");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.rectangle119);
    obj.edit39:setField("LutaO");
    obj.edit39:setName("edit39");
    obj.edit39:setAlign("client");
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(12);
    obj.edit39:setFontColor("#fff");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");

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

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.rectangle121);
    obj.label46:setHorzTextAlign("leading");
    obj.label46:setMargins({left=7});
    obj.label46:setText("Medicina");
    obj.label46:setName("label46");
    obj.label46:setAlign("client");
    obj.label46:setFontSize(12);
    obj.label46:setFontColor("#fff");
    obj.label46:setVertTextAlign("center");

    obj.rectangle122 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle122:setParent(obj.rectangle120);
    obj.rectangle122:setWidth(54);
    obj.rectangle122:setName("rectangle122");
    obj.rectangle122:setAlign("left");
    obj.rectangle122:setColor("transparent");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.rectangle122);
    obj.label47:setText("INT");
    obj.label47:setName("label47");
    obj.label47:setAlign("client");
    obj.label47:setFontSize(12);
    obj.label47:setFontColor("#fff");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setVertTextAlign("center");

    obj.rectangle123 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle123:setParent(obj.rectangle120);
    obj.rectangle123:setWidth(52);
    obj.rectangle123:setName("rectangle123");
    obj.rectangle123:setAlign("left");
    obj.rectangle123:setColor("transparent");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.rectangle123);
    obj.edit40:setField("MedicinaB");
    obj.edit40:setName("edit40");
    obj.edit40:setAlign("client");
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(12);
    obj.edit40:setFontColor("#fff");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");

    obj.rectangle124 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle124:setParent(obj.rectangle120);
    obj.rectangle124:setWidth(58);
    obj.rectangle124:setName("rectangle124");
    obj.rectangle124:setAlign("left");
    obj.rectangle124:setColor("transparent");

    obj.comboBox22 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox22:setParent(obj.rectangle124);
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

    obj.rectangle125 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle125:setParent(obj.rectangle120);
    obj.rectangle125:setWidth(52);
    obj.rectangle125:setName("rectangle125");
    obj.rectangle125:setAlign("left");
    obj.rectangle125:setColor("transparent");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.rectangle125);
    obj.edit41:setField("MedicinaO");
    obj.edit41:setName("edit41");
    obj.edit41:setAlign("client");
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(12);
    obj.edit41:setFontColor("#fff");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");

    obj.rectangle126 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle126:setParent(obj.scrollBox1);
    obj.rectangle126:setColor("#181818");
    obj.rectangle126:setName("rectangle126");
    obj.rectangle126:setAlign("top");
    obj.rectangle126:setHeight(25);

    obj.rectangle127 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle127:setParent(obj.rectangle126);
    obj.rectangle127:setWidth(137);
    obj.rectangle127:setName("rectangle127");
    obj.rectangle127:setAlign("left");
    obj.rectangle127:setColor("transparent");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.rectangle127);
    obj.label48:setHorzTextAlign("leading");
    obj.label48:setMargins({left=7});
    obj.label48:setText("Ocultismo ♦");
    obj.label48:setName("label48");
    obj.label48:setAlign("client");
    obj.label48:setFontSize(12);
    obj.label48:setFontColor("#fff");
    obj.label48:setVertTextAlign("center");

    obj.rectangle128 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle128:setParent(obj.rectangle126);
    obj.rectangle128:setWidth(54);
    obj.rectangle128:setName("rectangle128");
    obj.rectangle128:setAlign("left");
    obj.rectangle128:setColor("transparent");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.rectangle128);
    obj.label49:setText("INT");
    obj.label49:setName("label49");
    obj.label49:setAlign("client");
    obj.label49:setFontSize(12);
    obj.label49:setFontColor("#fff");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setVertTextAlign("center");

    obj.rectangle129 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle129:setParent(obj.rectangle126);
    obj.rectangle129:setWidth(52);
    obj.rectangle129:setName("rectangle129");
    obj.rectangle129:setAlign("left");
    obj.rectangle129:setColor("transparent");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.rectangle129);
    obj.edit42:setField("OcultismoB");
    obj.edit42:setName("edit42");
    obj.edit42:setAlign("client");
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(12);
    obj.edit42:setFontColor("#fff");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setVertTextAlign("center");

    obj.rectangle130 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle130:setParent(obj.rectangle126);
    obj.rectangle130:setWidth(58);
    obj.rectangle130:setName("rectangle130");
    obj.rectangle130:setAlign("left");
    obj.rectangle130:setColor("transparent");

    obj.comboBox23 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox23:setParent(obj.rectangle130);
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

    obj.rectangle131 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle131:setParent(obj.rectangle126);
    obj.rectangle131:setWidth(52);
    obj.rectangle131:setName("rectangle131");
    obj.rectangle131:setAlign("left");
    obj.rectangle131:setColor("transparent");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.rectangle131);
    obj.edit43:setField("OcultismoO");
    obj.edit43:setName("edit43");
    obj.edit43:setAlign("client");
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(12);
    obj.edit43:setFontColor("#fff");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("center");

    obj.rectangle132 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle132:setParent(obj.scrollBox1);
    obj.rectangle132:setColor("#202020");
    obj.rectangle132:setName("rectangle132");
    obj.rectangle132:setAlign("top");
    obj.rectangle132:setHeight(25);

    obj.rectangle133 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle133:setParent(obj.rectangle132);
    obj.rectangle133:setWidth(137);
    obj.rectangle133:setName("rectangle133");
    obj.rectangle133:setAlign("left");
    obj.rectangle133:setColor("transparent");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.rectangle133);
    obj.label50:setHorzTextAlign("leading");
    obj.label50:setMargins({left=7});
    obj.label50:setText("Percepção");
    obj.label50:setName("label50");
    obj.label50:setAlign("client");
    obj.label50:setFontSize(12);
    obj.label50:setFontColor("#fff");
    obj.label50:setVertTextAlign("center");

    obj.rectangle134 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle134:setParent(obj.rectangle132);
    obj.rectangle134:setWidth(54);
    obj.rectangle134:setName("rectangle134");
    obj.rectangle134:setAlign("left");
    obj.rectangle134:setColor("transparent");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.rectangle134);
    obj.label51:setText("PRE");
    obj.label51:setName("label51");
    obj.label51:setAlign("client");
    obj.label51:setFontSize(12);
    obj.label51:setFontColor("#fff");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setVertTextAlign("center");

    obj.rectangle135 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle135:setParent(obj.rectangle132);
    obj.rectangle135:setWidth(52);
    obj.rectangle135:setName("rectangle135");
    obj.rectangle135:setAlign("left");
    obj.rectangle135:setColor("transparent");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.rectangle135);
    obj.edit44:setField("PercepçãoB");
    obj.edit44:setName("edit44");
    obj.edit44:setAlign("client");
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(12);
    obj.edit44:setFontColor("#fff");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setVertTextAlign("center");

    obj.rectangle136 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle136:setParent(obj.rectangle132);
    obj.rectangle136:setWidth(58);
    obj.rectangle136:setName("rectangle136");
    obj.rectangle136:setAlign("left");
    obj.rectangle136:setColor("transparent");

    obj.comboBox24 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox24:setParent(obj.rectangle136);
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

    obj.rectangle137 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle137:setParent(obj.rectangle132);
    obj.rectangle137:setWidth(52);
    obj.rectangle137:setName("rectangle137");
    obj.rectangle137:setAlign("left");
    obj.rectangle137:setColor("transparent");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.rectangle137);
    obj.edit45:setField("PercepçãoO");
    obj.edit45:setName("edit45");
    obj.edit45:setAlign("client");
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(12);
    obj.edit45:setFontColor("#fff");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("center");

    obj.rectangle138 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle138:setParent(obj.scrollBox1);
    obj.rectangle138:setColor("#181818");
    obj.rectangle138:setName("rectangle138");
    obj.rectangle138:setAlign("top");
    obj.rectangle138:setHeight(25);

    obj.rectangle139 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle139:setParent(obj.rectangle138);
    obj.rectangle139:setWidth(137);
    obj.rectangle139:setName("rectangle139");
    obj.rectangle139:setAlign("left");
    obj.rectangle139:setColor("transparent");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.rectangle139);
    obj.label52:setHorzTextAlign("leading");
    obj.label52:setMargins({left=7});
    obj.label52:setText("Pilotagem ♦");
    obj.label52:setName("label52");
    obj.label52:setAlign("client");
    obj.label52:setFontSize(12);
    obj.label52:setFontColor("#fff");
    obj.label52:setVertTextAlign("center");

    obj.rectangle140 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle140:setParent(obj.rectangle138);
    obj.rectangle140:setWidth(54);
    obj.rectangle140:setName("rectangle140");
    obj.rectangle140:setAlign("left");
    obj.rectangle140:setColor("transparent");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.rectangle140);
    obj.label53:setText("AGI");
    obj.label53:setName("label53");
    obj.label53:setAlign("client");
    obj.label53:setFontSize(12);
    obj.label53:setFontColor("#fff");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setVertTextAlign("center");

    obj.rectangle141 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle141:setParent(obj.rectangle138);
    obj.rectangle141:setWidth(52);
    obj.rectangle141:setName("rectangle141");
    obj.rectangle141:setAlign("left");
    obj.rectangle141:setColor("transparent");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.rectangle141);
    obj.edit46:setField("PilotagemB");
    obj.edit46:setName("edit46");
    obj.edit46:setAlign("client");
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(12);
    obj.edit46:setFontColor("#fff");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("center");

    obj.rectangle142 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle142:setParent(obj.rectangle138);
    obj.rectangle142:setWidth(58);
    obj.rectangle142:setName("rectangle142");
    obj.rectangle142:setAlign("left");
    obj.rectangle142:setColor("transparent");

    obj.comboBox25 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox25:setParent(obj.rectangle142);
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

    obj.rectangle143 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle143:setParent(obj.rectangle138);
    obj.rectangle143:setWidth(52);
    obj.rectangle143:setName("rectangle143");
    obj.rectangle143:setAlign("left");
    obj.rectangle143:setColor("transparent");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.rectangle143);
    obj.edit47:setField("PilotagemO");
    obj.edit47:setName("edit47");
    obj.edit47:setAlign("client");
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(12);
    obj.edit47:setFontColor("#fff");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setVertTextAlign("center");

    obj.rectangle144 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle144:setParent(obj.scrollBox1);
    obj.rectangle144:setColor("#202020");
    obj.rectangle144:setName("rectangle144");
    obj.rectangle144:setAlign("top");
    obj.rectangle144:setHeight(25);

    obj.rectangle145 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle145:setParent(obj.rectangle144);
    obj.rectangle145:setWidth(137);
    obj.rectangle145:setName("rectangle145");
    obj.rectangle145:setAlign("left");
    obj.rectangle145:setColor("transparent");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.rectangle145);
    obj.label54:setHorzTextAlign("leading");
    obj.label54:setMargins({left=7});
    obj.label54:setText("Pontaria");
    obj.label54:setName("label54");
    obj.label54:setAlign("client");
    obj.label54:setFontSize(12);
    obj.label54:setFontColor("#fff");
    obj.label54:setVertTextAlign("center");

    obj.rectangle146 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle146:setParent(obj.rectangle144);
    obj.rectangle146:setWidth(54);
    obj.rectangle146:setName("rectangle146");
    obj.rectangle146:setAlign("left");
    obj.rectangle146:setColor("transparent");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.rectangle146);
    obj.label55:setText("AGI");
    obj.label55:setName("label55");
    obj.label55:setAlign("client");
    obj.label55:setFontSize(12);
    obj.label55:setFontColor("#fff");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setVertTextAlign("center");

    obj.rectangle147 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle147:setParent(obj.rectangle144);
    obj.rectangle147:setWidth(52);
    obj.rectangle147:setName("rectangle147");
    obj.rectangle147:setAlign("left");
    obj.rectangle147:setColor("transparent");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.rectangle147);
    obj.edit48:setField("PontariaB");
    obj.edit48:setName("edit48");
    obj.edit48:setAlign("client");
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(12);
    obj.edit48:setFontColor("#fff");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");

    obj.rectangle148 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle148:setParent(obj.rectangle144);
    obj.rectangle148:setWidth(58);
    obj.rectangle148:setName("rectangle148");
    obj.rectangle148:setAlign("left");
    obj.rectangle148:setColor("transparent");

    obj.comboBox26 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox26:setParent(obj.rectangle148);
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

    obj.rectangle149 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle149:setParent(obj.rectangle144);
    obj.rectangle149:setWidth(52);
    obj.rectangle149:setName("rectangle149");
    obj.rectangle149:setAlign("left");
    obj.rectangle149:setColor("transparent");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.rectangle149);
    obj.edit49:setField("PontariaO");
    obj.edit49:setName("edit49");
    obj.edit49:setAlign("client");
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(12);
    obj.edit49:setFontColor("#fff");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setVertTextAlign("center");

    obj.rectangle150 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle150:setParent(obj.scrollBox1);
    obj.rectangle150:setColor("#181818");
    obj.rectangle150:setName("rectangle150");
    obj.rectangle150:setAlign("top");
    obj.rectangle150:setHeight(25);

    obj.rectangle151 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle151:setParent(obj.rectangle150);
    obj.rectangle151:setWidth(137);
    obj.rectangle151:setName("rectangle151");
    obj.rectangle151:setAlign("left");
    obj.rectangle151:setColor("transparent");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.rectangle151);
    obj.label56:setHorzTextAlign("leading");
    obj.label56:setMargins({left=7});
    obj.label56:setText("Profissão ♦");
    obj.label56:setName("label56");
    obj.label56:setAlign("client");
    obj.label56:setFontSize(12);
    obj.label56:setFontColor("#fff");
    obj.label56:setVertTextAlign("center");

    obj.rectangle152 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle152:setParent(obj.rectangle150);
    obj.rectangle152:setWidth(54);
    obj.rectangle152:setName("rectangle152");
    obj.rectangle152:setAlign("left");
    obj.rectangle152:setColor("transparent");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.rectangle152);
    obj.label57:setText("INT");
    obj.label57:setName("label57");
    obj.label57:setAlign("client");
    obj.label57:setFontSize(12);
    obj.label57:setFontColor("#fff");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setVertTextAlign("center");

    obj.rectangle153 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle153:setParent(obj.rectangle150);
    obj.rectangle153:setWidth(52);
    obj.rectangle153:setName("rectangle153");
    obj.rectangle153:setAlign("left");
    obj.rectangle153:setColor("transparent");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.rectangle153);
    obj.edit50:setField("ProfissãoB");
    obj.edit50:setName("edit50");
    obj.edit50:setAlign("client");
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(12);
    obj.edit50:setFontColor("#fff");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setVertTextAlign("center");

    obj.rectangle154 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle154:setParent(obj.rectangle150);
    obj.rectangle154:setWidth(58);
    obj.rectangle154:setName("rectangle154");
    obj.rectangle154:setAlign("left");
    obj.rectangle154:setColor("transparent");

    obj.comboBox27 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox27:setParent(obj.rectangle154);
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

    obj.rectangle155 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle155:setParent(obj.rectangle150);
    obj.rectangle155:setWidth(52);
    obj.rectangle155:setName("rectangle155");
    obj.rectangle155:setAlign("left");
    obj.rectangle155:setColor("transparent");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.rectangle155);
    obj.edit51:setField("ProfissãoO");
    obj.edit51:setName("edit51");
    obj.edit51:setAlign("client");
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(12);
    obj.edit51:setFontColor("#fff");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setVertTextAlign("center");

    obj.rectangle156 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle156:setParent(obj.scrollBox1);
    obj.rectangle156:setColor("#202020");
    obj.rectangle156:setName("rectangle156");
    obj.rectangle156:setAlign("top");
    obj.rectangle156:setHeight(25);

    obj.rectangle157 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle157:setParent(obj.rectangle156);
    obj.rectangle157:setWidth(137);
    obj.rectangle157:setName("rectangle157");
    obj.rectangle157:setAlign("left");
    obj.rectangle157:setColor("transparent");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle157);
    obj.label58:setHorzTextAlign("leading");
    obj.label58:setMargins({left=7});
    obj.label58:setText("Reflexos");
    obj.label58:setName("label58");
    obj.label58:setAlign("client");
    obj.label58:setFontSize(12);
    obj.label58:setFontColor("#fff");
    obj.label58:setVertTextAlign("center");

    obj.rectangle158 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle158:setParent(obj.rectangle156);
    obj.rectangle158:setWidth(54);
    obj.rectangle158:setName("rectangle158");
    obj.rectangle158:setAlign("left");
    obj.rectangle158:setColor("transparent");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle158);
    obj.label59:setText("AGI");
    obj.label59:setName("label59");
    obj.label59:setAlign("client");
    obj.label59:setFontSize(12);
    obj.label59:setFontColor("#fff");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setVertTextAlign("center");

    obj.rectangle159 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle159:setParent(obj.rectangle156);
    obj.rectangle159:setWidth(52);
    obj.rectangle159:setName("rectangle159");
    obj.rectangle159:setAlign("left");
    obj.rectangle159:setColor("transparent");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.rectangle159);
    obj.edit52:setField("ReflexosB");
    obj.edit52:setName("edit52");
    obj.edit52:setAlign("client");
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(12);
    obj.edit52:setFontColor("#fff");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setVertTextAlign("center");

    obj.rectangle160 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle160:setParent(obj.rectangle156);
    obj.rectangle160:setWidth(58);
    obj.rectangle160:setName("rectangle160");
    obj.rectangle160:setAlign("left");
    obj.rectangle160:setColor("transparent");

    obj.comboBox28 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox28:setParent(obj.rectangle160);
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

    obj.rectangle161 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle161:setParent(obj.rectangle156);
    obj.rectangle161:setWidth(52);
    obj.rectangle161:setName("rectangle161");
    obj.rectangle161:setAlign("left");
    obj.rectangle161:setColor("transparent");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.rectangle161);
    obj.edit53:setField("ReflexosO");
    obj.edit53:setName("edit53");
    obj.edit53:setAlign("client");
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(12);
    obj.edit53:setFontColor("#fff");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setVertTextAlign("center");

    obj.rectangle162 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle162:setParent(obj.scrollBox1);
    obj.rectangle162:setColor("#181818");
    obj.rectangle162:setName("rectangle162");
    obj.rectangle162:setAlign("top");
    obj.rectangle162:setHeight(25);

    obj.rectangle163 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle163:setParent(obj.rectangle162);
    obj.rectangle163:setWidth(137);
    obj.rectangle163:setName("rectangle163");
    obj.rectangle163:setAlign("left");
    obj.rectangle163:setColor("transparent");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.rectangle163);
    obj.label60:setHorzTextAlign("leading");
    obj.label60:setMargins({left=7});
    obj.label60:setText("Religião ♦");
    obj.label60:setName("label60");
    obj.label60:setAlign("client");
    obj.label60:setFontSize(12);
    obj.label60:setFontColor("#fff");
    obj.label60:setVertTextAlign("center");

    obj.rectangle164 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle164:setParent(obj.rectangle162);
    obj.rectangle164:setWidth(54);
    obj.rectangle164:setName("rectangle164");
    obj.rectangle164:setAlign("left");
    obj.rectangle164:setColor("transparent");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.rectangle164);
    obj.label61:setText("PRE");
    obj.label61:setName("label61");
    obj.label61:setAlign("client");
    obj.label61:setFontSize(12);
    obj.label61:setFontColor("#fff");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setVertTextAlign("center");

    obj.rectangle165 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle165:setParent(obj.rectangle162);
    obj.rectangle165:setWidth(52);
    obj.rectangle165:setName("rectangle165");
    obj.rectangle165:setAlign("left");
    obj.rectangle165:setColor("transparent");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.rectangle165);
    obj.edit54:setField("ReligiãoB");
    obj.edit54:setName("edit54");
    obj.edit54:setAlign("client");
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(12);
    obj.edit54:setFontColor("#fff");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setVertTextAlign("center");

    obj.rectangle166 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle166:setParent(obj.rectangle162);
    obj.rectangle166:setWidth(58);
    obj.rectangle166:setName("rectangle166");
    obj.rectangle166:setAlign("left");
    obj.rectangle166:setColor("transparent");

    obj.comboBox29 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox29:setParent(obj.rectangle166);
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

    obj.rectangle167 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle167:setParent(obj.rectangle162);
    obj.rectangle167:setWidth(52);
    obj.rectangle167:setName("rectangle167");
    obj.rectangle167:setAlign("left");
    obj.rectangle167:setColor("transparent");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.rectangle167);
    obj.edit55:setField("ReligiãoO");
    obj.edit55:setName("edit55");
    obj.edit55:setAlign("client");
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(12);
    obj.edit55:setFontColor("#fff");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setVertTextAlign("center");

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

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle169);
    obj.label62:setHorzTextAlign("leading");
    obj.label62:setMargins({left=7});
    obj.label62:setText("Sobrevivência");
    obj.label62:setName("label62");
    obj.label62:setAlign("client");
    obj.label62:setFontSize(12);
    obj.label62:setFontColor("#fff");
    obj.label62:setVertTextAlign("center");

    obj.rectangle170 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle170:setParent(obj.rectangle168);
    obj.rectangle170:setWidth(54);
    obj.rectangle170:setName("rectangle170");
    obj.rectangle170:setAlign("left");
    obj.rectangle170:setColor("transparent");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.rectangle170);
    obj.label63:setText("INT");
    obj.label63:setName("label63");
    obj.label63:setAlign("client");
    obj.label63:setFontSize(12);
    obj.label63:setFontColor("#fff");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setVertTextAlign("center");

    obj.rectangle171 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle171:setParent(obj.rectangle168);
    obj.rectangle171:setWidth(52);
    obj.rectangle171:setName("rectangle171");
    obj.rectangle171:setAlign("left");
    obj.rectangle171:setColor("transparent");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.rectangle171);
    obj.edit56:setField("SobrevivênciaB");
    obj.edit56:setName("edit56");
    obj.edit56:setAlign("client");
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(12);
    obj.edit56:setFontColor("#fff");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setVertTextAlign("center");

    obj.rectangle172 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle172:setParent(obj.rectangle168);
    obj.rectangle172:setWidth(58);
    obj.rectangle172:setName("rectangle172");
    obj.rectangle172:setAlign("left");
    obj.rectangle172:setColor("transparent");

    obj.comboBox30 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox30:setParent(obj.rectangle172);
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

    obj.rectangle173 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle173:setParent(obj.rectangle168);
    obj.rectangle173:setWidth(52);
    obj.rectangle173:setName("rectangle173");
    obj.rectangle173:setAlign("left");
    obj.rectangle173:setColor("transparent");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.rectangle173);
    obj.edit57:setField("SobrevivênciaO");
    obj.edit57:setName("edit57");
    obj.edit57:setAlign("client");
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(12);
    obj.edit57:setFontColor("#fff");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setVertTextAlign("center");

    obj.rectangle174 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle174:setParent(obj.scrollBox1);
    obj.rectangle174:setColor("#181818");
    obj.rectangle174:setName("rectangle174");
    obj.rectangle174:setAlign("top");
    obj.rectangle174:setHeight(25);

    obj.rectangle175 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle175:setParent(obj.rectangle174);
    obj.rectangle175:setWidth(137);
    obj.rectangle175:setName("rectangle175");
    obj.rectangle175:setAlign("left");
    obj.rectangle175:setColor("transparent");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.rectangle175);
    obj.label64:setHorzTextAlign("leading");
    obj.label64:setMargins({left=7});
    obj.label64:setText("Tática ♦");
    obj.label64:setName("label64");
    obj.label64:setAlign("client");
    obj.label64:setFontSize(12);
    obj.label64:setFontColor("#fff");
    obj.label64:setVertTextAlign("center");

    obj.rectangle176 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle176:setParent(obj.rectangle174);
    obj.rectangle176:setWidth(54);
    obj.rectangle176:setName("rectangle176");
    obj.rectangle176:setAlign("left");
    obj.rectangle176:setColor("transparent");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle176);
    obj.label65:setText("INT");
    obj.label65:setName("label65");
    obj.label65:setAlign("client");
    obj.label65:setFontSize(12);
    obj.label65:setFontColor("#fff");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setVertTextAlign("center");

    obj.rectangle177 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle177:setParent(obj.rectangle174);
    obj.rectangle177:setWidth(52);
    obj.rectangle177:setName("rectangle177");
    obj.rectangle177:setAlign("left");
    obj.rectangle177:setColor("transparent");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.rectangle177);
    obj.edit58:setField("TáticaB");
    obj.edit58:setName("edit58");
    obj.edit58:setAlign("client");
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(12);
    obj.edit58:setFontColor("#fff");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setVertTextAlign("center");

    obj.rectangle178 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle178:setParent(obj.rectangle174);
    obj.rectangle178:setWidth(58);
    obj.rectangle178:setName("rectangle178");
    obj.rectangle178:setAlign("left");
    obj.rectangle178:setColor("transparent");

    obj.comboBox31 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox31:setParent(obj.rectangle178);
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

    obj.rectangle179 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle179:setParent(obj.rectangle174);
    obj.rectangle179:setWidth(52);
    obj.rectangle179:setName("rectangle179");
    obj.rectangle179:setAlign("left");
    obj.rectangle179:setColor("transparent");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.rectangle179);
    obj.edit59:setField("TáticaO");
    obj.edit59:setName("edit59");
    obj.edit59:setAlign("client");
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(12);
    obj.edit59:setFontColor("#fff");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setVertTextAlign("center");

    obj.rectangle180 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle180:setParent(obj.scrollBox1);
    obj.rectangle180:setColor("#202020");
    obj.rectangle180:setName("rectangle180");
    obj.rectangle180:setAlign("top");
    obj.rectangle180:setHeight(25);

    obj.rectangle181 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle181:setParent(obj.rectangle180);
    obj.rectangle181:setWidth(137);
    obj.rectangle181:setName("rectangle181");
    obj.rectangle181:setAlign("left");
    obj.rectangle181:setColor("transparent");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.rectangle181);
    obj.label66:setHorzTextAlign("leading");
    obj.label66:setMargins({left=7});
    obj.label66:setText("Tecnologia ♦");
    obj.label66:setName("label66");
    obj.label66:setAlign("client");
    obj.label66:setFontSize(12);
    obj.label66:setFontColor("#fff");
    obj.label66:setVertTextAlign("center");

    obj.rectangle182 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle182:setParent(obj.rectangle180);
    obj.rectangle182:setWidth(54);
    obj.rectangle182:setName("rectangle182");
    obj.rectangle182:setAlign("left");
    obj.rectangle182:setColor("transparent");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle182);
    obj.label67:setText("INT");
    obj.label67:setName("label67");
    obj.label67:setAlign("client");
    obj.label67:setFontSize(12);
    obj.label67:setFontColor("#fff");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setVertTextAlign("center");

    obj.rectangle183 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle183:setParent(obj.rectangle180);
    obj.rectangle183:setWidth(52);
    obj.rectangle183:setName("rectangle183");
    obj.rectangle183:setAlign("left");
    obj.rectangle183:setColor("transparent");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.rectangle183);
    obj.edit60:setField("TecnologiaB");
    obj.edit60:setName("edit60");
    obj.edit60:setAlign("client");
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(12);
    obj.edit60:setFontColor("#fff");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setVertTextAlign("center");

    obj.rectangle184 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle184:setParent(obj.rectangle180);
    obj.rectangle184:setWidth(58);
    obj.rectangle184:setName("rectangle184");
    obj.rectangle184:setAlign("left");
    obj.rectangle184:setColor("transparent");

    obj.comboBox32 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox32:setParent(obj.rectangle184);
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

    obj.rectangle185 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle185:setParent(obj.rectangle180);
    obj.rectangle185:setWidth(52);
    obj.rectangle185:setName("rectangle185");
    obj.rectangle185:setAlign("left");
    obj.rectangle185:setColor("transparent");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.rectangle185);
    obj.edit61:setField("TecnologiaO");
    obj.edit61:setName("edit61");
    obj.edit61:setAlign("client");
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(12);
    obj.edit61:setFontColor("#fff");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setVertTextAlign("center");

    obj.rectangle186 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle186:setParent(obj.scrollBox1);
    obj.rectangle186:setColor("#181818");
    obj.rectangle186:setName("rectangle186");
    obj.rectangle186:setAlign("top");
    obj.rectangle186:setHeight(25);

    obj.rectangle187 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle187:setParent(obj.rectangle186);
    obj.rectangle187:setWidth(137);
    obj.rectangle187:setName("rectangle187");
    obj.rectangle187:setAlign("left");
    obj.rectangle187:setColor("transparent");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle187);
    obj.label68:setHorzTextAlign("leading");
    obj.label68:setMargins({left=7});
    obj.label68:setText("Vontade");
    obj.label68:setName("label68");
    obj.label68:setAlign("client");
    obj.label68:setFontSize(12);
    obj.label68:setFontColor("#fff");
    obj.label68:setVertTextAlign("center");

    obj.rectangle188 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle188:setParent(obj.rectangle186);
    obj.rectangle188:setWidth(54);
    obj.rectangle188:setName("rectangle188");
    obj.rectangle188:setAlign("left");
    obj.rectangle188:setColor("transparent");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle188);
    obj.label69:setText("PRE");
    obj.label69:setName("label69");
    obj.label69:setAlign("client");
    obj.label69:setFontSize(12);
    obj.label69:setFontColor("#fff");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setVertTextAlign("center");

    obj.rectangle189 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle189:setParent(obj.rectangle186);
    obj.rectangle189:setWidth(52);
    obj.rectangle189:setName("rectangle189");
    obj.rectangle189:setAlign("left");
    obj.rectangle189:setColor("transparent");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.rectangle189);
    obj.edit62:setField("VontadeB");
    obj.edit62:setName("edit62");
    obj.edit62:setAlign("client");
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(12);
    obj.edit62:setFontColor("#fff");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setVertTextAlign("center");

    obj.rectangle190 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle190:setParent(obj.rectangle186);
    obj.rectangle190:setWidth(58);
    obj.rectangle190:setName("rectangle190");
    obj.rectangle190:setAlign("left");
    obj.rectangle190:setColor("transparent");

    obj.comboBox33 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox33:setParent(obj.rectangle190);
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

    obj.rectangle191 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle191:setParent(obj.rectangle186);
    obj.rectangle191:setWidth(52);
    obj.rectangle191:setName("rectangle191");
    obj.rectangle191:setAlign("left");
    obj.rectangle191:setColor("transparent");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.rectangle191);
    obj.edit63:setField("VontadeO");
    obj.edit63:setName("edit63");
    obj.edit63:setAlign("client");
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(12);
    obj.edit63:setFontColor("#fff");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setVertTextAlign("center");

    obj.rectangle192 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle192:setParent(obj.rectangle17);
    obj.rectangle192:setName("rectangle192");
    obj.rectangle192:setAlign("bottom");
    obj.rectangle192:setHeight(20);
    obj.rectangle192:setColor("#070707");
    obj.rectangle192:setXradius(5);
    obj.rectangle192:setYradius(5);
    obj.rectangle192:setCornerType("round");
    lfm_setPropAsString(obj.rectangle192, "corners",  "bottomLeft bottomRight");
    obj.rectangle192:setMargins({right=-1});

    obj.rectangle193 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle193:setParent(obj.rectangle192);
    obj.rectangle193:setWidth(185);
    obj.rectangle193:setName("rectangle193");
    obj.rectangle193:setAlign("left");
    obj.rectangle193:setColor("transparent");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle193);
    obj.label70:setText("♦ - Penalidade de carga.");
    obj.label70:setName("label70");
    obj.label70:setAlign("client");
    obj.label70:setFontSize(12);
    obj.label70:setFontColor("#fff");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setVertTextAlign("center");

    obj.rectangle194 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle194:setParent(obj.rectangle192);
    obj.rectangle194:setWidth(185);
    obj.rectangle194:setName("rectangle194");
    obj.rectangle194:setAlign("left");
    obj.rectangle194:setColor("transparent");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.rectangle194);
    obj.label71:setText("⭐​ - Somente treinado.");
    obj.label71:setName("label71");
    obj.label71:setAlign("client");
    obj.label71:setFontSize(12);
    obj.label71:setFontColor("#fff");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setVertTextAlign("center");

    obj.layAtaques = GUI.fromHandle(_obj_newObject("layout"));
    obj.layAtaques:setParent(obj.rectangle3);
    obj.layAtaques:setName("layAtaques");
    obj.layAtaques:setAlign("client");

    obj.layRituais = GUI.fromHandle(_obj_newObject("layout"));
    obj.layRituais:setParent(obj.rectangle3);
    obj.layRituais:setName("layRituais");
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

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.layAnota);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setAlign("top");
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setOrientation("vertical");
    obj.flowLayout4:setWidth(400);
    obj.flowLayout4:setMaxColumns(1);

    obj.rectangle195 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle195:setParent(obj.flowLayout4);
    obj.rectangle195:setName("rectangle195");
    obj.rectangle195:setHeight(680);
    obj.rectangle195:setWidth(370);
    obj.rectangle195:setColor("transparent");

    obj.rectangle196 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle196:setParent(obj.rectangle195);
    obj.rectangle196:setName("rectangle196");
    obj.rectangle196:setAlign("client");
    obj.rectangle196:setColor("#494949");
    obj.rectangle196:setXradius(4);
    obj.rectangle196:setYradius(4);
    obj.rectangle196:setCornerType("round");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle195);
    obj.richEdit1:setName("richEdit1");
    obj.richEdit1:setAlign("client");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "transparent");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("txt");

    obj.layBook = GUI.fromHandle(_obj_newObject("layout"));
    obj.layBook:setParent(obj.rectangle3);
    obj.layBook:setName("layBook");
    obj.layBook:setAlign("client");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.rectangle2);
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setAlign("bottom");
    obj.flowLayout5:setMargins({bottom=15});
    obj.flowLayout5:setHorzAlign("center");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setOrientation("horizontal");

    obj.rectangle197 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle197:setParent(obj.flowLayout5);
    obj.rectangle197:setName("rectangle197");
    obj.rectangle197:setColor("#ffe000");
    obj.rectangle197:setHeight(30);
    obj.rectangle197:setWidth(30);
    obj.rectangle197:setXradius(15);
    obj.rectangle197:setYradius(15);
    obj.rectangle197:setCornerType("round");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.rectangle197);
    obj.label72:setText("A");
    obj.label72:setName("label72");
    obj.label72:setFontSize(18);
    obj.label72:setFontColor("#121212");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setVertTextAlign("center");
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setAlign("client");
    obj.label72:setFontFamily("georgia");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle197);
    obj.button9:setHint("Agilidade");
    obj.button9:setName("button9");
    obj.button9:setAlign("client");
    obj.button9:setOpacity(0);

    obj.rectangle198 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle198:setParent(obj.flowLayout5);
    obj.rectangle198:setMargins({left=15});
    obj.rectangle198:setName("rectangle198");
    obj.rectangle198:setColor("#ffe000");
    obj.rectangle198:setHeight(30);
    obj.rectangle198:setWidth(30);
    obj.rectangle198:setXradius(15);
    obj.rectangle198:setYradius(15);
    obj.rectangle198:setCornerType("round");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.rectangle198);
    obj.label73:setText("F");
    obj.label73:setName("label73");
    obj.label73:setFontSize(18);
    obj.label73:setFontColor("#121212");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setVertTextAlign("center");
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setAlign("client");
    obj.label73:setFontFamily("georgia");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle198);
    obj.button10:setHint("Força");
    obj.button10:setName("button10");
    obj.button10:setAlign("client");
    obj.button10:setOpacity(0);

    obj.rectangle199 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle199:setParent(obj.flowLayout5);
    obj.rectangle199:setMargins({left=15});
    obj.rectangle199:setName("rectangle199");
    obj.rectangle199:setColor("#ffe000");
    obj.rectangle199:setHeight(30);
    obj.rectangle199:setWidth(30);
    obj.rectangle199:setXradius(15);
    obj.rectangle199:setYradius(15);
    obj.rectangle199:setCornerType("round");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.rectangle199);
    obj.label74:setText("I");
    obj.label74:setName("label74");
    obj.label74:setFontSize(18);
    obj.label74:setFontColor("#121212");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setVertTextAlign("center");
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setAlign("client");
    obj.label74:setFontFamily("georgia");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle199);
    obj.button11:setHint("Intelecto");
    obj.button11:setName("button11");
    obj.button11:setAlign("client");
    obj.button11:setOpacity(0);

    obj.rectangle200 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle200:setParent(obj.flowLayout5);
    obj.rectangle200:setMargins({left=15});
    obj.rectangle200:setName("rectangle200");
    obj.rectangle200:setColor("#ffe000");
    obj.rectangle200:setHeight(30);
    obj.rectangle200:setWidth(30);
    obj.rectangle200:setXradius(15);
    obj.rectangle200:setYradius(15);
    obj.rectangle200:setCornerType("round");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.rectangle200);
    obj.label75:setText("P");
    obj.label75:setName("label75");
    obj.label75:setFontSize(18);
    obj.label75:setFontColor("#121212");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setVertTextAlign("center");
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setAlign("client");
    obj.label75:setFontFamily("georgia");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle200);
    obj.button12:setHint("Presença");
    obj.button12:setName("button12");
    obj.button12:setAlign("client");
    obj.button12:setOpacity(0);

    obj.rectangle201 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle201:setParent(obj.flowLayout5);
    obj.rectangle201:setMargins({left=15});
    obj.rectangle201:setName("rectangle201");
    obj.rectangle201:setColor("#ffe000");
    obj.rectangle201:setHeight(30);
    obj.rectangle201:setWidth(30);
    obj.rectangle201:setXradius(15);
    obj.rectangle201:setYradius(15);
    obj.rectangle201:setCornerType("round");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.rectangle201);
    obj.label76:setText("V");
    obj.label76:setName("label76");
    obj.label76:setFontSize(18);
    obj.label76:setFontColor("#121212");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setVertTextAlign("center");
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setAlign("client");
    obj.label76:setFontFamily("georgia");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle201);
    obj.button13:setHint("Vigor");
    obj.button13:setName("button13");
    obj.button13:setAlign("client");
    obj.button13:setOpacity(0);

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

    obj._e_event9 = obj.button9:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.AGI .. ("d20")); 
                                            
                                            if sheet.AGI == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Agilidade");
        end, obj);

    obj._e_event10 = obj.button10:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.FOR .. ("d20")); 
                                            
                                            if sheet.FOR == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Força");
        end, obj);

    obj._e_event11 = obj.button11:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.INT .. ("d20")); 
                                            
                                            if sheet.INT == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Intelecto");
        end, obj);

    obj._e_event12 = obj.button12:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.PRE .. ("d20")); 
                                            
                                            if sheet.PRE == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Presença");
        end, obj);

    obj._e_event13 = obj.button13:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.VIG .. ("d20")); 
                                            
                                            if sheet.VIG == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Vigor");
        end, obj);

    function obj:_releaseEvents()
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

        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.comboBox19 ~= nil then self.comboBox19:destroy(); self.comboBox19 = nil; end;
        if self.rectangle193 ~= nil then self.rectangle193:destroy(); self.rectangle193 = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.comboBox14 ~= nil then self.comboBox14:destroy(); self.comboBox14 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.rectangle160 ~= nil then self.rectangle160:destroy(); self.rectangle160 = nil; end;
        if self.rectangle176 ~= nil then self.rectangle176:destroy(); self.rectangle176 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.rectangle126 ~= nil then self.rectangle126:destroy(); self.rectangle126 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle151 ~= nil then self.rectangle151:destroy(); self.rectangle151 = nil; end;
        if self.rectangle186 ~= nil then self.rectangle186:destroy(); self.rectangle186 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.rectangle121 ~= nil then self.rectangle121:destroy(); self.rectangle121 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.rectangle200 ~= nil then self.rectangle200:destroy(); self.rectangle200 = nil; end;
        if self.rectangle156 ~= nil then self.rectangle156:destroy(); self.rectangle156 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.comboBox24 ~= nil then self.comboBox24:destroy(); self.comboBox24 = nil; end;
        if self.rectangle106 ~= nil then self.rectangle106:destroy(); self.rectangle106 = nil; end;
        if self.rectangle110 ~= nil then self.rectangle110:destroy(); self.rectangle110 = nil; end;
        if self.rectangle188 ~= nil then self.rectangle188:destroy(); self.rectangle188 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.comboBox31 ~= nil then self.comboBox31:destroy(); self.comboBox31 = nil; end;
        if self.comboBox21 ~= nil then self.comboBox21:destroy(); self.comboBox21 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.sem_trilha ~= nil then self.sem_trilha:destroy(); self.sem_trilha = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.rectangle132 ~= nil then self.rectangle132:destroy(); self.rectangle132 = nil; end;
        if self.layInvent ~= nil then self.layInvent:destroy(); self.layInvent = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.rectangle138 ~= nil then self.rectangle138:destroy(); self.rectangle138 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rectangle141 ~= nil then self.rectangle141:destroy(); self.rectangle141 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.rectangle144 ~= nil then self.rectangle144:destroy(); self.rectangle144 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.rectangle168 ~= nil then self.rectangle168:destroy(); self.rectangle168 = nil; end;
        if self.rectangle190 ~= nil then self.rectangle190:destroy(); self.rectangle190 = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.rectangle163 ~= nil then self.rectangle163:destroy(); self.rectangle163 = nil; end;
        if self.rectangle173 ~= nil then self.rectangle173:destroy(); self.rectangle173 = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.comboBox16 ~= nil then self.comboBox16:destroy(); self.comboBox16 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.rectangle166 ~= nil then self.rectangle166:destroy(); self.rectangle166 = nil; end;
        if self.rectangle129 ~= nil then self.rectangle129:destroy(); self.rectangle129 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.rectangle174 ~= nil then self.rectangle174:destroy(); self.rectangle174 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.rectangle185 ~= nil then self.rectangle185:destroy(); self.rectangle185 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.rectangle124 ~= nil then self.rectangle124:destroy(); self.rectangle124 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.rectangle179 ~= nil then self.rectangle179:destroy(); self.rectangle179 = nil; end;
        if self.rectangle153 ~= nil then self.rectangle153:destroy(); self.rectangle153 = nil; end;
        if self.rectangle180 ~= nil then self.rectangle180:destroy(); self.rectangle180 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.rectangle105 ~= nil then self.rectangle105:destroy(); self.rectangle105 = nil; end;
        if self.rectangle115 ~= nil then self.rectangle115:destroy(); self.rectangle115 = nil; end;
        if self.rectangle158 ~= nil then self.rectangle158:destroy(); self.rectangle158 = nil; end;
        if self.comboBox22 ~= nil then self.comboBox22:destroy(); self.comboBox22 = nil; end;
        if self.rectangle100 ~= nil then self.rectangle100:destroy(); self.rectangle100 = nil; end;
        if self.rectangle112 ~= nil then self.rectangle112:destroy(); self.rectangle112 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.layPericias ~= nil then self.layPericias:destroy(); self.layPericias = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.comboBox28 ~= nil then self.comboBox28:destroy(); self.comboBox28 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.rectangle137 ~= nil then self.rectangle137:destroy(); self.rectangle137 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.rectangle130 ~= nil then self.rectangle130:destroy(); self.rectangle130 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle149 ~= nil then self.rectangle149:destroy(); self.rectangle149 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.rectangle143 ~= nil then self.rectangle143:destroy(); self.rectangle143 = nil; end;
        if self.rectangle198 ~= nil then self.rectangle198:destroy(); self.rectangle198 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.rectangle146 ~= nil then self.rectangle146:destroy(); self.rectangle146 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.rectangle195 ~= nil then self.rectangle195:destroy(); self.rectangle195 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.rectangle192 ~= nil then self.rectangle192:destroy(); self.rectangle192 = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.comboBox15 ~= nil then self.comboBox15:destroy(); self.comboBox15 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle161 ~= nil then self.rectangle161:destroy(); self.rectangle161 = nil; end;
        if self.rectangle171 ~= nil then self.rectangle171:destroy(); self.rectangle171 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.rectangle164 ~= nil then self.rectangle164:destroy(); self.rectangle164 = nil; end;
        if self.rectangle127 ~= nil then self.rectangle127:destroy(); self.rectangle127 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.rectangle150 ~= nil then self.rectangle150:destroy(); self.rectangle150 = nil; end;
        if self.rectangle187 ~= nil then self.rectangle187:destroy(); self.rectangle187 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle122 ~= nil then self.rectangle122:destroy(); self.rectangle122 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.rectangle108 ~= nil then self.rectangle108:destroy(); self.rectangle108 = nil; end;
        if self.rectangle155 ~= nil then self.rectangle155:destroy(); self.rectangle155 = nil; end;
        if self.rectangle182 ~= nil then self.rectangle182:destroy(); self.rectangle182 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.comboBox27 ~= nil then self.comboBox27:destroy(); self.comboBox27 = nil; end;
        if self.rectangle107 ~= nil then self.rectangle107:destroy(); self.rectangle107 = nil; end;
        if self.rectangle117 ~= nil then self.rectangle117:destroy(); self.rectangle117 = nil; end;
        if self.rectangle189 ~= nil then self.rectangle189:destroy(); self.rectangle189 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.comboBox32 ~= nil then self.comboBox32:destroy(); self.comboBox32 = nil; end;
        if self.comboBox20 ~= nil then self.comboBox20:destroy(); self.comboBox20 = nil; end;
        if self.rectangle102 ~= nil then self.rectangle102:destroy(); self.rectangle102 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.combatente_trilha ~= nil then self.combatente_trilha:destroy(); self.combatente_trilha = nil; end;
        if self.rectangle119 ~= nil then self.rectangle119:destroy(); self.rectangle119 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.layAtaques ~= nil then self.layAtaques:destroy(); self.layAtaques = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.rectangle135 ~= nil then self.rectangle135:destroy(); self.rectangle135 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.rectangle145 ~= nil then self.rectangle145:destroy(); self.rectangle145 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle169 ~= nil then self.rectangle169:destroy(); self.rectangle169 = nil; end;
        if self.rectangle197 ~= nil then self.rectangle197:destroy(); self.rectangle197 = nil; end;
        if self.rectangle99 ~= nil then self.rectangle99:destroy(); self.rectangle99 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.comboBox18 ~= nil then self.comboBox18:destroy(); self.comboBox18 = nil; end;
        if self.rectangle172 ~= nil then self.rectangle172:destroy(); self.rectangle172 = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.comboBox17 ~= nil then self.comboBox17:destroy(); self.comboBox17 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.rectangle167 ~= nil then self.rectangle167:destroy(); self.rectangle167 = nil; end;
        if self.rectangle177 ~= nil then self.rectangle177:destroy(); self.rectangle177 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layAnota ~= nil then self.layAnota:destroy(); self.layAnota = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.rectangle125 ~= nil then self.rectangle125:destroy(); self.rectangle125 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.rectangle178 ~= nil then self.rectangle178:destroy(); self.rectangle178 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle152 ~= nil then self.rectangle152:destroy(); self.rectangle152 = nil; end;
        if self.rectangle181 ~= nil then self.rectangle181:destroy(); self.rectangle181 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.rectangle120 ~= nil then self.rectangle120:destroy(); self.rectangle120 = nil; end;
        if self.rectangle201 ~= nil then self.rectangle201:destroy(); self.rectangle201 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rectangle157 ~= nil then self.rectangle157:destroy(); self.rectangle157 = nil; end;
        if self.rectangle114 ~= nil then self.rectangle114:destroy(); self.rectangle114 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.comboBox25 ~= nil then self.comboBox25:destroy(); self.comboBox25 = nil; end;
        if self.rectangle101 ~= nil then self.rectangle101:destroy(); self.rectangle101 = nil; end;
        if self.rectangle111 ~= nil then self.rectangle111:destroy(); self.rectangle111 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.comboBox30 ~= nil then self.comboBox30:destroy(); self.comboBox30 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.rectangle136 ~= nil then self.rectangle136:destroy(); self.rectangle136 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.layHabil ~= nil then self.layHabil:destroy(); self.layHabil = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.rectangle133 ~= nil then self.rectangle133:destroy(); self.rectangle133 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.rectangle139 ~= nil then self.rectangle139:destroy(); self.rectangle139 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.ocultista_trilha ~= nil then self.ocultista_trilha:destroy(); self.ocultista_trilha = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.rectangle140 ~= nil then self.rectangle140:destroy(); self.rectangle140 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layFrente ~= nil then self.layFrente:destroy(); self.layFrente = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle147 ~= nil then self.rectangle147:destroy(); self.rectangle147 = nil; end;
        if self.rectangle194 ~= nil then self.rectangle194:destroy(); self.rectangle194 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.rectangle191 ~= nil then self.rectangle191:destroy(); self.rectangle191 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.layRituais ~= nil then self.layRituais:destroy(); self.layRituais = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.rectangle162 ~= nil then self.rectangle162:destroy(); self.rectangle162 = nil; end;
        if self.rectangle170 ~= nil then self.rectangle170:destroy(); self.rectangle170 = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.rectangle165 ~= nil then self.rectangle165:destroy(); self.rectangle165 = nil; end;
        if self.rectangle128 ~= nil then self.rectangle128:destroy(); self.rectangle128 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.rectangle175 ~= nil then self.rectangle175:destroy(); self.rectangle175 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle184 ~= nil then self.rectangle184:destroy(); self.rectangle184 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.rectangle123 ~= nil then self.rectangle123:destroy(); self.rectangle123 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle109 ~= nil then self.rectangle109:destroy(); self.rectangle109 = nil; end;
        if self.rectangle154 ~= nil then self.rectangle154:destroy(); self.rectangle154 = nil; end;
        if self.rectangle183 ~= nil then self.rectangle183:destroy(); self.rectangle183 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.comboBox26 ~= nil then self.comboBox26:destroy(); self.comboBox26 = nil; end;
        if self.rectangle104 ~= nil then self.rectangle104:destroy(); self.rectangle104 = nil; end;
        if self.rectangle116 ~= nil then self.rectangle116:destroy(); self.rectangle116 = nil; end;
        if self.rectangle159 ~= nil then self.rectangle159:destroy(); self.rectangle159 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.comboBox33 ~= nil then self.comboBox33:destroy(); self.comboBox33 = nil; end;
        if self.comboBox23 ~= nil then self.comboBox23:destroy(); self.comboBox23 = nil; end;
        if self.rectangle103 ~= nil then self.rectangle103:destroy(); self.rectangle103 = nil; end;
        if self.rectangle113 ~= nil then self.rectangle113:destroy(); self.rectangle113 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.rectangle118 ~= nil then self.rectangle118:destroy(); self.rectangle118 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.especialista_trilha ~= nil then self.especialista_trilha:destroy(); self.especialista_trilha = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.comboBox29 ~= nil then self.comboBox29:destroy(); self.comboBox29 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.rectangle134 ~= nil then self.rectangle134:destroy(); self.rectangle134 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle131 ~= nil then self.rectangle131:destroy(); self.rectangle131 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.rectangle148 ~= nil then self.rectangle148:destroy(); self.rectangle148 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.rectangle142 ~= nil then self.rectangle142:destroy(); self.rectangle142 = nil; end;
        if self.layBook ~= nil then self.layBook:destroy(); self.layBook = nil; end;
        if self.rectangle199 ~= nil then self.rectangle199:destroy(); self.rectangle199 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle196 ~= nil then self.rectangle196:destroy(); self.rectangle196 = nil; end;
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
