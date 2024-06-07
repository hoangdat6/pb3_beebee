document.addEventListener('DOMContentLoaded', function () {
    // Get the image and file input elements
    const cameraImage = document.getElementById('cameraImage');
    const fileInput = document.getElementById('fileInput');
    const avatar = document.getElementById('Avatar');
    // Add click event listener to the image
    cameraImage.addEventListener('click', function () {
        // Trigger click event on file input
        fileInput.click();
    });

    // Add change event listener to file input
    fileInput.addEventListener('change', function () {
        // Check if any file is selected
        if (fileInput.files && fileInput.files[0]) {
            const reader = new FileReader();
            // Read the selected file as a URL
            reader.onload = function (e) {
                // Set the image source to the selected file URL
                avatar.src = e.target.result;
            }

            // Read the selected file
            reader.readAsDataURL(fileInput.files[0]);


        }
    });

    avatar.addEventListener("load", function () {
        let data= avatar.src.split(",")[1];
        console.log(JSON.stringify({source : data}));
        if (data != undefined) {
            $.ajax( {
                    type: "POST",
                    url: "/PBL3_1_war_exploded/api/userAvatar",
                    data: JSON.stringify({source : data}),
                    contentType : "application/json",
                    success: function(response){

                    }
                }
            )
        }
    })
});