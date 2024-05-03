"use strict";

//Hàm để lấy dữ liệu sau khi promise được trả về
function renderCity(data) {
  var citis = document.getElementById("city");
  var districts = document.getElementById("district");
  var wards = document.getElementById("ward");
  var _iteratorNormalCompletion = true;
  var _didIteratorError = false;
  var _iteratorError = undefined;

  try {
    for (var _iterator = data[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
      var x = _step.value;
      citis.options[citis.options.length] = new Option(x.Name, x.Id);
    } // xứ lý khi thay đổi tỉnh thành thì sẽ hiển thị ra quận huyện thuộc tỉnh thành đó

  } catch (err) {
    _didIteratorError = true;
    _iteratorError = err;
  } finally {
    try {
      if (!_iteratorNormalCompletion && _iterator["return"] != null) {
        _iterator["return"]();
      }
    } finally {
      if (_didIteratorError) {
        throw _iteratorError;
      }
    }
  }

  citis.onchange = function () {
    var _this = this;

    districts.length = 1;
    wards.length = 1;

    if (this.value !== "") {
      var result = data.filter(function (n) {
        return n.Id === _this.value;
      });
      var _iteratorNormalCompletion2 = true;
      var _didIteratorError2 = false;
      var _iteratorError2 = undefined;

      try {
        for (var _iterator2 = result[0].Districts[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
          var k = _step2.value;
          districts.options[districts.options.length] = new Option(k.Name, k.Id);
        }
      } catch (err) {
        _didIteratorError2 = true;
        _iteratorError2 = err;
      } finally {
        try {
          if (!_iteratorNormalCompletion2 && _iterator2["return"] != null) {
            _iterator2["return"]();
          }
        } finally {
          if (_didIteratorError2) {
            throw _iteratorError2;
          }
        }
      }
    }
  }; // xứ lý khi thay đổi quận huyện thì sẽ hiển thị ra phường xã thuộc quận huyện đó


  districts.onchange = function () {
    var _this2 = this;

    wards.length = 1;
    var dataCity = data.filter(function (n) {
      return n.Id === citis.value;
    });

    if (this.value !== "") {
      var dataWards = dataCity[0].Districts.filter(function (n) {
        return n.Id === _this2.value;
      })[0].Wards;
      var _iteratorNormalCompletion3 = true;
      var _didIteratorError3 = false;
      var _iteratorError3 = undefined;

      try {
        for (var _iterator3 = dataWards[Symbol.iterator](), _step3; !(_iteratorNormalCompletion3 = (_step3 = _iterator3.next()).done); _iteratorNormalCompletion3 = true) {
          var w = _step3.value;
          wards.options[wards.options.length] = new Option(w.Name, w.Id);
        }
      } catch (err) {
        _didIteratorError3 = true;
        _iteratorError3 = err;
      } finally {
        try {
          if (!_iteratorNormalCompletion3 && _iterator3["return"] != null) {
            _iterator3["return"]();
          }
        } finally {
          if (_didIteratorError3) {
            throw _iteratorError3;
          }
        }
      }
    }
  };
}

var Parameter;

if (typeof Parameter == 'undefined') {
  Parameter = {
    url: "./data.json",
    //Đường dẫn đến file chứa dữ liệu hoặc api do backend cung cấp
    method: "GET",
    //do backend cung cấp
    responseType: "application/json" //kiểu Dữ liệu trả về do backend cung cấp

  };
} //gọi ajax = axios => nó trả về cho chúng ta là một promise


var promise;

if (typeof promise === 'undefined') {
  //gọi ajax = axios => nó trả về cho chúng ta là một promise
  promise = axios(Parameter);
} //Xử lý khi request thành công


promise.then(function (result) {
  renderCity(result.data);
});