Ext.define('Rd.model.mAccessPointEntry', {
    extend: 'Ext.data.Model',
    fields: [
         {name: 'id',               type: 'int'     },
         {name: 'ap_profile_id',    type: 'int'     },
         {name: 'name',             type: 'string'  },
         {name: 'encryption',       type: 'string'  },
         {name: 'hidden',           type: 'bool'    },
         {name: 'isolate',          type: 'bool'    },
         {name: 'key',              type: 'string'  },
         {name: 'auth_server',      type: 'string'  },
         {name: 'auth_secret',      type: 'string'  },
         {name: 'connected_to_exit',type: 'bool'    },
	 {name: 'rsn_preauth',	    type: 'bool'    },
	 {name: 'ieee80211r',	    type: 'bool'    },
	 {name: 'ft_over_ds',	    type: 'bool'    },
	 {name: 'ft_psk_generate_local',	    type: 'bool'    },
	 {name: 'nasid',              type: 'string'  }
        ]
});
