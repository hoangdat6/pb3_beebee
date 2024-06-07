const reviewItems =
    [
        {
            imgPath: "img/Product-Details/Review-Avatar-1.jpeg",
            name: "Sofia Havetz",
            evaluation: 4,
            content: "I bought it 3 weeks ago and now come back just to say “Awesome Product”." +
                " I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui" +
                " blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident."
        },
        {
            imgPath: "img/Product-Details/Review-Avatar-1.jpeg",
            name: "Sofia Havetz",
            evaluation: 4,
            content: "I bought it 3 weeks ago and now come back just to say “Awesome Product”." +
                " I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui" +
                " blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident."
        },
        {
            imgPath: "img/Product-Details/Review-Avatar-1.jpeg",
            name: "Sofia Havetz",
            evaluation: 4,
            content: "I bought it 3 weeks ago and now come back just to say “Awesome Product”." +
                " I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui" +
                " blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident."
        },
        {
            imgPath: "img/Product-Details/Review-Avatar-1.jpeg",
            name: "Sofia Havetz",
            evaluation: 4,
            content: "I bought it 3 weeks ago and now come back just to say “Awesome Product”." +
                " I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui" +
                " blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident."
        }
    ]
function createEvaluation(evaluation) {
    let evaluationContent = '';
    for (let i = 0; i < evaluation; i++) {
        evaluationContent += '<i class="fa-solid fa-star"></i>';
    }
    for (let i = 0; i < 5 - evaluation; i++) {
        evaluationContent += '<i class="fa-regular fa-star"></i>';
    }
    return evaluationContent;
}

function createReviewItem(reviewItem) {
    return `
        <div class="Review-Item">
            <img class="Review-Item__Avatar" src="${reviewItem.imgPath}" alt="Avatar"/>
            <div class="Review-Item--Content">
                <h4 class="Review-Item__Name">${reviewItem.name}</h4>
                <div class="Review-Item__Evaluation">
                    ${createEvaluation(reviewItem.evaluation)}
                </div>
                <p class="Review-Item__Comment">${reviewItem.content}</p>
                <div class="Review-Respond">
                    <button class="btn"><i class="fa-regular fa-thumbs-up"></i>Like</button>
                    <button class="btn"><i class="fa-regular fa-comment-dots"></i>Reply</button>
                </div>
            </div>
        </div>
    `
}

let tabContent = document.getElementById('Tabs-Content');

let Tabs_commnet = document.getElementById('Tabs_comment');

function showComment(){
    tabContent.innerHTML = `
        <div class="Review-Section">
            <h3>11 Đánh giá</h3>
            <button class="btn" style="display: flex; justify-content:space-between; width: 256px;">
                <span>Mới nhất</span>
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            ${reviewItems.map(reviewItem => createReviewItem(reviewItem)).join('')}
        </div>
    `;
    Tabs_commnet.style.borderBottom = '2px solid #141718';
    Tabs_commnet.style.color = '#141718';
    Tabs_detail.style.borderBottomColor = '#fff';
    Tabs_detail.style.color = '#807E7E';
}

function showDetail(){
    tabContent.innerHTML = `
        <div class="text-description">
            ${description}
        </div>
    `
    Tabs_detail.style.borderBottom = '2px solid #141718';
    Tabs_detail.style.color = '#141718';
    Tabs_commnet.style.borderBottomColor = '#fff';
    Tabs_commnet.style.color = '#807E7E';
}

Tabs_commnet.addEventListener('click', function() {
    showComment();
});

let Tabs_detail = document.getElementById('Tabs_detail');

document.addEventListener('DOMContentLoaded', function() {
    Tabs_detail.addEventListener('click', function () {
        showDetail();
    });
});

showDetail();
