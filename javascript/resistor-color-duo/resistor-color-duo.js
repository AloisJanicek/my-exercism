//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const decodedValue = (names) => {
  let concatDigits = (accu, value) => accu.concat(COLORS.indexOf(value));

  return parseInt(names.slice(0, 2).reduce(concatDigits, ''));
};

export const COLORS = ["black",
                       "brown",
                       "red",
                       "orange",
                       "yellow",
                       "green",
                       "blue",
                       "violet",
                       "grey",
                       "white"];
