Ext.define('Rd.view.components.cmbHTMode', {
    extend			: 'Ext.form.ComboBox',
    alias 			: 'widget.cmbHTMode',
    fieldLabel		: 'HTmode',
    labelSeparator	: '',
    forceSelection	: true,
    queryMode     	: 'local',
    displayField  	: 'text',
    valueField    	: 'id',
    typeAhead		: true,
    allowBlank		: false,
    mode			: 'local',
    name			: 'htmode_chan',
    labelClsExtra	: 'lblRd',
    initComponent: function() {
        var me= this;
        var s = Ext.create('Ext.data.Store', {
            fields: ['id', 'text'],
            data : [
                {"id":"ht20",         "text": '20Hz'},
                {"id":"ht40",         "text": '40Hz'},
				{"id":"vht20",        "text": '20Hz AC'},
                {"id":"vht40",        "text": '40Hz AC'},
				{"id":"vht80",        "text": '80Hz AC'},
                {"id":"vht160",       "text": '160Hz AC'}
            ]
        });
        me.store = s;
        this.callParent(arguments);
    }
});
