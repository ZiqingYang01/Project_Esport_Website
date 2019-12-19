const pastTourn = 'https://api.pandascore.co/pubg/tournaments/past?token=WHVFuyFvpWk5fiMY59yUFnS1hFrfK-va1aD1nrgVDyZDTmSKh7Q'

async function getPastTourn() {
    const response = await fetch(pastTourn);
    const data = await response.json();
    let nameArray = [];
    let idArray = [];
    let beginArray = [];
    let endArray = [];

    for (let i = 0; i < data.length; i++){
        const {name, id, begin_at, end_at} = data[i];
        nameArray[i] = name;
        idArray[i] = id;
        beginArray[i] = begin_at;
        endArray[i] = end_at;
    }

    const tableBody = document.getElementById('tableData');
    let dataHTML = '';

    for (let x = 0; x < data.length; x++){
        dataHTML += '<tr><td>' +nameArray[x] + '</td>' + '<td>' +idArray[x] + '</td>' + '<td>' +beginArray[x] + '</td>' + '<td>' +endArray[x] + '</td>' +  '</tr>';
    }
    console.log(dataHTML);
    tableBody.innerHTML = dataHTML;
}

getPastTourn();