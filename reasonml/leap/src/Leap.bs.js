// Generated by BUCKLESCRIPT, PLEASE EDIT WITH CARE
'use strict';

var Caml_int32 = require("bs-platform/lib/js/caml_int32.js");

function isLeapYear(year) {
  var divisibleBy = function (num) {
    return 0 === Caml_int32.mod_(year, num);
  };
  if (divisibleBy(4)) {
    if (divisibleBy(100)) {
      return divisibleBy(400);
    } else {
      return true;
    }
  } else {
    return false;
  }
}

exports.isLeapYear = isLeapYear;
/* No side effect */