
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

[arr[2], arr[5]] = [arr[5], arr[2]];


// console.log(arr); // [1, 2, 6, 4, 10, 3, 7, 12, 9, 5, 11, 8]

// меняет два элемента массива in-place jscall('swap(Twelve, 2, 5);')
function swap(arr, a, b) {
    arr[a] = arr.splice(b, 1, arr[a])[0];
	
	console.log(Twelve);
}
const Twelve = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];


//  jscall('pereraspredelity_y()');
function pereraspredelity_y() {
	krpano.set("y_butt", 0); 
	let y_butt = 0;   							// отступ первой кнопки	
	let posic_count = 0;   						// кол-во всех позиций
	let posic = 0;   							// номер позиции
	let cur_gr = krpano.get("curent_grup" );   	// номер текущей группы	
	let layCount = krpano.get("layer.count" );  // количество слоев	
	let scr_gr = 'scr_' + cur_gr;				// имя прокрутки в группе
	let poz_layer = [];								// Создали массив poz_layer для хранения имен слоев в порядке их последовательного расположения
	
	// Перебор всех слоев
	for (let i=0; i < layCount; i++){
		krpano.set("i_kr", i);									// i_kr - в krpano
		let parent = krpano.get("layer[get(i_kr)].parent" );	// parent - имя родителя  
		let step_v = krpano.get("layer[get(i_kr)].step_v" );	// step_v - шаг кнопки  
		let height = krpano.get("layer[get(i_kr)].height" );	// height - высота кнопки  
		let pos = krpano.get("layer[get(i_kr)].pos" );			// pos - позиция кнопки  
				
		// Если слой принадлежит текущей группе(прокрутке)
		if(parent == scr_gr){
			posic_count++;  									// Считаем позиции 
			let nam_l = 'el_' + pos;
			nam_l = krpano.get("layer[get(i_kr)].name" );
			
			let p_n = pos - 1;									// Сдвиг позиции на -1 , что бы был счет с 0
			poz_layer[p_n] = nam_l;									// Записываем кнопки в массив по позициям

			console.log(parent + '***' + nam_l + '----' +  p_n);
		
		}
	}		
	
	console.log(poz_layer);
	// Перебор списка слоев 
	for (let i=0; i < poz_layer.length; i++){
		krpano.set("nam_kr", poz_layer[i]);			// nam_kr - получить имя слоя из массива  poz_layer 
		krpano.call("set_poz_butt()"); 				// Установить слой в соответствии с позицией
	}
}	
	
 