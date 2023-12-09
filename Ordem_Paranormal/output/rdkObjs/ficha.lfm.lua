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
							elseif(a == 'L') then
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
    obj.rectangle8:setWidth(320);
    obj.rectangle8:setColor("#343434");
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

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowLayout3);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setWidth(320);
    obj.rectangle10:setColor("#343434");
    obj.rectangle10:setMargins({top=10});

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle10);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setAlign("bottom");
    obj.rectangle11:setHeight(1);
    obj.rectangle11:setColor("#ffe000");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowLayout3);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setWidth(320);
    obj.rectangle12:setColor("#343434");
    obj.rectangle12:setMargins({top=10});

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.rectangle12);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setAlign("bottom");
    obj.rectangle13:setHeight(1);
    obj.rectangle13:setColor("#ffe000");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.flowLayout3);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setWidth(320);
    obj.rectangle14:setColor("#343434");
    obj.rectangle14:setMargins({top=10});

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.rectangle14);
    obj.rectangle15:setName("rectangle15");
    obj.rectangle15:setAlign("bottom");
    obj.rectangle15:setHeight(1);
    obj.rectangle15:setColor("#ffe000");

    obj.layPericias = GUI.fromHandle(_obj_newObject("layout"));
    obj.layPericias:setParent(obj.rectangle3);
    obj.layPericias:setName("layPericias");
    obj.layPericias:setAlign("client");

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
    obj.layAnota:setAlign("client");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layAnota);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setColor("transparent");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.rectangle16);
    obj.rectangle17:setName("rectangle17");
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("#494949");
    obj.rectangle17:setXradius(4);
    obj.rectangle17:setYradius(4);
    obj.rectangle17:setCornerType("round");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle16);
    obj.richEdit1:setName("richEdit1");
    obj.richEdit1:setAlign("client");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "transparent");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("txt");

    obj.layBook = GUI.fromHandle(_obj_newObject("layout"));
    obj.layBook:setParent(obj.rectangle3);
    obj.layBook:setName("layBook");
    obj.layBook:setAlign("client");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.rectangle2);
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setAlign("bottom");
    obj.flowLayout4:setMargins({bottom=15});
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setOrientation("horizontal");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.flowLayout4);
    obj.rectangle18:setName("rectangle18");
    obj.rectangle18:setColor("#ffe000");
    obj.rectangle18:setHeight(30);
    obj.rectangle18:setWidth(30);
    obj.rectangle18:setXradius(15);
    obj.rectangle18:setYradius(15);
    obj.rectangle18:setCornerType("round");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle18);
    obj.label2:setText("A");
    obj.label2:setName("label2");
    obj.label2:setFontSize(18);
    obj.label2:setFontColor("#121212");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setVertTextAlign("center");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setAlign("client");
    obj.label2:setFontFamily("georgia");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle18);
    obj.button9:setHint("Agilidade");
    obj.button9:setName("button9");
    obj.button9:setAlign("client");
    obj.button9:setOpacity(0);

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.flowLayout4);
    obj.rectangle19:setMargins({left=15});
    obj.rectangle19:setName("rectangle19");
    obj.rectangle19:setColor("#ffe000");
    obj.rectangle19:setHeight(30);
    obj.rectangle19:setWidth(30);
    obj.rectangle19:setXradius(15);
    obj.rectangle19:setYradius(15);
    obj.rectangle19:setCornerType("round");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle19);
    obj.label3:setText("F");
    obj.label3:setName("label3");
    obj.label3:setFontSize(18);
    obj.label3:setFontColor("#121212");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setVertTextAlign("center");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setAlign("client");
    obj.label3:setFontFamily("georgia");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle19);
    obj.button10:setHint("Força");
    obj.button10:setName("button10");
    obj.button10:setAlign("client");
    obj.button10:setOpacity(0);

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.flowLayout4);
    obj.rectangle20:setMargins({left=15});
    obj.rectangle20:setName("rectangle20");
    obj.rectangle20:setColor("#ffe000");
    obj.rectangle20:setHeight(30);
    obj.rectangle20:setWidth(30);
    obj.rectangle20:setXradius(15);
    obj.rectangle20:setYradius(15);
    obj.rectangle20:setCornerType("round");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle20);
    obj.label4:setText("I");
    obj.label4:setName("label4");
    obj.label4:setFontSize(18);
    obj.label4:setFontColor("#121212");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setVertTextAlign("center");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setAlign("client");
    obj.label4:setFontFamily("georgia");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle20);
    obj.button11:setHint("Intelecto");
    obj.button11:setName("button11");
    obj.button11:setAlign("client");
    obj.button11:setOpacity(0);

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.flowLayout4);
    obj.rectangle21:setMargins({left=15});
    obj.rectangle21:setName("rectangle21");
    obj.rectangle21:setColor("#ffe000");
    obj.rectangle21:setHeight(30);
    obj.rectangle21:setWidth(30);
    obj.rectangle21:setXradius(15);
    obj.rectangle21:setYradius(15);
    obj.rectangle21:setCornerType("round");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle21);
    obj.label5:setText("P");
    obj.label5:setName("label5");
    obj.label5:setFontSize(18);
    obj.label5:setFontColor("#121212");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setVertTextAlign("center");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setAlign("client");
    obj.label5:setFontFamily("georgia");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle21);
    obj.button12:setHint("Presença");
    obj.button12:setName("button12");
    obj.button12:setAlign("client");
    obj.button12:setOpacity(0);

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.flowLayout4);
    obj.rectangle22:setMargins({left=15});
    obj.rectangle22:setName("rectangle22");
    obj.rectangle22:setColor("#ffe000");
    obj.rectangle22:setHeight(30);
    obj.rectangle22:setWidth(30);
    obj.rectangle22:setXradius(15);
    obj.rectangle22:setYradius(15);
    obj.rectangle22:setCornerType("round");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle22);
    obj.label6:setText("V");
    obj.label6:setName("label6");
    obj.label6:setFontSize(18);
    obj.label6:setFontColor("#121212");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setVertTextAlign("center");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setAlign("client");
    obj.label6:setFontFamily("georgia");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle22);
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
            TrocarAba('L');
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.AGI .. ("d20")); 
                                            
                                            if sheet.AGI == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Agilidade");
        end, obj);

    obj._e_event9 = obj.button10:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.FOR .. ("d20")); 
                                            
                                            if sheet.FOR == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Força");
        end, obj);

    obj._e_event10 = obj.button11:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.INT .. ("d20")); 
                                            
                                            if sheet.INT == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Intelecto");
        end, obj);

    obj._e_event11 = obj.button12:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.PRE .. ("d20")); 
                                            
                                            if sheet.PRE == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Presença");
        end, obj);

    obj._e_event12 = obj.button13:addEventListener("onClick",
        function (_)
            local rolagem = Firecast.interpretarRolagem(sheet.VIG .. ("d20")); 
                                            
                                            if sheet.VIG == 0 then
                                            
                                                rolagem = Firecast.interpretarRolagem("2d20");
                                                
                                            end;
                                            
                                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Vigor");
        end, obj);

    function obj:_releaseEvents()
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

        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.layAtaques ~= nil then self.layAtaques:destroy(); self.layAtaques = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.layAnota ~= nil then self.layAnota:destroy(); self.layAnota = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layFrente ~= nil then self.layFrente:destroy(); self.layFrente = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.layPericias ~= nil then self.layPericias:destroy(); self.layPericias = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layRituais ~= nil then self.layRituais:destroy(); self.layRituais = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.layHabil ~= nil then self.layHabil:destroy(); self.layHabil = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layBook ~= nil then self.layBook:destroy(); self.layBook = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layInvent ~= nil then self.layInvent:destroy(); self.layInvent = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
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
