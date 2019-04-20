Ext.define('Rd.view.aps.winAccessPointAddEntry', {
    extend:     'Ext.window.Window',
    alias :     'widget.winAccessPointAddEntry',
    closable:   true,
    draggable:  true,
    resizable:  true,
    title:      'New Access Point SSID',
    width:      500,
    height:     400,
    plain:      true,
    border:     false,
    layout:     'fit',
    iconCls:    'add',
    glyph   : Rd.config.icnAdd,
    autoShow:   false,
    ap_profile_id:    '',
    defaults: {
            border: false
    },
    requires: [
        'Ext.tab.Panel',
        'Ext.form.Panel',
        'Ext.form.field.Text',
        'Ext.form.FieldContainer',
        'Ext.form.field.Radio',
        'Rd.view.components.cmbEncryptionOptions'
    ],
     initComponent: function() {
        var me = this;  
        var frmData = Ext.create('Ext.form.Panel',{
            border:     false,
            layout:     'fit',
            itemId:     'scrnData',
            autoScroll: true,
            fieldDefaults: {
                msgTarget       : 'under',
                labelClsExtra   : 'lblRd',
                labelAlign      : 'left',
                labelSeparator  : '',
                labelWidth      : Rd.config.labelWidth,
                margin          : Rd.config.fieldMargin
            },
            defaultType: 'textfield',
            buttons : [
                {
                    itemId  : 'save',
                    text    : i18n("sOK"),
                    scale   : 'large',
                    formBind: true,
                    glyph   : Rd.config.icnYes,
                    margin  : Rd.config.buttonMargin
                }
            ],
            items:[
                {
                    xtype   : 'tabpanel',
                    layout  : 'fit',
                    xtype   : 'tabpanel',
                    margins : '0 0 0 0',
                    plain   : false,
                    tabPosition: 'bottom',
                    border  : false,
                    items   : [
                        { 
                            'title'     : i18n("sBasic_info"),
                            'layout'    : 'anchor',
                            itemId      : 'tabRequired',
                            defaults    : {
                                anchor: '100%'
                            },
                            autoScroll:true,
                            items       : [
                                {
                                    itemId  : 'ap_profile_id',
                                    xtype   : 'textfield',
                                    name    : "ap_profile_id",
                                    hidden  : true,
                                    value   : me.apProfileId
                                }, 
                                {
                                    xtype       : 'textfield',
                                    fieldLabel  : i18n("sSSID"),
                                    name        : 'name',
                                    allowBlank  : false,
                                    blankText   : i18n("sSupply_a_value"),
                                    labelClsExtra: 'lblRdReq'
                                },
                                {
                                    xtype      : 'fieldcontainer',
                                    fieldLabel : 'Frequency',
                                    defaultType: 'radiofield',
                                    labelClsExtra: 'lblRdReq',
                                    layout: {
                                        type: 'hbox',
                                        align: 'begin',
                                        pack: 'start'
                                    },
                                    items: [
                                        {
                                            boxLabel  : '2.4G',
                                            name      : 'frequency_band',
                                            inputValue: 'two',
                                            margin    : Rd.config.radioMargin
                                        }, 
                                        {
                                            boxLabel  : '5G',
                                            name      : 'frequency_band',
                                            inputValue: 'five',
                                            margin    : Rd.config.radioMargin
                                        },
                                        {
                                            boxLabel  : 'Both',
                                            name      : 'frequency_band',
                                            inputValue: 'both',
                                            value     : true,
                                            margin    : Rd.config.radioMargin
                                        }  
                                    ]
                                },                         
                                {
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sHidden"),
                                    name        : 'hidden',
                                    inputValue  : 'hidden',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq'
                                },
                                {
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sClient_isolation"),
                                    name        : 'isolate',
                                    inputValue  : 'isolate',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq'
                                }
                            ]
                        },
                        { 
                            'title'     : i18n("sEncryption"),
                            'layout'    : 'anchor',
                            itemId      : 'tabEncryption',
                            defaults    : {
                                anchor: '100%'
                            },
                            autoScroll:true,
                            items       : [
						
                                { 
                                    xtype           : 'cmbEncryptionOptions', 
                                    labelClsExtra   : 'lblRdReq',
                                    allowBlank      : false 
                                },
                                {
                                    xtype       : 'textfield',
                                    fieldLabel  : i18n("sKey"),
                                    name        : 'key',
                                    itemId      : 'key',
                                    minLength   : 8,
                                    allowBlank  : false,  
                                    blankText   : i18n("sSupply_a_value"),
                                    labelClsExtra: 'lblRdReq',
                                    hidden      : true,
                                    disabled    : true
                                }, 
                                {
                                    xtype       : 'textfield',
                                    fieldLabel  : i18n("sRADIUS_server"),
                                    name        : 'auth_server',
                                    itemId      : 'auth_server',
                                    allowBlank  : false,
                                    blankText   : i18n("sSupply_a_value"),
                                    labelClsExtra: 'lblRdReq',
                                    hidden      : true,
                                    disabled    : true
                                },
                                {
                                    xtype       : 'textfield',
                                    fieldLabel  : i18n("sShared_secret"),
                                    name        : 'auth_secret',
                                    itemId      : 'auth_secret',
                                    allowBlank  : false,
                                    blankText   : i18n("sSupply_a_value"),
                                    labelClsExtra: 'lblRdReq',
                                    hidden      : true,
                                    disabled    : true
                                },
								//wifimedia options
                                {
                                    xtype       : 'textfield',
                                    fieldLabel  : i18n("sNasid"),
                                    name        : 'nasid',
                                    itemId      : 'nasid',
                                    allowBlank  : false,
                                    blankText   : i18n("sSupply_a_value"),
                                    labelClsExtra: 'lblRdReq',
                                    hidden      : true,
                                    disabled    : true
                                },								
								{
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("s802.11r"),
                                    name        : 'ieee80211r',
                                    inputValue  : 'ieee80211r',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq',
                                    itemId      : 'ieee80211r',
									hidden		: true,
									disabled	: true
                                },
								{
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sFT_Over_DS"),
                                    name        : 'ft_over_ds',
                                    inputValue  : 'ft_over_ds',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq',
                                    itemId      : 'ft_over_ds',
									hidden		: true,
									disabled	: true
                                },
								{
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sGenerate_PMK_locally"),
                                    name        : 'ft_psk_generate_local',
                                    inputValue  : 'ft_psk_generate_local',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq',
                                    itemId      : 'ft_psk_generate_local',
									hidden		: true,
									disabled	: true
                                },								
								{
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sRsn_Preauth"),
                                    name        : 'rsn_preauth',
                                    inputValue  : 'rsn_preauth',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq',
                                    itemId      : 'rsn_preauth',
									hidden		: true,
									disabled	: true
                                } 	
                            ]
                        },
                        { 
                            'title'     : i18n("sAdvanced"),
                            'layout'    : 'anchor',
                            itemId      : 'tabAdvanced',
                            defaults    : {
                                anchor: '100%'
                            },
                            autoScroll:true,
                            items       : [ 
                                {
                                    xtype       : 'checkbox',      
                                    fieldLabel  : i18n("sLimitClients"),
                                    name        : 'chk_maxassoc',
                                    inputValue  : 'chk_maxassoc',
                                    checked     : false,
                                    labelClsExtra: 'lblRdReq',
                                    itemId      : 'chk_maxassoc'
                                },          
                                {
                                    xtype       : 'numberfield',
                                    name        : 'maxassoc',
                                    fieldLabel  : i18n("sMaxClients"),
                                    value       : 100,
                                    maxValue    : 1000,
                                    minValue    : 1,
                                    labelClsExtra: 'lblRdReq',
                                    hidden      : true,
                                    disabled    : true,
                                    itemId      : 'maxassoc'
                                }, 
                                { 
                                    xtype       : 'cmbMacFilter',
                                    labelClsExtra: 'lblRdReq'
                                },
                                {
                                    xtype       : 'cmbPermanentUser',
                                    fieldLabel  : i18n("sBYOD_Belonging_To"),
                                    labelClsExtra: 'lblRdReq',
                                    name        : 'permanent_user_id',
                                    hidden      : true,
                                    disabled    : true
                                }     
                            ]
                        }
                    ]
                }
            ]
        });

        me.items = frmData;
        me.callParent(arguments);
    }
});
