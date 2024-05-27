var Parameter;

if (typeof Parameter == 'undefined') {
  Parameter = {
    url: "./data.json", //Đường dẫn đến file chứa dữ liệu hoặc api do backend cung cấp
    method: "GET", //do backend cung cấp
    responseType: "application/json", //kiểu Dữ liệu trả về do backend cung cấp
  };
}

//gọi ajax = axios => nó trả về cho chúng ta là một promise
var promise;

if (typeof promise === 'undefined') {
  //gọi ajax = axios => nó trả về cho chúng ta là một promise
  promise = axios(Parameter);
}

//Xử lý khi request thành công
promise.then(function (result) {
  // Lấy dữ liệu từ phản hồi
  const data = result.data;

  // Tìm các đối tượng trong dữ liệu có Id phù hợp
// <<<<<<< hanh
  let citis = document.getElementById("city");
  let districts = document.getElementById("district");
  let wards = document.getElementById("ward");
  if (citis.value !=="" && districts.value !=="" && wards.value !=="")
    renderAddress(data,citis.value,districts.value,wards.value);
  else
   renderAddress(data, '01', '001', '00001');
// =======
//   renderAddress(data,province === "" ? "00" : province, district === "" ? "000" : district, ward === "" ? "00000" : ward);
// >>>>>>> main
});


function renderAddress(data, cityId, districtId, wardId) {
  console.log(cityId, districtId, wardId);

  let citis = document.getElementById("city");
  let districts = document.getElementById("district");
  let wards = document.getElementById("ward");

  citis.onchange = function () {
    districts.length = 1;
    wards.length = 1;
    if (this.value !== "") {
      const result = data.filter(n => n.Id === this.value);

      for (const k of result[0].Districts) {
        districts.options[districts.options.length] = new Option(k.Name, k.Id);
      }
      districts.value = "";
    }
  };

  // xứ lý khi thay đổi quận huyện thì sẽ hiển thị ra phường xã thuộc quận huyện đó
  districts.onchange = function () {
    wards.length = 1;
    const dataCity = data.filter((n) => n.Id === citis.value);
    if (this.value !== "") {
      const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

      for (const w of dataWards) {
        wards.options[wards.options.length] = new Option(w.Name, w.Id);
      }
      wards.value = "";
    }
  };

  // Lấy dữ liệu của thành phố, tỉnh thành
  const cityData = data.filter(item => item.Id === cityId);
  citis.options[0].value='';
  for (const x of data) {
    let option = new Option(x.Name, x.Id);
    citis.options[citis.options.length] = option;
  }
  // set giá trị mặc định cho thành phố
  citis.value = cityId;
  let districtData = cityData[0].Districts;
  districts.options[0].value='';
  for (const k of districtData) {
    districts.options[districts.options.length] = new Option(k.Name, k.Id);
  }
  // set giá trị mặc định cho quận huyện
  districts.value = districtId;
  wards.options[0].value='';
  // lấy dữ liệu phường xã từ quận huyện
  let wardData = districtData.filter(item => item.Id === districtId)[0].Wards;
  for (const w of wardData) {
    wards.options[wards.options.length] = new Option(w.Name, w.Id);
  }

  console.log(wardId);
  // set giá trị mặc định cho phường xã
  wards.value = wardId;
}
