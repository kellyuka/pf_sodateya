//form_withへデータを送る用
const submit_gohan = document.getElementById("submit-gohan");
const submit_ohuro = document.getElementById("submit-ohuro");
const submit_sanpo = document.getElementById("submit-sanpo");
const submit_sleep = document.getElementById("submit-sleep");

//結果表示用
const gohan_result = document.getElementById('gohan-result');
const ohuro_result = document.getElementById("ohuro-result");
const sanpo_result = document.getElementById("sanpo-result");
const sleep_result = document.getElementById("sleep-result");

document.addEventListener('DOMContentLoaded', () => {
//お世話ボタン
const gohan = document.getElementById("js-gohan");
const ohuro = document.getElementById("js-ohuro");
const sanpo = document.getElementById("js-sanpo");
const sleep = document.getElementById("js-sleep");

//ライフカウンター
const sum_count = { count: 8 };
const life_mark = document.getElementById("life-mark");

function life_counter(){
	sum_count.count--;
	life_mark.innerHTML = life_mark.innerHTML.slice(9);
};

function no_life(){
	life_mark.innerHTML = "もうライフはないよ!";
};

//お世話クリック
gohan.addEventListener('click', () => {
	if (sum_count.count > 0) {
		submit_gohan.value++;
		life_counter();
	} else {
		no_life();
	};
});

ohuro.addEventListener('click', () => {  
	if (sum_count.count > 0) {
		submit_ohuro.value++;
		life_counter();
	} else {
		no_life();
	};
});

sanpo.addEventListener('click', () => {  
	if (sum_count.count > 0) {
		submit_sanpo.value++;
		life_counter();
	} else {
		no_life();
	};
});

sleep.addEventListener('click', () => {  
	if (sum_count.count > 0) {
		submit_sleep.value++;
		life_counter();
	} else {
		no_life();
	};
});

//リセット
function reset(){
	submit_gohan.value = 0;
	submit_ohuro.value = 0;
	submit_sanpo.value = 0;
	submit_sleep.value = 0;
	sum_count.count = 8;
	life_mark.innerHTML = "favorite favorite favorite favorite favorite favorite favorite favorite"
	gohan_result.innerHTML = 0;
	ohuro_result.innerHTML = 0;
	sanpo_result.innerHTML = 0;
	sleep_result.innerHTML = 0;
};

//再表示
const restart = document.getElementById("js-restart");
restart.addEventListener('click', () => {
	reset();
})
//結果部分
});
function js_kekka_Modal() {
	gohan_result.innerHTML = submit_gohan.value;
	ohuro_result.innerHTML = submit_ohuro.value;
	sanpo_result.innerHTML = submit_sanpo.value;
	sleep_result.innerHTML = submit_sleep.value;
	const instance = M.Modal.getInstance($('#kekka-modal'))
	instance.open();
}
