const sql = require('../query_lib');

//This Script calls the DB and creates objects to pass through to inquirer interfact 

const deptChoices = async () => {
  const tempArr = await sql.getDepts();

  const choices = tempArr[0];

  let choicesArr = [];

  choices.forEach(element => {
    let valueObj = {
      name: element.department_name,
      value: element.id
    }
    choicesArr.push(valueObj);
  });

  return choicesArr;
}

const mgmtChoices = async () => {
  const tempArr = await sql.getManagers();
  
  const choices = tempArr[0];

  let choicesArr = [];

  choices.forEach(element => {
    let valueObj = {
      name: element.manager_name,
      value: element.id
    }
    choicesArr.push(valueObj);
  });

  return choicesArr;

}

const NonMgmtChoices = async () => {
  const tempArr = await sql.getNonManagers();
  
  const choices = tempArr[0];

  let choicesArr = [];

  choices.forEach(element => {
    let valueObj = {
      name: element.employee_name,
      value: element.id
    }
    choicesArr.push(valueObj);
  });

  return choicesArr;

}

const roleChoices = async () => {
  const tempArr = await sql.getRoleIds();

  const choices = tempArr[0];

  let choicesArr = [];

  choices.forEach(element => {
    let valueObj = {
      name: element.title,
      value: element.id
    }
    choicesArr.push(valueObj);
  });

  return choicesArr;
}

const empChoices = async () => {
  const tempArr = await sql.getEmpRaw();

  const choices = tempArr[0];

  let choicesArr = [];

  choices.forEach(element => {
    let valueObj = {
      name: element.first_name + ' ' + element.last_name,
      value: element.id
    }
    choicesArr.push(valueObj);
  });

  return choicesArr;
}

module.exports = { deptChoices, mgmtChoices, roleChoices, empChoices, NonMgmtChoices };