const useIfUndefind = (variable) => {
  if(variable === undefined){
    return '';
  }
  return variable;
}

export default useIfUndefind;