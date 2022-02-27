document.addEventListener('DOMContentLoaded', function() {
//modal
	var elems = document.querySelectorAll('.modal');
	var instances = M.Modal.init(elems);

//nohara
	var elems = document.querySelectorAll('.parallax');
	var instances = M.Parallax.init(elems);
//お世話ボタン
	var elems = document.querySelectorAll('.fixed-action-btn');
	var instances = M.FloatingActionButton.init(elems, {direction: 'left'});

//ヘルプページ
	var elems = document.querySelectorAll('.tap-target');
	var instances = M.TapTarget.init(elems);

	M.AutoInit();
});