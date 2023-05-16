const everyOther = (count) => {
  let output = count%2 === 0 ? "every" : "other";
  return output;
}

export default everyOther;