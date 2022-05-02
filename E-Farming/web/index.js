let home = document.getElementById("home");
let head = document.getElementById("head");
let product = document.getElementById("product");
let relProduct = document.getElementById("rel-product");
let viewProduct = document.getElementById("view");
let productDetails = document.getElementById("product-detail");

// home.addEventListener("click", (e) => {
//     console.log("home button clicked");
//     head.classList.remove("d-none");
//     head.classList.add("d-block");

//     product.classList.remove("d-none");
//     product.classList.add("d-block");
//     e.preventDefault();
// })

// viewProduct.addEventListener("click", (e) => {
//     head.classList.remove("d-block");
//     head.classList.add("d-none");

//     product.classList.remove("d-block");
//     product.classList.add("d-none");

//     productDetails.classList.remove("d-none");
//     productDetails.classList.add("d-block");

//     relProduct.classList.remove("d-none");
//     relProduct.classList.add("d-block");
//     e.preventDefault();
// })

function prodPreview(p, name, price, desc) {
//    console.log(p);
//    console.log(name);
//    console.log(price);
//    console.log(desc);
    head.classList.remove("d-block");
    head.classList.add("d-none");

    product.classList.remove("d-block");
    product.classList.add("d-none");

    productDetails.classList.remove("d-none");
    productDetails.classList.add("d-block");

    relProduct.classList.remove("d-none");
    relProduct.classList.add("d-block");
    productDetails.innerHTML = `<div class="row gx-4 gx-lg-5 align-items-center">
                                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="./Images/${p}" alt="..." /></div>
                                    <div class="col-md-6">
                                        <h1 class="display-5 fw-bolder">${name}</h1>
                                        <div class="fs-5 mb-5">
                                            <span>&#8377; ${price}</span>
                                        </div>
                                        <p class="lead">${desc}</p>
                                            <input type="submit" class="btn btn-outline-dark flex-shrink-0 w-100 mt-4 fs-5 fw-bolder" value="Buy Now" onclick="buyNow('${name}', '${price}')">
                                                    
                                            </input>
                                    </div>
                                </div>`;
}

function buyNow(name, price) {
    head.classList.remove("d-block");
    head.classList.add("d-none");

    product.classList.remove("d-block");
    product.classList.add("d-none");

    productDetails.classList.remove("d-block");
    productDetails.classList.add("d-none");

    relProduct.classList.remove("d-block");
    relProduct.classList.add("d-none");

    address.classList.remove("d-none");
    address.classList.add("d-block");
    console.log(name);
    console.log(price);

    address.innerHTML = `<div class="address-wrapper">
                            <div class="address-right">
                                <p id="contact-heading">Thank you for choosing DigiAgro!</p>
                                <h3>${name}</h3>
                                <p class="fs-2" id="contact-desc">&#8377; ${price}
                                </p>
                                <form action="ProductServlet" method="POST">
                                    <input type="hidden" name="name" value='${name}'>
                                    <input type="hidden" name="price" value='${price}'>
                                    <input type="text" placeholder="Name" class="input-box">
                                    <br>
                                    <input type="tel" name="phone" placeholder="Phone" class="input-box" pattern="[6789][0-9]{9}" required>
                                    <br>
                                    <input type="email" name="email" placeholder="Email" class="input-box" required>
                                    <br>
                                    <input type="address" placeholder="Address" name="address" class="input-box" required>
                                    <br>
                                    <textarea name="" id="" cols="30" rows="5" class="input-box">Message</textarea>
                                    <br>
                                    <p id="contact-desc">By clicking on ‘SUBMIT’, you agree to send your information to DigiAgro who may use this as per applicable laws.</p>
                                    <button class="submit-btn">Submit Now</button>
                                </form>
                            </div>
                        </div>`;
}