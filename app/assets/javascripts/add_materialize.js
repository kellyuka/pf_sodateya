var Instances = null;
document.addEventListener('DOMContentLoaded', function() {
//modal
	var elems = document.querySelectorAll('.modal');
	var instances = M.Modal.init(elems);

//nohara
	//var elems = document.querySelectorAll('.parallax');
	//var instances = M.Parallax.init(elems);
//お世話ボタン
	var elems = document.querySelectorAll('.fixed-action-btn');
	var instances = M.FloatingActionButton.init(elems, {direction: 'left'});

	// CSS Transitions Demo Init
	if ($('#scale-demo').length && $('#scale-demo-trigger').length) {
		$('#scale-demo-trigger').click(function() {
			$('#scale-demo').toggleClass('scale-out');
		});
	}
//ヘルプページ
	
	var elems = document.querySelectorAll('.tap-target');
	Instances = M.TapTarget.init(elems, {});
});

//ヘルプページ
function btn1(){
            Instances[0].open();
}