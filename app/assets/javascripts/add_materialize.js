var Instances = null;
document.addEventListener('DOMContentLoaded', function() {
//modal
	var elems = document.querySelectorAll('.modal');
	var instances = M.Modal.init(elems);

//お世話ボタン
	var elems = document.querySelectorAll('.fixed-action-btn');
	var instances = M.FloatingActionButton.init(elems, {direction: 'left'});

//ヘルプページ
	
	var elems = document.querySelectorAll('.tap-target');
	Instances = M.TapTarget.init(elems, {});

});

//ヘルプページ
function helpbtn(){
            Instances[0].open();
}