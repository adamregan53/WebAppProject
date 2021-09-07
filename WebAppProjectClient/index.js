/*
this file is used to send and receive data from the client to the server
It handles functions required by the client such as taking inputted data and sending to the server
*/

//when the page loads call this function
document.addEventListener('DOMContentLoaded', function () {
    fetch('http://localhost:5000/displayPosts')
    .then(response => response.json())
    .then(data => loadPosts(data['data']));
    
});

//if a button is clicked from the table- update or delete
document.querySelector('table tbody').addEventListener('click', function(event) {
    if (event.target.className === "edit-row-btn") {
        handleEditRow(event.target.dataset.id);
    }
    if (event.target.className === "delete-row-btn") {
        deletePostById(event.target.dataset.id);
    }
});

//Update Post
const updateBtn = document.querySelector('#update-post-btn');
const closeEditBtn = document.querySelector('#close-edit-btn');

//displays textarea to edit post
function handleEditRow(id) {
    const updateSection = document.querySelector('#update-post');
    updateSection.hidden = false;
    document.querySelector('#update-post-input').dataset.id = id;
    document.querySelector('#update-post-input').value="";//clears text area
}

updateBtn.onclick = function() {
    const updatePostInput = document.querySelector('#update-post-input');

    if(updatePostInput.value.length <= 4){//if the length of the post is less than 5 characters long dont send to server
        alert("must have at least 5 characters");
    }
    else{
        fetch('http://localhost:5000/update', {
            method: 'PATCH',
            headers: {
                'Content-type' : 'application/json'
            },
            body: JSON.stringify({
                id: updatePostInput.dataset.id,
                post: updatePostInput.value
            })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                location.reload();
            }
        })
    }

}

//when close button clicked, page is reloaded to clear edit box
closeEditBtn.onclick=function(){
    location.reload();
}

//Delete Post
function deletePostById(id) {
    fetch('http://localhost:5000/delete/' + id, {//gets the id value of the post and sends to server
        method: 'DELETE'
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            location.reload();
        }
    });
}

//Add Post
const addBtn = document.querySelector('#add-post-btn');

addBtn.onclick = function () {
    const postInput = document.querySelector('#post-input');//get the post the user has written from the textarea

    if(postInput.value.length <= 4){//if the length of the post is less than 5 characters long dont send to server
        alert("must have at least 5 characters");
    }
    else{//send post to server
        const post = postInput.value;
        postInput.value = "";//clear input

        fetch('http://localhost:5000/insert', {
            headers: {
                'Content-type': 'application/json'
            },
            method: 'POST',
            body: JSON.stringify({ post : post})//convert post to json format and serialise to send to server
        })
        .then(response => response.json())//response converted to json
        .then(data => insertPostIntoTable(data['data']));//data is sent to method which inserts data into table
    }

}

function insertPostIntoTable(data) {
    const table = document.querySelector('table tbody');
    const isTableData = table.querySelector('.no-data');

    let tableHtml = "<tr>";

    for (var key in data) {
        if (data.hasOwnProperty(key)) {
            if (key === 'timePosted') {
                data[key] = new Date(data[key]).toLocaleString();
            }
            tableHtml += `<td>${data[key]}</td>`;
        }
    }

    tableHtml += `<td><button class="delete-row-btn" data-id=${data.id}>Delete</td>`;
    tableHtml += `<td><button class="edit-row-btn" data-id=${data.id}>Edit</td>`;

    tableHtml += "</tr>";

    if (isTableData) {
        table.innerHTML = tableHtml;
    } else {
        const newRow = table.insertRow();
        newRow.innerHTML = tableHtml;
    }
}

//display all posts on the home page
function loadPosts(data) {
    const table = document.querySelector('table tbody');

    if (data.length === 0) {
        table.innerHTML = "<tr><td class='no-data' colspan='5'>No Data</td></tr>";
        return;
    }

    let tableHtml = "";

    data.forEach(function ({id, post_content, time_posted}) {
        tableHtml += "<tr>";
        tableHtml += `<td>${id}</td>`;
        tableHtml += `<td>${post_content}</td>`;
        tableHtml += `<td>${new Date(time_posted).toLocaleString()}</td>`;
        tableHtml += `<td><button class="delete-row-btn" data-id=${id}>Delete</td>`;
        tableHtml += `<td><button class="edit-row-btn" data-id=${id}>Edit</td>`;
        tableHtml += "</tr>";
    });

    table.innerHTML = tableHtml;
}