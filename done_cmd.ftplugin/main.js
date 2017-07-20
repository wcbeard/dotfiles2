define(function(require, exports, module) {
    var Extensions = require('ft/core/extensions').Extensions;
    Extensions.addInit(function (editor) {
        editor.addKeyMap({
            // 'Cmd-J' : function (editor) {
            //     editor.replaceSelection('Hello world!');
            // },
            'Cmd-D' : 'done',
        });
    });
});
